# Use the official Node.js image.
# https://hub.docker.com/_/node
FROM node:14

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
# A wildcard is used to ensure both package.json AND package-lock.json are copied.
COPY package.json ./

# Install production dependencies.
RUN npm install

# Copy your Node.js app code to the container image.
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the web service on container startup.
CMD [ "npm", "start" ]


# Use the official PHP image with PHP-FPM
FROM php:7.4-fpm

# Copy the PHP source code to the /var/www/html/ directory in the container
COPY index.php /var/www/html/

# Expose port 1000 on the container
EXPOSE 1000
