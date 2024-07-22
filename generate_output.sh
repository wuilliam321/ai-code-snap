#!/bin/bash

# Variables
output_file="output.md"
temp_dir=$(mktemp -d)

# Iniciar el archivo de salida
echo "" > $output_file

# Sincronizar archivos hacia un directorio temporal, excluyendo los ignorados en .gitignore
rsync -av --exclude-from='.generateignore' . "$temp_dir"

# Recorrer todos los archivos en el directorio temporal
find "$temp_dir" -type f | while read -r file; do
  # Obtener la ruta relativa
  relative_path="${file#$temp_dir/}"
  
  # Obtener la extensión del archivo para aplicarla en el bloque de código
  extension="${relative_path##*.}"
  
  # Escribir la ruta relativa y el contenido en el archivo de salida
  {
    echo "file: \`$relative_path\`"
    echo "content:"
    echo "\`\`\`${extension}"
    cat "$file"
    echo "\`\`\`"
    echo ""
  } >> $output_file
done

# Eliminar el directorio temporal
rm -rf "$temp_dir"
