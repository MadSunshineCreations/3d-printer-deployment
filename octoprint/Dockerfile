FROM octoprint/octoprint:1.5.2
RUN pip install "https://github.com/SimplyPrint/OctoPrint-Creality2xTemperatureReportingFix/archive/master.zip" && \
    pip install "https://github.com/fraschetti/Octoslack/archive/master.zip"
COPY init.sh /bin/
ENV CONFIG_FILE_NAME=config.yaml
ENV USERS_FILE_NAME=users.yaml
ENTRYPOINT ["/bin/init.sh"]