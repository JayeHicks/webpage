# Use official nginx image as base
FROM nginx:alpine

# Copy custom index.html to the nginx web root
COPY index.html /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# run nginx in foreground, keeping container running
CMD ["nginx", "-g", "daemon off;"]

# Build container with: docker build -t my-webpage-image .
# Launch container with: docker run -d --name my-webpage -p 8000:80 my-webpage-image:latest
# View page running in containe using http://localhost:8000 or http://127.0.0.1:8000