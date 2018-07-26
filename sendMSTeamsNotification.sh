#!/bin/bash
#
#
#


webhookURL=YOUR_TEAMS_WEBHOOK_URL_HERE


notificationString="$(jo title="$1" text="$2")"
curl -H "Content-Type: application/json" -X POST -d "${notificationString}" $webhookURL
