FROM alpine:latest

# Install PHP 5
RUN apk add --no-cache php5-fpm php5-common php5-apache2

# Enable PHP 5
RUN echo "php5-fpm" >> /etc/apk/repositories
RUN apk update

# Set the working directory
WORKDIR /var/www/html

# Clone the PHP files from a Git repository
RUN git clone https://github.com/TheWation/PHPUpBox.git .

RUN chmod -R 777 /var/www/html/uploads

# Expose port 80
EXPOSE 80

# Set the command to run when the container starts
CMD ["php5-fpm"]