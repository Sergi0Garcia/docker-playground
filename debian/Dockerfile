# Use the official Debian base image
FROM debian:bullseye-slim

# Install MySQL client tools
RUN apt-get update && apt-get install -y default-mysql-client

# Set the working directory

WORKDIR /app
COPY . /app

# Copy any SQL scripts or configuration files if needed
# COPY scripts/ /app/scripts/

# Define the entry point (e.g., to run a script)
# ENTRYPOINT ["/app/scripts/my_script.sh"]