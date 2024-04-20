#!/usr/bin/env python3

import whisper

model = whisper.load_model("base")

# load audio and pad/trim it to fit 30 seconds
video_file = "/samples/2-hours.mp4"
result = model.transcribe(video_file)

# Print the text from the video
print(result["text"])