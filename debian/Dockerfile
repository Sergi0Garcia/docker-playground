# Use the official Debian base image
FROM debian:bullseye-slim

# Install MySQL client tools
RUN apt-get update && apt-get install -y default-mysql-client

# Set the working directory
WORKDIR /app

# Copy all files
COPY . /app

RUN apt-get update && apt-get install -y apt-transport-https ca-certificates curl gnupg && \
    curl -sLf --retry 3 --tlsv1.2 --proto "=https" 'https://packages.doppler.com/public/cli/gpg.DE2A7741A397C129.key' | gpg --dearmor -o /usr/share/keyrings/doppler-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/doppler-archive-keyring.gpg] https://packages.doppler.com/public/cli/deb/debian any-version main" | tee /etc/apt/sources.list.d/doppler-cli.list && \
    apt-get update && \
    apt-get -y install doppler

# CMD ["doppler", "run", "--", "/bin/bash"]

# Define the entry point (e.g., to run a script)
# ENTRYPOINT ["/app/scripts/my_script.sh"]