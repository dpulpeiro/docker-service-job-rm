
# docker-service-job-rm
Simple bash tool for removing docker service jobs.

### Example of how to create one time docker service jobs

```shell
docker service create   \
  --mode replicated-job \
  --replicas 1 \
  debian:11-slim ls # Example
```


### Usage

#### Install bash command
Execute the following command as root
```shell
make install
```

#### Run the command
```shell
docker-service-job-clean
```

#### Cronjob
Example of cronjob that clean all finished jobs every day at 10 AM:
```
0 10 * * * root docker-service-job-clean
```


