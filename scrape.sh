#!/bin/bash

set -e

HOME_DIR=/usr/home/samtny

if [ -f "/usr/local/bin/php7" ]; then
  php="/usr/local/bin/php7"
else
  php="php"
fi

${php} -d allow_url_fopen=On ${HOME_DIR}/public_html/pinballfinder.org/pf3/scrape/sources/scrape_pinballmap.php --soft-approve --tidy

exit 0
