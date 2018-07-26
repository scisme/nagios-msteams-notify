# nagios-msteams-notify



### Requirements

jo - https://github.com/jpmens/jo

### Installation

1. Put your own webhook url in the script
2. Put the script in /usr/local/nagios/libexec/sendMSTeamsNotification.sh (this may differ depending on your installation I guess)
3. Edit your commands.cfg file and add these entries: 
```
define command{
        command_name    notify-service-by-ms-teams
        command_line    /usr/local/nagios/libexec/sendMSTeamsNotification.sh "$NOTIFICATIONTYPE$" "Service Alert: $HOSTALIAS$/$SERVICEDESC$ is $SERVICESTATE$"
}

define command{
        command_name    notify-host-by-ms-teams
        command_line    /usr/local/nagios/libexec/sendMSTeamsNotification.sh "$NOTIFICATIONTYPE$" "Host Alert: $HOSTNAME$ is $HOSTSTATE$"
}
```

The command could be configured even more, but meh..
