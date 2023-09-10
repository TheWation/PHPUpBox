FROM debian:12

# Install necessary packages
RUN apt-get update && \
    apt-get install -y \
        php \
        apache2 \
        libpng-dev \
        libzip-dev \
        git && \
    docker-php-ext-install gd zip && \
    a2enmod rewrite

# Set the working directory
WORKDIR /var/www/html

# Clone the PHP files from a Git repository
RUN git clone https://github.com/TheWation/PHPUpBox.git .

RUN chmod -R 777 /var/www/html/uploads

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
