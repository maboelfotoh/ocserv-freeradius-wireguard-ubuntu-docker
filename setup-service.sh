#!/bin/bash
cp ocserv-radcli.service /etc/systemd/system
systemctl start ocserv-radcli
systemctl enable ocserv-radcli
