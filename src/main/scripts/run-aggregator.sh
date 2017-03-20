#!/usr/bin/env bash

PRG="$0"
#PRGDIR=`dirname "$PRG"`

#exec java -jar "$PRGDIR"/aggregator.jar --collector-flow-nvos --collector-port-nvos --collector-vport-nvos "$@"


exec java -jar /opt/vcf-aggregator/aggregator.jar "$@"