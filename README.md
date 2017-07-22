# Dummy docker cloud app

Simple Hello World! application demonstrating a simple automated cloud deployment.

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
