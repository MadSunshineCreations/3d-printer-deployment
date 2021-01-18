FROM octoprint/octoprint:1.5.2
COPY init.sh /bin/
ENV CONFIG_FILE_NAME=config.yaml
ENV USERS_FILE_NAME=users.yaml
ENTRYPOINT ["/bin/init.sh"]