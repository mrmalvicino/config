# Transcribe todos los videos en la carpeta actual a archivos .txt usando:
# whisper "nombre_del_video.mkv" --model small --language es --output_format txt --output_dir out

# Cambiá el modelo si querés más precisión (small, medium, large-v3)
$whisperModel = "small"
$idioma = "es"

# Buscar videos en el directorio actual
$videos = Get-ChildItem -Path . -Include *.mkv, *.mp4, *.avi, *.mov -File

if ($videos.Count -eq 0) {
    Write-Host "⚠️ No se encontraron videos en la carpeta."
    exit
}

foreach ($video in $videos) {
    Write-Host "🎬 Transcribiendo: $($video.Name)..."
    whisper $video.FullName --model $whisperModel --language $idioma --output_format txt
}

Write-Host "✅ Transcripción finalizada. Archivos .txt generados en la misma carpeta."
