# Use a lightweight Node.js image as the base
FROM node:lts-alpine AS builder

# Set the working directory for the build stage
WORKDIR /app

# Copy package.json so we know what dependencies to install
COPY package*.json ./

# Load environment variables
ARG REACT_APP_ROOT_URL=${REACT_APP_ROOT_URL}

# Install dependencies using Yarn
RUN yarn install --production

# Copy the entire project directory
COPY . .

# Build the React app for production (adjust command if needed)
RUN yarn build

# Create a slimmer image for serving the production build
FROM nginx:alpine

# Copy the build output from the previous stage
COPY --from=builder /app/build /usr/share/nginx/html

# Expose the default port (80)
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
