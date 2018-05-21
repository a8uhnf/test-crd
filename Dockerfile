FROM scratch
# EXPOSE 8080
COPY test-crd /
CMD ["/test-crd"]