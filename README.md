# cloudc2

Hak5 Cloud C2

## Docker commands for reference

Clean up

```bash
docker rm cloudc2
docker rmi sund/cloudc2:v3.2.0
docker rmi sund/cloudc2:latest
docker image prune -a -f
```

docker build

```bash
docker build -t sund/cloudc2:v3.2.0 -t sund/cloudc2:latest .
```

docker compose

```bash
docker compose up
```

docker compose and run in background

```bash
docker compose up -d
```

docker push to Hub

```bash
docker push sund/cloudc2:v3.2.0
```

## Multiple images
docker buildx create --use --name buildbloat
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v8
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v8 --push -t sund/cloudc2 .