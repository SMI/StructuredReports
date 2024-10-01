""" Convert between command line arguments and yaml file options, e.g.
yaml_to_args() can insert the values from a yaml file into
the args you get from argparse.parse_args(), and
args_into_yaml() can insert the command line arguments into a yaml dict.
"""

import argparse
import os
import pprint
import sys
import yaml


# NB. this code relies on the fact that argparse stores the options in
# he parser object like this: parser.__dict__['_option_string_actions'] has
# '-q': _StoreAction(option_strings=['-q'], dest='QueueName', nargs=None, const=None, default='DefQ', type=None, choices=None, required=False, help='stuff', metavar=None)


# ---------------------------------------------------------------------
def args_into_yaml(yamldict, parser, args):
    """ This simply updates the yamldict with any options from args
    which are not the default value, so that args will override yaml.
    """
    for arg in parser.__dict__['_option_string_actions']:
        destname   = parser.__dict__['_option_string_actions'][arg].dest
        defaultval = parser.__dict__['_option_string_actions'][arg].default
        argval = vars(args).get(destname, None)
        if argval != defaultval:
            yamldict[destname] = argval
    return


def test_args_into_yaml():
    # Use a hard-coded yaml file, optional
    yamlfile='/home/arb/src/SMI/SMI_ROOT/configs/smi_dataExtract.yaml'
    # Define the arguments, some have defaults
    parser = argparse.ArgumentParser(description='test')
    parser.add_argument('-y', dest='yamlfile', action="store", help='path to yaml config file', default=yamlfile)
    parser.add_argument('-i', dest='input', action="store", help='input')
    parser.add_argument('-q', dest='QueueName', action="store", help='a queue', default='DefQ')
    parser.add_argument('--opt-unique', dest='unique', action="store_true", help='a boolean option')
    # Parse the arguments
    args = parser.parse_args()
    yamldict = {}
    args_into_yaml(yamldict, parser, args)
    assert(yamldict['QueueName'] == 'OverrideQ')


# ---------------------------------------------------------------------
def yaml_to_args(yamldict, parser, args):
    """ Create argparse.ArgumentParser(),
    call add_argument() as necessary,
    call parser.parse_args(), then call
    yaml.safe_load() and find your dict inside the result,
    then call yaml_to_args(yamldict, parser, args)
    which will update the args namespace with the values
    from the yamldict, but ONLY if the value in args
    has not been set on the command line as that overrides yaml.
    e.g. yaml file has
    MyStuff:
     myprog:
       option1: value1
    yaml_to_args(yaml['MyStuff']['myprog'], parser, args)
    will set args.option1 = 'value1'
    """
    def arg_default(args, argname):
        for arg in parser.__dict__['_option_string_actions']:
            if parser.__dict__['_option_string_actions'][arg].dest == argname:
                return parser.__dict__['_option_string_actions'][arg].default

    for item in yamldict:
        # See if this item was specified on the command line
        # by checking if its value is different from default
        # and ignore the yaml value if so.
        default_value = arg_default(parser, item)
        cmdline_value = vars(args).get(item, None)
        if cmdline_value == default_value:
            vars(args)[item] = yamldict[item]


def test_yaml_to_args(argv = None):
    # If called from command line then use command line args
    # otherwise fake some command line args.
    if argv:
        sys.argv = argv
    else:
        sys.argv.extend(['-q', 'OverrideQ'])
    # Use a hard-coded yaml file, optional
    yamlfile='/home/arb/src/SMI/SMI_ROOT/configs/smi_dataExtract.yaml'
    # Define the arguments, some have defaults
    parser = argparse.ArgumentParser(description='test')
    parser.add_argument('-y', dest='yamlfile', action="store", help='path to yaml config file', default=yamlfile)
    parser.add_argument('-i', dest='input', action="store", help='input')
    parser.add_argument('-q', dest='QueueName', action="store", help='a queue', default='DefQ')
    parser.add_argument('--opt-unique', dest='unique', action="store_true", help='a boolean option')
    # Parse the arguments
    args = parser.parse_args()
    # Read the yaml file, or construct one manually
    try:
        with open(args.yamlfile) as fd:
            yamldict = yaml.safe_load(fd)
    except:
        yamldict = {}
        yamldict['DicomAnonymiserOptions'] = { 'AnonFileConsumerOptions': {
            'QueueName': 'TEST.ExtractFileAnonQueue',
            'QoSPrefetchCount': 1,
            'AutoAck': False
        }}
    # Run the tests
    yaml_to_args(yamldict['DicomAnonymiserOptions']['AnonFileConsumerOptions'], parser, args)
    assert(args.input == None)
    assert(args.QueueName == 'OverrideQ')
    assert(args.QoSPrefetchCount == 1)
    assert(args.AutoAck == False)


# ---------------------------------------------------------------------
if __name__ == '__main__':
    # You should call this program with -q OverrideQ to pass the test
    test_args_into_yaml()
    test_yaml_to_args(sys.argv)
