#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

rm ${DIR}/rc.conf
ln -s ${DIR}/rc.urxvt-image-support.conf ${DIR}/rc.conf

rm ${DIR}/scope.sh
ln -s ${DIR}/scope.original.sh ${DIR}/scope.sh

