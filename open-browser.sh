#!/bin/sh

SLIDES="slides.md"
ALL_URLS=`grep -Eoi '(http|https)://[a-zA-Z0-9./?=_-]*' ${SLIDES}`
BROWSER=`which chromium`

${BROWSER} \
    --incognito \
    --new-window \
    ${ALL_URLS}
