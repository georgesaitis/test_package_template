# My Package Documentation

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

In order for the github actions of My Package to succeed the following variables need
to be set as Github secrets:

|Variable|Description|Required|Default|
|--------|-----------|--------|-------|
|`ORG_ACCESS_TOKEN`|Token used in Github actions|True||
|`ATLASSIAN_API_KEY`|Token used in Github actions. Provides authorization to publish confluence pages|True||
|`ATLASSIAN_USER`|Token used in Github actions. Confluence user|True||
|`CONFLUENCE_URL`|Token used in Github actions. Organization URL in confluence|True||
|`confluence_space_key`|Set in conf.py. Determines the space where confluence pages are published |True||
|`PYTHON_PACKAGE_PUBLISHER_AWS_ACCESS_KEY_ID`|AWS access key id to be used when pushing the to the AWS Package Registry|True||
|`PYTHON_PACKAGE_PUBLISHER_AWS_SECRET_ACCESS_KEY`|AWS access key to be used when pushing the to the AWS Package Registry|True||
### Remarks

In  terms of AWS credentials please use the ones found in [AWS Secrets Manager](https://console.aws.amazon.com/secretsmanager/home?region=us-east-1#/secret?name=github-python-packages-publisher-aws-credentials)
