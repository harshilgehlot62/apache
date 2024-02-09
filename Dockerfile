# Use a base image of your choice, for example, Ubuntu
FROM ubuntu:latest

# Install Apache HTTP Server
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# (Optional) Set environment variables if needed
# ENV APACHE_RUN_USER www-data
# ENV APACHE_RUN_GROUP www-data
# ENV APACHE_LOG_DIR /var/log/apache2

# (Optional) Copy custom configuration files if needed
# COPY ./my-httpd.conf /etc/apache2/apache2.conf

# (Optional) Copy your website files into the appropriate directory
# COPY ./my-website/ /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache HTTP Server in the foreground when the container starts
CMD ["apachectl", "-D", "FOREGROUND"]

