## Prerequisites

- docker
- rpk

## Steps

Start the cluster:

```
docker compose -f compose.redpanda-0.yaml -f compose.redpanda-1.yaml -f compose.redpanda-2.yaml up
```

Start the script that changes leadership:

```
./change-leadership.sh
```

Pre-emptively create the topic so that it has 3 replicas:

```
rpk topic create alter-config public.sandbox.redpanda.test -r 3
```

Now start the client (client not included in this repo):

```
dotnet run
```

