#!/bin/bash
cd /mnt/e/workspace/homelab/oci-arm-host-capacity || exit 1

# Déjà réussi : on ne fait plus rien
if [ -f .success ]; then
  crontab -l | grep -v 'run.sh' | crontab -
  exit 0
fi

/usr/bin/php ./index.php >> ./oci.log 2>&1