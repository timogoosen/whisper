FROM python:3

WORKDIR /code

COPY . .

# Set the Chrome repo.
# RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
#     && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

# Install Chrome.
RUN apt-get update && apt-get -y install ffmpeg \
 && pip install --upgrade --no-deps --force-reinstall git+https://github.com/openai/whisper.git

# Install dependencies


