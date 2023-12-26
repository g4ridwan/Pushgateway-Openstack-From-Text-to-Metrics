#!/bin/bash
# Check The Description, ask to mail@ridwan.tech
## Delete Old Metrics
curl -X DELETE http://localhost:9091/metrics/job/Hypervisor/Server/Server01
curl -X DELETE http://localhost:9091/metrics/job/Hypervisor/Server/Server02
curl -X DELETE http://localhost:9091/metrics/job/Hypervisor/Server/Server03
curl -X DELETE http://localhost:9091/metrics/job/Hypervisor/Server/Server04
curl -X DELETE http://localhost:9091/metrics/job/Hypervisor/Server/Server05
## Print Last Delete Time
echo "Last Delete : $(date)" > /home/ops-metrics/script-metrics/last_delete
## Hold to Finish
#sleep 1
## Push All Instance Name to New Metrics
for i in `cat /home/ops-metrics/script-metrics/Server01 | sed 's/[ -]//g'`; do echo ${i} 1 | curl --data-binary @- http://localhost:9091/metrics/job/Hypervisor/Server/Server01; done
for i in `cat /home/ops-metrics/script-metrics/Server02 | sed 's/[ -]//g'`; do echo ${i} 1 | curl --data-binary @- http://localhost:9091/metrics/job/Hypervisor/Server/Server02; done
for i in `cat /home/ops-metrics/script-metrics/Server03 | sed 's/[ -]//g'`; do echo ${i} 1 | curl --data-binary @- http://localhost:9091/metrics/job/Hypervisor/Server/Server03; done
for i in `cat /home/ops-metrics/script-metrics/Server04 | sed 's/[ -]//g'`; do echo ${i} 1 | curl --data-binary @- http://localhost:9091/metrics/job/Hypervisor/Server/Server04; done
for i in `cat /home/ops-metrics/script-metrics/Server05 | sed 's/[ -]//g'`; do echo ${i} 1 | curl --data-binary @- http://localhost:9091/metrics/job/Hypervisor/Server/Server05; done
## Print Last Push Metrics Time
echo "Last Push : $(date)" > /home/ops-metrics/script-metrics/last_push
## Exit
exit
