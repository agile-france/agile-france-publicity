#!/bin/bash

source functions.sh

source generate-badges-A4.sh
source generate-booklet.sh
source generate-flocage.sh
source generate-flyer.sh
source generate-logo.sh
source generate-mot-des-orgas.sh
source generate-plan.sh
source generate-program.sh
source generate-questionnaire-session.sh
source generate-rooms.sh
source generate-badges.sh

rsync --verbose --update --recursive --human-readable --delete ../generated ~/Dropbox/agile-france-2012/
