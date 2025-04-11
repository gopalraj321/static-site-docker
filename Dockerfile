# Use the official NGINX image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to the NGINX HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (NGINX default)
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]

