FROM amazonlinux
COPY File.sh .
COPY file home/
RUN chmod 775 File.sh
RUN dnf install findutils -y
CMD ["./File.sh"]
