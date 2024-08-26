# Use the official PHP image with Apache
FROM php:8.0-apache

# Copy the content of the current directory to the container's /var/www/html directory
COPY . /var/www/html

# Change the Apache document root to /var/www/html/public
RUN sed -i 's|/var/www/html|/var/www/html/public|g' /etc/apache2/sites-available/000-default.conf

# Expose port 3000 to the outside world
EXPOSE 3000

# Change Apache to listen on port 3000 instead of 80
RUN sed -i 's/80/3000/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf


# Start the Apache server
CMD ["apache2-foreground"]
