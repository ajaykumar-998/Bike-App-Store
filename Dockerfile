# Use an official Nginx image as the base
FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy all static files to the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
