# Local Testing

```

docker build --tag ruby25 .

(cd /Users/aidancope/Solutions/sbbs/projects/canzea-git/cli
&&
docker run -ti -v `pwd`:/work -w /work --entrypoint /bin/bash -u go ruby25
)

```