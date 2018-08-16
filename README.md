# Nexmo CLI in Docker

This repo provides the ability to run the Nexmo CLI in a Docker container instead of on the host system.

## Setup Instructions

Clone the repository:

```bash
git clone git@github.com:nexmo-community/nexmo-cli-docker.git
```

Copy `example.nexmorc` to `.nexmorc` and edit to add your credentials:

```bash
cp example.nexmorc .nexmorc
```

Build the Docker container:

```
docker build -t nexmo-cli .
```

## Usage

Once the container has been built you can check to make sure it's working by issuing the following command:

```bash
docker run --rm -it nexmo-cli nexmo -V
```

You should see a version string.

Example: List all your applications:

```bash
docker run --rm -it nexmo-cli nexmo app:list
```
