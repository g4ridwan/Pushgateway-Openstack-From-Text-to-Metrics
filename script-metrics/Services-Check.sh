#!/bin/bash
status="$(systemctl is-active Services_Name])"
if [ "$status" = "active" ]; then
    echo "Services_Name 1" | curl --data-binary @- http://localhost:9091/metrics/job/Services/Instance/compute-01
else
    echo "Service_Name 0" | curl --data-binary @- http://localhost:9091/metrics/job/Services/Instance/compute-01
    exit 1
fi
