FROM debian:buster

# Install Apache and other necessary packages
RUN apt-get update && apt-get install -y \
    apache2 \
    libcgi-pm-perl \
    build-essential \
    libncurses5-dev \
    libncursesw5-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Enable CGI module in Apache
RUN a2enmod cgi

# Copy the vulnerable CGI script and the Bash source tarball into the image
COPY color_changer.cgi /usr/lib/cgi-bin/color_changer.cgi
COPY index.html /var/www/html/index.html
COPY bash-4.3.tar.gz /tmp/
COPY app.js /var/www/html/app.js
COPY flag.html /var/www/html/flag.html

# Make the CGI script executable
RUN chmod +x /usr/lib/cgi-bin/color_changer.cgi

# Extract, compile, and install Bash from the copied tarball
RUN tar xf /tmp/bash-4.3.tar.gz -C /tmp/ \
    && cd /tmp/bash-4.3 \
    && ./configure \
    && make \
    && make install \
    && rm -rf /tmp/bash-4.3 /tmp/bash-4.3.tar.gz

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
