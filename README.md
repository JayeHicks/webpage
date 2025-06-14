# Webpage
A single-page, static web site, based on nginx:alpine, that provides a littel ascii art.

### Build Container Locally (e.g., Docker Desktop)
`docker build -t my-webpage-image .`

### Launch Container Locally (e.g., Docker Desktop)
`docker run -d --name my-webpage -p 8000:80 my-webpage-image:latest`

### Access Locally Running Container (e.g., Docker Desktop)
Launch web browser and enter `http://localhost:8000` or `http://127.0.0.1:8000` assuming you launched the container with the command in the previous section.
