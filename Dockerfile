FROM redis:latest

# Copy Redis config
COPY redis.conf /usr/local/etc/redis/redis.conf

# Set the default command to run Redis with custom config
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
