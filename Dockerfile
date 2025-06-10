FROM python:3.9-slim

# Install Nginx and dependencies
RUN apt-get update && \
    apt-get install -y nginx curl && \
    pip install flask && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /app

# Copy app files
COPY app.py .
COPY start.sh /start.sh
RUN rm /etc/nginx/sites-enabled/default
COPY default.conf /etc/nginx/conf.d/default.conf

# Remove default Nginx page config
RUN chmod +x /start.sh

# Expose HTTP port
EXPOSE 80

# Entrypoint
CMD ["/start.sh"]

