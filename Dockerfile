# Use the lightweight Nginx Alpine image
FROM nginx:alpine

# Copy the index.html and styles.css to Nginx default public directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
