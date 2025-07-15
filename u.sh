#!/data/data/com.termux/files/usr/bin/bash

echo "🧼 Digite o caminho completo da imagem:"
read caminho

if [ -f "$caminho" ]; then
    exiftool -all= -overwrite_original "$caminho"
    echo "✅ Metadados removidos com sucesso!"
else
    echo "❌ Arquivo não encontrado!"
fi
