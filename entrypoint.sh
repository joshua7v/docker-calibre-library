#!/bin/bash

cd /opt
git clone https://github.com/janeczku/calibre-web && cd calibre-web
git clone https://github.com/SeraphStudio/Library
python cps.py
echo '
[General]
DB_ROOT = /opt/calibre-web/Library/Books
APP_DB_ROOT = /opt/calibre-web
MAIN_DIR = /opt/calibre-web
PORT = 8083
NEWEST_BOOKS = 60
[Advanced]
TITLE_REGEX = ^(A|The|An|Der|Die|Das|Den|Ein|Eine|Einen|Dem|Des|Einem|Eines)\s+
DEVELOPMENT = 0
PUBLIC_REG = 0
' > config.ini
python cps.py
