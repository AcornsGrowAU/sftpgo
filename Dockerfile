FROM rockylinux:${ROCKYLINUX_VERSION}

RUN curl -sLo /tmp/sftpgo-${SFTPGO_VERSION}-1.x86_64.rpm https://github.com/drakkan/sftpgo/releases/download/v2.4.2/sftpgo-${SFTPGO_VERSION}-1.x86_64.rpm && \
  microdnf -y update && \
  rpm -ivh /tmp/sftpgo-${SFTPGO_VERSION}-1.x86_64.rpm && \
  microdnf clean all && \
  rm -f /tmp/sftpgo-${SFTPGO_VERSION}-1.x86_64.rpm

CMD ["sftpgo", "serve"]
