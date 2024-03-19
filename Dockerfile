FROM ubuntu:latest

# Even with the rm, the files are still in the image.
COPY keypair.pem password.txt /
RUN rm /keypair.pem /password.txt

# Hard-coded
RUN curl -u ec2-user:S00perS3kr3T https://server/somefile.txt
