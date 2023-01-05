# Use an official Node runtime as a parent image
FROM node:18.5.0-alpine

# Set the working directory to /app
WORKDIR '/app'

# Copy package.json to the working directory
COPY . .

# Install any needed packages specified in package.json
RUN apk add --no-cache python3 make g++

RUN yarn && yarn preprocess


# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run index.js when the container launches
CMD ["yarn", "bundler"]
