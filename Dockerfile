FROM ubuntu:latest

# Install curl for demo purposes
RUN apt-get update && apt-get install -y --no-install-recommends \
  curl \
  ca-certificates \
  && rm -rf /var/lib/apt-get/lists/*

# Even with the rm, the files are still in the image.
COPY keypair.pem password.txt /
RUN rm /keypair.pem /password.txt

# Hard-coded
RUN curl -u guest:guest https://jigsaw.w3.org/HTTP/Basic/
