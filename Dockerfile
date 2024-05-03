# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Remove the default Nginx index page
RUN rm /usr/share/nginx/html/index.html

# Copy the custom index.html into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside once the container has launched
EXPOSE 80

# Start Nginx and ensure it stays running
CMD ["nginx", "-g", "daemon off;"]

