# Stage 1: Use the official Nginx image as a base
FROM nginx:alpine

# Copy the entire website content into the default Nginx web root directory.
# The dot '.' refers to the current directory where the Dockerfile is located.
# This command ensures that the index.html, css/, js/, and assets/ folders 
# are placed exactly where the web server expects them.
COPY . /usr/share/nginx/html

# Ensure proper permissions (optional, but good practice for security)
RUN chown -R nginx:nginx /usr/share/nginx/html 
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80 (the default port for Nginx inside the container)
EXPOSE 80

# The default Nginx CMD is sufficient to start the web server
# CMD ["nginx", "-g", "daemon off;"] 
# (It's often inherited, but including it doesn't hurt)