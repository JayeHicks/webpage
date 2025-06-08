# Use official nginx image as base
FROM nginx:alpine

LABEL maintainer="jaye.hicks@gmail.com"
LABEL description="A single-page, static web site that offers some ascii art"
LABEL documentation="https://github.com/JayeHicks/webpage/blob/main/README.md"
LABEL version="1.0.0"

# Copy custom index.html to the nginx web root
COPY index.html /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# run nginx in foreground, keeping container running
CMD ["nginx", "-g", "daemon off;"]
