#!/usr/bin/env bash

set -${-//[sc]/}eu${DEBUG+xv}o pipefail

function main(){
  dev_appserver.py --skip_sdk_update_check true --host 0.0.0.0 --port 9000 app.yaml
}

if [[ "${0}" = "${BASH_SOURCE[0]}" ]] ; then
  main "${@}"
fi
