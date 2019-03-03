Start concourse locally:

```bash
wget https://concourse-ci.org/docker-compose.yml
docker-compose up
```

In another terminal:

```bash
fly -t ci login --concourse-url http://127.0.0.1:8080 -u test -p test
```

Set the pipeline and unpause it:

```bash
fly -t ci set-pipeline -p demo -c ci/pipeline.yml
fly -t ci unpause-pipeline -p demo
```


Remove pipelines
```bash
fly -t ci destroy-pipeline -p my-frist-concourse-pipeline
```