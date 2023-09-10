FROM centos:6

# Install PHP 5
RUN yum install -y php5

# Set the working directory
WORKDIR /var/www/html

# Clone the PHP files from a Git repository
RUN git clone https://github.com/TheWation/PHPUpBox.git .

RUN chmod -R 777 /var/www/html/uploads

# Expose port 80
EXPOSE 80

# Set the command to run when the container starts
CMD ["php5-fpm"]