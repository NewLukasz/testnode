# Use the official PHP image with PHP-FPM
FROM php:7.4-fpm

# Copy the PHP source code to the /var/www/html/ directory in the container
COPY index.php /var/www/html/

# Expose port 1000 on the container
EXPOSE 1000
