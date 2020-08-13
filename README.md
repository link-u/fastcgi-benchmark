# FastCGI benchmark

## Prepare fastcgi server

```bash
bash srv/run.sh # to benchmark
bash srv/run-trace.sh # to debug
```

## Start web server

```bash
docker-compose run --rm nginx
docker-compose run --rm h2o
```

## Run a benchmark!

```bash
wrk -c 100 -t 100 -d 30 --latency http://localhost:8080/
```
