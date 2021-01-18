# 3d-printer-deployment
Docker Compose files for deploying octoprint servers
Other files related to getting site and printers running


## octoprint

There is a dockerfile in ocotprint/ it's a very simple extension of the official octoprint image which copies in a preconfigured config.yaml, and users.yaml so no configuration has to be done. 

```bash
docker build --no-cache -t madsunshinecreations/octoprint-preconfig:latest ./
```

## UDEV Rules

Add the file 10-local.rule into /etc/udev/rules.d.
It will be necessary to figure what is unique about each USB Device in order to create the rule. The current rules are based on their path, which is basically what port they are plugged into. That won't be sufficient if they're plugged into another port. It works for me though since they aren't changing. 

To find the attributes for a USB device

```bash
udevadm info -a -n /dev/ttyACM0
```