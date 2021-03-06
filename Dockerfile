# Container image that runs your code
FROM gittools/gitversion:5.1.3-linux-ubuntu-18.04-netcoreapp2.1

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Ensure that the sh file can be executed
RUN ["chmod", "+x", "/entrypoint.sh"]

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]