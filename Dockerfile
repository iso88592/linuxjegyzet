FROM laurenss/texlive-full:latest

RUN apt-get update
RUN apt-get install -y lyx python3 imagemagick

RUN sed -i 's%rights="none" pattern="EPS"%rights="read|write" pattern="{EPS,PNG,JPEG,GIF}"%' /etc/ImageMagick-6/policy.xml
RUN rm -rf ~/.texlive*
