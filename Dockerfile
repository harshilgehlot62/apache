# Use an official Apache base image
FROM httpd:latest

# (Optional) Set environment variables if needed
# ENV APACHE_RUN_USER www-data
# ENV APACHE_RUN_GROUP www-data
# ENV APACHE_LOG_DIR /var/log/apache2

# (Optional) Copy custom configuration files if needed
# COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf

# (Optional) Copy your website files into the appropriate directory
# COPY ./my-website/ /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80

