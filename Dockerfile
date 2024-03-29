# Use the official PHP image with Apache
FROM php:8.1-apache

# Install necessary packages
RUN apt-get update && \
    apt-get install -y git

# Set the working directory
WORKDIR /var/www/html

# Clone the PHP files from a Git repository
RUN git clone https://github.com/TheWation/PHPUpBox.git .

RUN chmod -R 777 /var/www/html/uploads

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]