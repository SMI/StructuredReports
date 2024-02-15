#!/usr/bin/env python3
# A text filter which replaces DICOM tags by their textual label
# and adds a description to TransferSyntaxUID and SOPClassUID.
# Reads from stdin and writes to stdout.
# eg. to find the SeriesInstanceUID from a DICOM file:
# dcm2json file.dcm | dicom_tag_lookup.py | jq '..|.SeriesInstanceUID|.Value'
# Usage: -k keeps the numeric value of the tag in the output
# and doesn't modify the TransferSyntaxUID or SOPClassUID.
import re
import sys

from pydicom.datadict import keyword_for_tag

keep_numeric_string = True if len(sys.argv)>1 and sys.argv[1] == '-k' else False

SOPClassUID_mapping = {
    '1.2.840.10008.5.1.4.1.1.1': 'Computed Radiography Image',
    '1.2.840.10008.5.1.4.1.1.1.1': 'Digital X-Ray Image Storage - For Presentation',
    '1.2.840.10008.5.1.4.1.1.1.1.1': 'Digital X-Ray Image Storage - For Processing',
    '1.2.840.10008.5.1.4.1.1.1.2': 'Digital Mammography X-Ray Image Storage - For Presentation',
    '1.2.840.10008.5.1.4.1.1.1.2.1': 'Digital Mammography X-Ray Image Storage - For Processing',
    '1.2.840.10008.5.1.4.1.1.1.3': 'Digital Intra-Oral X-Ray Image Storage - For Presentation',
    '1.2.840.10008.5.1.4.1.1.1.3.1': 'Digital Intra-Oral X-Ray Image Storage - For Processing',
    '1.2.840.10008.5.1.4.1.1.2': 'CT Image',
    '1.2.840.10008.5.1.4.1.1.2.1': 'Enhanced CT Image',
    '1.2.840.10008.5.1.4.1.1.2.2': 'Legacy Converted Enhanced CT Image',
    '1.2.840.10008.5.1.4.1.1.3.1': 'Ultrasound Multi-frame Image',
    '1.2.840.10008.5.1.4.1.1.4': 'MR Image',
    '1.2.840.10008.5.1.4.1.1.4.1': 'Enhanced MR Image',
    '1.2.840.10008.5.1.4.1.1.4.2': 'MR Spectroscopy',
    '1.2.840.10008.5.1.4.1.1.4.3': 'Enhanced MR Color Image',
    '1.2.840.10008.5.1.4.1.1.4.4': 'Legacy Converted Enhanced MR Image',
    '1.2.840.10008.5.1.4.1.1.6.1': 'Ultrasound Image',
    '1.2.840.10008.5.1.4.1.1.6.2': 'Enhanced US Volume',
    '1.2.840.10008.5.1.4.1.1.7': 'Secondary Capture Image',
    '1.2.840.10008.5.1.4.1.1.7.1': 'Multi-frame Single Bit Secondary Capture Image',
    '1.2.840.10008.5.1.4.1.1.7.2': 'Multi-frame Grayscale Byte Secondary Capture Image',
    '1.2.840.10008.5.1.4.1.1.7.3': 'Multi-frame Grayscale Word Secondary Capture Image',
    '1.2.840.10008.5.1.4.1.1.7.4': 'Multi-frame True Color Secondary Capture Image',
    '1.2.840.10008.5.1.4.1.1.9.1.1': '12-lead ECG Waveform',
    '1.2.840.10008.5.1.4.1.1.9.1.2': 'General ECG Waveform',
    '1.2.840.10008.5.1.4.1.1.9.1.3': 'Ambulatory ECG Waveform',
    '1.2.840.10008.5.1.4.1.1.9.2.1': 'Hemodynamic Waveform',
    '1.2.840.10008.5.1.4.1.1.9.3.1': 'Cardiac Electrophysiology Waveform',
    '1.2.840.10008.5.1.4.1.1.9.4.1': 'Basic Voice Audio Waveform',
    '1.2.840.10008.5.1.4.1.1.9.4.2': 'General Audio Waveform',
    '1.2.840.10008.5.1.4.1.1.9.5.1': 'Arterial Pulse Waveform',
    '1.2.840.10008.5.1.4.1.1.9.6.1': 'Respiratory Waveform',
    '1.2.840.10008.5.1.4.1.1.11.1': 'Grayscale Softcopy Presentation State',
    '1.2.840.10008.5.1.4.1.1.11.2': 'Color Softcopy Presentation State',
    '1.2.840.10008.5.1.4.1.1.11.3': 'Pseudo-Color Softcopy Presentation State',
    '1.2.840.10008.5.1.4.1.1.11.4': 'Blending Softcopy Presentation State',
    '1.2.840.10008.5.1.4.1.1.11.5': 'XA/XRF Grayscale Softcopy Presentation State',
    '1.2.840.10008.5.1.4.1.1.12.1': 'X-Ray Angiographic Image',
    '1.2.840.10008.5.1.4.1.1.12.1.1': 'Enhanced XA Image',
    '1.2.840.10008.5.1.4.1.1.12.2': 'X-Ray Radiofluoroscopic Image',
    '1.2.840.10008.5.1.4.1.1.12.2.1': 'Enhanced XRF Image',
    '1.2.840.10008.5.1.4.1.1.13.1.1': 'X-Ray 3D Angiographic Image',
    '1.2.840.10008.5.1.4.1.1.13.1.2': 'X-Ray 3D Craniofacial Image',
    '1.2.840.10008.5.1.4.1.1.13.1.3': 'Breast Tomosynthesis Image',
    '1.2.840.10008.5.1.4.1.1.14.1': 'Intravascular Optical Coherence Tomography Image Storage - For Presentation',
    '1.2.840.10008.5.1.4.1.1.14.2': 'Intravascular Optical Coherence Tomography Image Storage - For Processing',
    '1.2.840.10008.5.1.4.1.1.20': 'Nuclear Medicine Image',
    '1.2.840.10008.5.1.4.1.1.66': 'Raw Data',
    '1.2.840.10008.5.1.4.1.1.66.1': 'Spatial Registration',
    '1.2.840.10008.5.1.4.1.1.66.2': 'Spatial Fiducials',
    '1.2.840.10008.5.1.4.1.1.66.3': 'Deformable Spatial Registration',
    '1.2.840.10008.5.1.4.1.1.66.4': 'Segmentation',
    '1.2.840.10008.5.1.4.1.1.66.5': 'Surface Segmentation',
    '1.2.840.10008.5.1.4.1.1.67': 'Real World Value Mapping',
    '1.2.840.10008.5.1.4.1.1.68.1': 'Surface Scan Mesh',
    '1.2.840.10008.5.1.4.1.1.68.2': 'Surface Scan Point Cloud',
    '1.2.840.10008.5.1.4.1.1.77.1.1': 'VL Endoscopic Image',
    '1.2.840.10008.5.1.4.1.1.77.1.1.1': 'Video Endoscopic Image',
    '1.2.840.10008.5.1.4.1.1.77.1.2': 'VL Microscopic Image',
    '1.2.840.10008.5.1.4.1.1.77.1.2.1': 'Video Microscopic Image',
    '1.2.840.10008.5.1.4.1.1.77.1.3': 'VL Slide-Coordinates Microscopic Image',
    '1.2.840.10008.5.1.4.1.1.77.1.4': 'VL Photographic Image',
    '1.2.840.10008.5.1.4.1.1.77.1.4.1': 'Video Photographic Image',
    '1.2.840.10008.5.1.4.1.1.77.1.5.1': 'Ophthalmic Photography 8 Bit Image',
    '1.2.840.10008.5.1.4.1.1.77.1.5.2': 'Ophthalmic Photography 16 Bit Image',
    '1.2.840.10008.5.1.4.1.1.77.1.5.3': 'Stereometric Relationship',
    '1.2.840.10008.5.1.4.1.1.77.1.5.4': 'Ophthalmic Tomography Image',
    '1.2.840.10008.5.1.4.1.1.77.1.6': 'VL Whole Slide Microscopy Image',
    '1.2.840.10008.5.1.4.1.1.78.1': 'Lensometry Measurements',
    '1.2.840.10008.5.1.4.1.1.78.2': 'Autorefraction Measurements',
    '1.2.840.10008.5.1.4.1.1.78.3': 'Keratometry Measurements',
    '1.2.840.10008.5.1.4.1.1.78.4': 'Subjective Refraction Measurements',
    '1.2.840.10008.5.1.4.1.1.78.5': 'Visual Acuity Measurements',
    '1.2.840.10008.5.1.4.1.1.78.6': 'Spectacle Prescription Report',
    '1.2.840.10008.5.1.4.1.1.78.7': 'Ophthalmic Axial Measurements',
    '1.2.840.10008.5.1.4.1.1.78.8': 'Intraocular Lens Calculations',
    '1.2.840.10008.5.1.4.1.1.79.1': 'Macular Grid Thickness and Volume Report',
    '1.2.840.10008.5.1.4.1.1.80.1': 'Ophthalmic Visual Field Static Perimetry Measurements',
    '1.2.840.10008.5.1.4.1.1.81.1': 'Ophthalmic Thickness Map',
    '1.2.840.10008.5.1.4.1.1.82.1': 'Corneal Topography Map',
    '1.2.840.10008.5.1.4.1.1.88.11': 'Basic Text SR',
    '1.2.840.10008.5.1.4.1.1.88.22': 'Enhanced SR',
    '1.2.840.10008.5.1.4.1.1.88.33': 'Comprehensive SR',
    '1.2.840.10008.5.1.4.1.1.88.34': 'Comprehensive 3D SR',
    '1.2.840.10008.5.1.4.1.1.88.40': 'Procedure Log',
    '1.2.840.10008.5.1.4.1.1.88.50': 'Mammography CAD SR',
    '1.2.840.10008.5.1.4.1.1.88.59': 'Key Object Selection',
    '1.2.840.10008.5.1.4.1.1.88.65': 'Chest CAD SR',
    '1.2.840.10008.5.1.4.1.1.88.67': 'X-Ray Radiation Dose SR',
    '1.2.840.10008.5.1.4.1.1.88.69': 'Colon CAD SR',
    '1.2.840.10008.5.1.4.1.1.88.70': 'Implantation Plan SR Document',
    '1.2.840.10008.5.1.4.1.1.104.1': 'Encapsulated PDF',
    '1.2.840.10008.5.1.4.1.1.104.2': 'Encapsulated CDA',
    '1.2.840.10008.5.1.4.1.1.128': 'Positron Emission Tomography Image',
    '1.2.840.10008.5.1.4.1.1.130': 'Enhanced PET Image',
    '1.2.840.10008.5.1.4.1.1.128.1': 'Legacy Converted Enhanced PET Image',
    '1.2.840.10008.5.1.4.1.1.131': 'Basic Structured Display',
    '1.2.840.10008.5.1.4.1.1.481.1': 'RT Image',
    '1.2.840.10008.5.1.4.1.1.481.2': 'RT Dose',
    '1.2.840.10008.5.1.4.1.1.481.3': 'RT Structure Set',
    '1.2.840.10008.5.1.4.1.1.481.4': 'RT Beams Treatment Record',
    '1.2.840.10008.5.1.4.1.1.481.5': 'RT Plan',
    '1.2.840.10008.5.1.4.1.1.481.6': 'RT Brachy Treatment Record',
    '1.2.840.10008.5.1.4.1.1.481.7': 'RT Treatment Summary Record',
    '1.2.840.10008.5.1.4.1.1.481.8': 'RT Ion Plan',
    '1.2.840.10008.5.1.4.1.1.481.9': 'RT Ion Beams Treatment Record',
    '1.2.840.10008.5.1.4.34.7': 'RT Beams Delivery Instruction',
    '1.2.840.10008.5.1.4.43.1': 'Generic Implant Template',
    '1.2.840.10008.5.1.4.44.1': 'Implant Assembly Template',
    '1.2.840.10008.5.1.4.45.1': 'Implant Template Group',
    # Now the TransferSyntaxUID
    '1.2.840.10008.1.2': 'Implicit VR Endian',
    '1.2.840.10008.1.2.1': 'Explicit VR Little Endian',
    '1.2.840.10008.1.2.1.99': 'Deflated Explicit VR Big Endian',
    '1.2.840.10008.1.2.2': 'Explicit VR Big Endian',
    '1.2.840.10008.1.2.4.50':  'JPEG Baseline (Process 1) Default Lossy JPEG 8-bit',
    '1.2.840.10008.1.2.4.51':  'JPEG Baseline (Process 2 & 4) Default Lossy JPEG 12-bit',
    '1.2.840.10008.1.2.4.57':  'JPEG Lossless, Nonhierarchical  (Processes 14)',
    '1.2.840.10008.1.2.4.70':  'JPEG Lossless, Nonhierarchical  First- Order Prediction',
    '1.2.840.10008.1.2.4.80':  'JPEG-LS Lossless',
    '1.2.840.10008.1.2.4.81':  'JPEG-LS Near-Lossless',
    '1.2.840.10008.1.2.4.90':  'JPEG 2000 Lossless Only',
    '1.2.840.10008.1.2.4.91':  'JPEG 2000',
    '1.2.840.10008.1.2.4.92':  'JPEG 2000 Multicomponent  Lossless Only',
    '1.2.840.10008.1.2.4.93': 'JPEG 2000 Multicomponent',
    '1.2.840.10008.1.2.4.94':  'JPIP Referenced',
    '1.2.840.10008.1.2.4.95':  'JPIP Referenced Deflate',
    '1.2.840.10008.1.2.5': 'RLE Lossless',
    '1.2.840.10008.1.2.6.1': 'RFC 2557 MIME Encapsulation',
    '1.2.840.10008.1.2.4.100': 'MPEG2 Main Profile Main Level',
    '1.2.840.10008.1.2.4.102': 'MPEG-4 AVC/H.264  High Profil Level 4.1',
    '1.2.840.10008.1.2.4.103': 'MPEG-4 AVC/H.264 BD High Profil Level 4.1'
}


# ---------------------------------------------------------------------',
def dicom_tag_subst(fd_in, fd_out):
  for line in fd_in:
    for match in re.findall('[0-9A-Fa-f]{4},{0,1}[0-9A-Fa-f]{4}', line):
      label = keyword_for_tag(int(match.replace(',', ''), 16))
      if label != '':
        line = re.sub(match, label, line) if not keep_numeric_string else re.sub(match, match+'='+label, line)
    if not keep_numeric_string:
      for SOPClass in SOPClassUID_mapping.keys():
        if '"'+SOPClass+'"' in line:
          line = line.replace(SOPClass, SOPClass + ' (' + SOPClassUID_mapping[SOPClass] + ')')
    print(line, end='')

# ---------------------------------------------------------------------
if __name__ == "__main__":
  dicom_tag_subst(sys.stdin, sys.stdout)
