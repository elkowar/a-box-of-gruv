#!/bin/sh

usage() {
  echo "Usage: $(basename "$0") <name of theme to generate> <path to template file>"
}


cd "$(dirname "$0")" || exit

theme_name="$1"
template_file="$2"

theme_dir="generated/$theme_name"

if [ -z "$theme_name" ]; then
  echo "No theme name given"
  echo ""
  usage
  exit 1
fi
if [ -z "$template_file" ]; then
  echo "No template path given"
  echo ""
  usage
  exit 1
fi
if [ ! -f "$template_file" ]; then
  echo "Template file $template_file not found"
  echo ""
  usage
  exit 1
fi


mkdir -p "$theme_dir"
cp ./styles/* "$theme_dir/"

. ./"$template_file"

for file in "$theme_dir"/*; do
  file_content="$(envsubst < "$file")"
  echo "$file_content" > "$file"
done

echo "Successfully generated theme in $(realpath "generated/$theme_name")"
