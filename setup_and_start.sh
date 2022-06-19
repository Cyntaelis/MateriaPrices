#!/bin/bash
#TODO dockerfile this stuff
#TODO remove crontab comment when fully debugged
source python_setup.sh
crontab="/etc/crontab"
grep -qF "some_user python /mount/share/script.py" "$crontab" || echo "*/30 * * * * ubuntu python $HOME/materiaprices/checker.py" #>> $crontab