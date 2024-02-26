# setup.py for Smi_Common_Python
#   Uses setuptools instead of distutils
# Requires:
#   Requirements.txt with list of dependencies
#   Uses the find_packages function but skips tests
import sys
from os.path import abspath
from os.path import dirname
from os.path import isdir
from os.path import join

from setuptools import find_packages
from setuptools import setup

# Read requirements.txt in current directory
# and convert it into the form required by setuptools
requirements_txt = join(abspath(dirname(__file__)), 'requirements.txt')
requirements = [l.strip() for l in open(requirements_txt) if l and not l.startswith('#')]
 
def translate_req(req):
    # this>=0.3.2 -> this(>=0.3.2)
    ops = ('<=', '>=', '==', '<', '>', '!=')
    version = None
    for op in ops:
        if op in req:
            req, version = req.split(op)
            version = op + version
    if version:
        req += '(%s)' % version
    return req
 
def version_from_txt():
    with open('version.txt') as fd:
        ver = next(fd).strip()
    version = ver.split('.')
    version[2] = str(int(version[2]) + 1)
    vernext = '.'.join(version)
    with open('version.txt', 'w') as fd:
        print(vernext, file=fd)
    return ver

def version_from_AssemblyInfo():
    ass_info = join(abspath(dirname(__file__)), '..', '..', 'SharedAssemblyInfo.cs')
    try:
        with open(ass_info) as fd:
            ver = str([s.split('"')[1] for s in fd if 'AssemblyVersion' in s][0])
    except:
        print(f'ERROR: cannot read {ass_info} or file does not contain AssemblyVersion in the expected format, e.g. [assembly: AssemblyVersion("1.15.1")]', file=sys.stderr)
        ver = '0.0.0'
    return(ver)

setup(
    name='SmiServices',
    version=version_from_txt(),
    packages=find_packages(where=dirname(__file__), exclude=('tests',)),
    package_dir={'':dirname(__file__)},
    url='https://github.com/SMI/SmiServices',
    license='GPLv3',
    description='Common Python modules for SmiServices',
    long_description='SmiServices common modules provide useful functions for reading DICOM files, especially Structured Reports, and interacting with RabbitMQ and MongoDB',
    requires=[translate_req(r) for r in requirements],
    install_requires=requirements,
)
