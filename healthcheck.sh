#! /bin/sh
#
# healthcheck.sh
# Copyright (C) 2024 kevin <kevin@kevin-ScrapboxOmega>
#
# Distributed under terms of the MIT license.
#

curl --max-time 5 -sSf https://foundry.shocktohp.xyz/join > /dev/null
RES_FOUNDRY="test"
if [ $RES_FOUNDRY -eq 0 ];then
    sed -r -e 's@<span id="foundry-status" class="status-([a-z]{2,3})"> ([A-Z]{2,3}) </span>@<span id="foundry-status" class="status-ok"> OK </span>@g' index.html

else
    echo "foundry err"
   sed -r -e 's@<span id="foundry-status" class="status-([a-z]{2,3})"> ([A-Z]{2,3}) </span>@<span id="foundry-status" class="status-err"> ERR </span>@g' index.html
fi
#curl --max-time 5 -sSf https://shocktohp.xyz/searx > /dev/null
#RES_SEARX=$?
#if [ $RES_SEARX -eq 0 ];then
#    sed -r -e 's@<span id="searx-status" class="status-([a-z]{2,3})"> ([A-Z]{2,3}) </span>@<span id="searx-status" class="status-ok"> OK </span>@g' index.html
#
#else
#    echo "searx err"
#   sed -r -e 's@<span id="searx-status" class="status-([a-z]{2,3})"> ([A-Z]{2,3}) </span>@<span id="searx-status" class="status-err"> ERR </span>@g' index.html
#fi
#curl --max-time 5 -sSf https://borderlandkeep.com > /dev/null
#RES_SEARX=$?
#if [ $RES_SEARX -eq 0 ];then
#    sed -r -e 's@<span id="borderland-status" class="status-([a-z]{2,3})"> ([A-Z]{2,3}) </span>@<span id="borderland-status" class="status-ok"> OK </span>@g' index.html
#
#else
#    echo "borderland err"
#   sed -r -e 's@<span id="borderland-status" class="status-([a-z]{2,3})"> ([A-Z]{2,3}) </span>@<span id="borderland-status" class="status-err"> ERR </span>@g' index.html
#fi
