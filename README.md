# test_package_template Documentation

## Description

Description of the package

## Usage

In order to install the package use the following command:

```bash
poetry shell
poetry install
```

In order  for  the automatic release  process to work  smoothly  all  commits should follow  the commitizen templates

## CI

In order for the github actions of test_package_template to succeed the following variables need
to be set as Github secrets:

|Variable|Description|Required|Default|
|--------|-----------|--------|-------|
|`ORG_ACCESS_TOKEN`|Token used in Github actions|True||
|`PYTHON_PACKAGE_PUBLISHER_AWS_ACCESS_KEY_ID`|AWS access key id to be used when pushing the to the AWS Package Registry|True||
|`PYTHON_PACKAGE_PUBLISHER_AWS_SECRET_ACCESS_KEY`|AWS access key to be used when pushing the to the AWS Package Registry|True||
### Remarks

In  terms of AWS credentials please use the ones found in [AWS Secrets Manager](https://console.aws.amazon.com/secretsmanager/home?region=us-east-1#/secret?name=github-python-packages-publisher-aws-credentials)
