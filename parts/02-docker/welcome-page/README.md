# ACME Inc.

Web app.

## How to build it

```
docker build -t localhost:30335/acme-inc-welcome-page:1 .
```

## How to run it

```
docker run --rm -p 8080:80 localhost:30335/acme-inc-welcome-page:1
```

## How to push it to registry

```
docker push localhost:30335/acme-inc-welcome-page:1
```
