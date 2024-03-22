FROM alpine:latest


# Install curl for later
RUN apk --no-cache add curl

# Even with the rm, the files are still in the image.
COPY keypair.pem password.txt /
RUN rm /keypair.pem /password.txt

# Hard-coded
RUN curl --user user:pass https://authenticationtest.com/HTTPAuth/

