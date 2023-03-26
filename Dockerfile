FROM cgr.dev/chainguard/alpine-base:latest

# All bad examples.

# Even with the rm, the file is still in the image.
COPY keypair.pem .
RUN rm keypair.pem

# Hard-coded
ENV AWS_ACCESS_KEY_ID=AKIA6J6IBOTSLLEWGMMW
ENV AWS_SECRET_ACCESS_KEY=nryvb7D9rHL8H5EjWP/xdyguJflvv1bE0HJaUNtt

# Passed in
ARG github_token
RUN echo $github_token
# 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

