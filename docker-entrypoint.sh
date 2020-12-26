#!/bin/bash

set -euo pipefail

# Check if the the user has invoked the image with flags.
# eg. "filebeat -c filebeat.yml"
if [[ -z $1 ]] || [[ ${1:0:1} == '-' ]] ; then
  exec /usr/share/filebeat/filebeat "$@"
fi

# If neither of those worked, then they have specified the binary they want, so
# just do exactly as they say.
exec "$@"