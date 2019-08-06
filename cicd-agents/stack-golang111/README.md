
# Local Testing

```

docker build --tag golang111 .

cd [a_go_project]

docker run -ti -v `pwd`:/work --entrypoint /bin/bash -u go golang111

export GOPATH=/tmp/tmpa
mkdir -r $GOPATH

go get github.com/hashicorp/terraform/terraform
go get github.com/hashicorp/terraform/plugin
go get github.com/davecgh/go-spew/spew

mkdir -p $GOPATH/src/gitlab.com/ikethecoder
ln -s /work $GOPATH/src/gitlab.com/ikethecoder/terraform-provider-canzea

go build -o terraform-provider-canzea
```
