#!/bin/bash

# Check if the input image is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <path_to_image>"
  exit 1
fi

# Input image
INPUT_IMAGE=$1

# Output directory
OUTPUT_DIR='/Users/mac/StudioProjects/E-Commerce-Platform-/android/app/src/main/res'
mkdir -p $OUTPUT_DIR

# Icon sizes for Android
ICON_SIZES=("48" "72" "96" "144" "192")
DIRS=("mipmap-mdpi" "mipmap-hdpi" "mipmap-xhdpi" "mipmap-xxhdpi" "mipmap-xxxhdpi")

# Remove existing icons and generate new ones
for i in "${!ICON_SIZES[@]}"; do
  size=${ICON_SIZES[$i]}
  dir=${DIRS[$i]}
  output_file="$OUTPUT_DIR/$dir/ic_launcher.png"
  mkdir -p "$OUTPUT_DIR/$dir"
  echo "Removing existing file: $output_file"
  rm -f "$output_file"  # Remove existing file if it exists
  echo "Generating new icon: $output_file with size ${size}x${size}"
  sips -z $size $size "$INPUT_IMAGE" --out "$output_file"
done

echo "Icons generated and saved in $OUTPUT_DIR"