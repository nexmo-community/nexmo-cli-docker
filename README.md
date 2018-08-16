# Nexmo CLI in Docker

This repo provides the ability to run the Nexmo CLI in a Docker container instead of on the host system.

## Setup Instructions

Clone the repository:

```bash
git clone git@github.com:nexmo-community/nexmo-cli-docker.git
```

Build the Docker container with required arguments:

```
docker build -t nexmo-cli --build-arg KEY=your_nexmo_api_key --build-arg SECRET=your_nexmo_api_secret .
```

If you would like to access the beta version you can add the optional `BETA` argument set to `true`:

```
docker build -t nexmo-cli-beta --build-arg KEY=your_nexmo_api_key --build-arg SECRET=your_nexmo_api_secret --build-arg BETA=true .
```

## Usage

Once the container has been built you can check to make sure it's working by issuing the following command:

```bash
docker run --rm -it nexmo-cli -V
```

You should see a version string.

Example: List all your applications:

```bash
docker run --rm -it nexmo-cli app:list
```

This command is quite long and verbose. You can use the following alias to shorten it. Place it in your `.bashrc` file:

```bash
alias nexmo="docker run --rm -it nexmo-cli"
```

Where `nexmo-cli` is the tagged name from the build step.
