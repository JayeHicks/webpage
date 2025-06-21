# Webpage
A single-page, static web site, based on nginx:alpine, that provides a littel ascii art.

### Build Container Locally
By default the build command will build for the architecture/platform of the machine that you run the command on.  For example, if I run this command on my Macbook the container image built will by default be for `linux/arm64` which will not run on default GitHub Action Runners.  So you can either specify a `linux/arm64` runner in the specification of your GitHub Action or you can build your images for multiple architectures.

Default build:
- `docker build -t my-webpage-image .`

Multi architecture build:
- `docker buildx create --use`
- `docker buildx build --platform linux/amd64,linux/arm64 -f Dockerfile -t webpage-image --load .`

### Launch Container Locally (i.e., Docker Desktop)
`docker run -d --name my-webpage -p 8000:80 my-webpage-image:latest`

Multi architecture built

### Access Locally Running Container
Launch web browser and enter `http://localhost:8000` or `http://127.0.0.1:8000` assuming you launched the container with the command in the previous section.
