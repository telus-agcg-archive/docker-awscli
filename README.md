# AWS Command Line Interface

Runs the `awscli` in an Alpine based docker image.

# Versions

Currently avaliable versions (by tag).

* `latest` - awscli version `1.9.15`
* `1.9.15` - awscli version `1.9.15`

# Usage

The image sets the entrypoint as "aws" so you can run commands from there

```sh
docker run \
  -it \
  --rm \
  --volume $HOME/.aws:/root/.aws \
  technekes/awscli \
  ec2 describe-instances
```

**Bonus**: To simplify things you can create an alias

```sh
alias awscli="docker run \
  -it \
  --rm \
  --volume $HOME/.aws:/root/.aws \
  technekes/awscli"
```

Now simply reference the new alias:

```sh
> awscli --version
aws-cli/1.9.15 Python/2.7.10 Linux/4.1.12-boot2docker botocore/1.3.15
```
