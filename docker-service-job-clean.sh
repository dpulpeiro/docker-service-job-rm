#!/bin/bash

REPLICATED_JOBS_FINISHED=$(docker service ls | grep 1/1 | awk '{ print $1 }')
REPLICATED_JOBS_RUNNING=$(docker service ls | grep 0/1 | awk '{ print $1 }')

REPLICATED_JOBS_FINISHED_COUNT=$(echo $REPLICATED_JOBS_FINISHED | wc -w )
REPLICATED_JOBS_RUNNING_COUNT=$(echo $REPLICATED_JOBS_RUNNING | wc -w )

echo "REPLICATED_JOBS_FINISHED $REPLICATED_JOBS_FINISHED_COUNT"
echo "REPLICATED_JOBS_RUNNING $REPLICATED_JOBS_RUNNING_COUNT"

echo
echo

if [ $REPLICATED_JOBS_FINISHED_COUNT -ge 1 ]
then
  docker service rm $REPLICATED_JOBS_FINISHED
  docker system prune -f 
fi


