# Transcribe todos los videos de la carpeta actual a archivos .txt
# Requiere que Whisper esté instalado y disponible en el PATH.
#
# Ejemplo de comando que ejecuta:
# whisper "video.mkv" --model small --language es --output_format txt

# Modelo a utilizar: tiny, base, small, medium, large, large-v3
$whisperModel = "small"
$idioma = "es"

# Buscar videos en el directorio actual
$videos = Get-ChildItem -Path . -File | Where-Object {
    $_.Extension.ToLower() -in ".mkv", ".mp4", ".avi", ".mov"
}

if ($videos.Count -eq 0) {
    Write-Host "⚠️ No se encontraron videos en la carpeta."
    exit
}

foreach ($video in $videos) {
    Write-Host "🎬 Transcribiendo: $($video.Name)..."

    whisper `
        "$($video.FullName)" `
        --model $whisperModel `
        --language $idioma `
        --output_format txt
}

Write-Host "✅ Transcripción finalizada. Archivos .txt generados en la misma carpeta."