# FastCGI client benchmark

## Prepare fastcgi server

```bash
bash srv/run.sh # to benchmark
bash srv/run-trace.sh # to debug
```

Prebuilt server bianry is from [link-u/the-simplest-fastcgi-server-in-this-world](https://github.com/link-u/the-simplest-fastcgi-server-in-this-world).

## Start web server

```bash
docker-compose run --rm nginx
docker-compose run --rm h2o
```

## Run a benchmark!

```bash
wrk -c 100 -t 100 -d 30 --latency http://localhost:8080/
```
