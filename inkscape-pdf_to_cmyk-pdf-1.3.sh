#!/bin/bash
in="$1"
out="$2"
[[ -n "$in" ]] || [[ -n "$out" ]] || { echo "Usage: $0 <in.pdf> <out.pdf>"; exit 1; }

gs -dSAFER -dBATCH -dNOPAUSE -dNOCACHE -sDEVICE=pdfwrite -sColorConversionStrategy=CMYK -dProcessColorModel=/DeviceCMYK -dCompatibilityLevel=1.3 -dAutoFilterColorImages=false -dAutoFilterGrayImages=false -dColorImageFilter=/FlateEncode -dGrayImageFilter=/FlateEncode -dColorConversionStrategy=/LeaveColorUnchanged -dDownsampleMonoImages=false -dDownsampleGrayImages=false -dDownsampleColorImages=false -sOutputFile="$out" "$in"

