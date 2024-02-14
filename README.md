# CaddyProxy

CaddyProxy is a simple, yet powerful proxy server that forwards requests to a third-party URL without altering the request or response. It ensures that all headers, body content, and other request details are passed through exactly as received. The main purpose of CaddyProxy is to allow requests to be made from the server's IP address, acting as a transparent intermediary between the client and a third-party service.

## Features

- **Transparent Proxying**: Forwards all requests and responses without modification.
- **Environment Variable Configuration**: Easily configure the third-party URL through environment variables.
- **Simple Setup**: Designed for quick deployment with Docker.

## Usage

To use CaddyProxy, you need to set the `CADDYPROXY_URL` environment variable to the URL you wish to proxy requests to. This can be done by creating an `.env` file or specifying the environment variable in your Docker run command.

## Docker Deployment

1. **Build the Docker Image**

First, clone the repository and navigate to the project directory. Then, build the Docker image using the provided `Dockerfile`.

```bash
docker build -t caddyproxy .
```

2. **Run the Container**

Run the Docker container, specifying the third-party URL via the `CADDYPROXY_URL` environment variable.

```bash
docker run -d -p 80:80 -e CADDYPROXY_URL=http://url-to-third-party.com caddyproxy
```

The following command builds the Docker image and runs the container, after you stop the container it removes the container and image.

```bash
docker build -t caddyproxy . && docker run -p 80:80 -e CADDYPROXY_URL=http://url-to-third-party.com --name caddyproxycnt --rm caddyproxy && docker rmi caddyproxy
```

This command starts the CaddyProxy server on port 80, forwarding all incoming requests to the specified third-party URL.

## Customization

You can customize the behavior of CaddyProxy by modifying the `Caddyfile` to fit your specific needs. However, the default configuration is designed to work without modification for most use cases.
