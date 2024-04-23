# Use an official Nginx image as a parent image
FROM nginx:alpine

# Copy custom configuration file to the nginx config directory
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the HTML and CSS files to the directory that serves static files
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
