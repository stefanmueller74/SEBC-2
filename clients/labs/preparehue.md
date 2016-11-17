## On all nodes
useradd -u 1001 -g hadoop huetesting

export HUE_CONF_DIR="/var/run/cloudera-scm-agent/process/`ls -alrt /var/run/cloudera-scm-agent/process | grep HUE | tail -1 | awk '{print $9}'`"
export HUE_DATABASE_PASSWORD=
/opt/cloudera/parcels/CDH/lib/hue/build/env/bin/hue useradmin_sync_with_unix
