FROM debian:12

RUN add-apt-repository ppa:ondrej/php

# Install necessary packages
RUN apt-get update && \
    apt-get install -y \
        php5 \
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
