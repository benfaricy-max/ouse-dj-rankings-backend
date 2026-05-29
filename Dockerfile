FROM node:18-alpine

WORKDIR /app

# Install unzip utility
RUN apk add --no-cache unzip

# Copy the zip archive
COPY house.zip .

# Extract the zip contents to the working directory
RUN unzip -o house.zip && rm house.zip

# Install Node.js dependencies
RUN npm install --production

# Expose the port (Railway injects PORT env var)
EXPOSE 3000

# Start the server
CMD ["node", "server.js"]
