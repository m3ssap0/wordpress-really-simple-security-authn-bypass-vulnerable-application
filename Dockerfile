FROM wordpress:6.7.0

# Updating system.
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y wget
RUN rm -rf /var/lib/apt/lists/*

# Installing vulnerable Jetpack.
RUN wget https://github.com/Really-Simple-Plugins/really-simple-ssl/archive/refs/tags/v9.1.0.tar.gz -P /var/www/html/wp-content/plugins/
RUN tar -xvzf /var/www/html/wp-content/plugins/v9.1.0.tar.gz --directory /var/www/html/wp-content/plugins/
RUN rm /var/www/html/wp-content/plugins/v9.1.0.tar.gz
RUN mv /var/www/html/wp-content/plugins/really-simple-ssl-9.1.0 /var/www/html/wp-content/plugins/really-simple-ssl
