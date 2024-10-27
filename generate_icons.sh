#!/bin/bash

# Check if the input image is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <path_to_image>"
  exit 1
fi

# Input image
INPUT_IMAGE=$1

# Output directory
OUTPUT_DIR="/Users/mac/StudioProjects/E-Commerce-Platform-/ios/Runner/Assets.xcassets/AppIcon.appiconset"
mkdir -p $OUTPUT_DIR

# Icon sizes for iPhone and iPad
ICON_SIZES=(
  "20x20@1x:20x20"
  "20x20@2x:40x40"
  "20x20@3x:60x60"
  "29x29@1x:29x29"
  "29x29@2x:58x58"
  "29x29@3x:87x87"
  "40x40@1x:40x40"
  "40x40@2x:80x80"
  "40x40@3x:120x120"
  "60x60@1x:60x60"
  "60x60@2x:120x120"
  "60x60@3x:180x180"
  "76x76@1x:76x76"
  "76x76@2x:152x152"
  "83.5x83.5@2x:167x167"
  "1024x1024@1x:1024x1024"
)

# Remove existing icons
for size in "${ICON_SIZES[@]}"; do
  key="${size%%:*}"
  output_file="$OUTPUT_DIR/Icon-App-$key.png"
  if [ -f "$output_file" ]; then
    rm "$output_file"
  fi
done

# Generate icons
for size in "${ICON_SIZES[@]}"; do
  key="${size%%:*}"
  output_size="${size##*:}"
  output_file="$OUTPUT_DIR/Icon-App-$key.png"
  sips -z "${output_size%x*}" "${output_size#*x}" "$INPUT_IMAGE" --out "$output_file"
done

# Create Contents.json
cat <<EOF > $OUTPUT_DIR/Contents.json
{
  "images": [
    {
      "idiom": "iphone",
      "size": "20x20",
      "scale": "1x",
      "filename": "Icon-App-20x20@1x.png"
    },
    {
      "idiom": "iphone",
      "size": "20x20",
      "scale": "2x",
      "filename": "Icon-App-20x20@2x.png"
    },
    {
      "idiom": "iphone",
      "size": "20x20",
      "scale": "3x",
      "filename": "Icon-App-20x20@3x.png"
    },
    {
      "idiom": "iphone",
      "size": "29x29",
      "scale": "1x",
      "filename": "Icon-App-29x29@1x.png"
    },
    {
      "idiom": "iphone",
      "size": "29x29",
      "scale": "2x",
      "filename": "Icon-App-29x29@2x.png"
    },
    {
      "idiom": "iphone",
      "size": "29x29",
      "scale": "3x",
      "filename": "Icon-App-29x29@3x.png"
    },
    {
      "idiom": "iphone",
      "size": "40x40",
      "scale": "1x",
      "filename": "Icon-App-40x40@1x.png"
    },
    {
      "idiom": "iphone",
      "size": "40x40",
      "scale": "2x",
      "filename": "Icon-App-40x40@2x.png"
    },
    {
      "idiom": "iphone",
      "size": "40x40",
      "scale": "3x",
      "filename": "Icon-App-40x40@3x.png"
    },
    {
      "idiom": "iphone",
      "size": "60x60",
      "scale": "1x",
      "filename": "Icon-App-60x60@1x.png"
    },
    {
      "idiom": "iphone",
      "size": "60x60",
      "scale": "2x",
      "filename": "Icon-App-60x60@2x.png"
    },
    {
      "idiom": "iphone",
      "size": "60x60",
      "scale": "3x",
      "filename": "Icon-App-60x60@3x.png"
    },
    {
      "idiom": "ipad",
      "size": "76x76",
      "scale": "1x",
      "filename": "Icon-App-76x76@1x.png"
    },
    {
      "idiom": "ipad",
      "size": "76x76",
      "scale": "2x",
      "filename": "Icon-App-76x76@2x.png"
    },
    {
      "idiom": "ipad",
      "size": "83.5x83.5",
      "scale": "2x",
      "filename": "Icon-App-83.5x83.5@2x.png"
    },
    {
      "idiom": "ios-marketing",
      "size": "1024x1024",
      "scale": "1x",
      "filename": "Icon-App-1024x1024@1x.png"
    }
  ],
  "info": {
    "version": 1,
    "author": "xcode"
  }
}
EOF

echo "Icons generated and saved in $OUTPUT_DIR"