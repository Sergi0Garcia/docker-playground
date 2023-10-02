# Use the official MySQL Docker image as the base image
FROM mysql:8.0

# Define environment variables for MySQL configuration
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password

# Copy the local MySQL database dump file to the /docker-entrypoint-initdb.d/ directory
# This directory is automatically processed by the MySQL image during container startup

# Expose MySQL port (optional)
EXPOSE 3306

# You can add any additional configuration or setup instructions here if needed

# Start the MySQL server
CMD ["mysqld"]