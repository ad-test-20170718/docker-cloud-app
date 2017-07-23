# Docker cloud app

Simple Hello World! application demonstrating an automated cloud deployment.

Tested on:
  * 4.11.9-1-ARCH

# Running locally (without Docker)

Start a virtual python environment:

```
python -m venv venv
```

Activate it:

```
python -m venv venv
```

Install requirements:

```
pip install -r requirements.txt
```

Start flask app:

```
python lib/app.py
```

## Running locally (with Docker)

Build the image with the latest code.

```
docker build -t docker-cloud-app:latest ./
```

Run the container with port forwarding.

```
docker run -it -p 80:80 docker-cloud-app:latest
```

## Deploying

If you do not have azure-cli installed:

Start a virtual python environment:

```
python -m venv venv
```

Activate it:

```
python -m venv venv
```

Log on to your Microsot Azure account:

```
az login
```

The Docker image that will be deployed is hosted on [hub.docker.com](https://hub.docker.com/r/adtest20170718/docker-cloud-app/).

Then run the deployment script:

```
./deploy.sh
```
