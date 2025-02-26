convert_wav_to_mp3() {
  INPUT_FOLDER="$1"
  OUTPUT_FOLDER="$2"

  for i in "$INPUT_FOLDER"/*.wav; do
    FILENAME=$(basename "$i" .wav)
    ffmpeg -i "$i" "$OUTPUT_FOLDER/${FILENAME}.mp3"
  done
}
