# Stage 1: Dependency installation (using a specific version for consistency)
FROM node:22-alpine AS deps
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production
    
# Stage 2: Production image
FROM node:22-alpine AS production
WORKDIR /usr/src/app
COPY --from=deps /usr/src/app/node_modules ./node_modules
COPY . .
    
# Expose the port your app runs on
EXPOSE 8080
    
# Command to run the application
CMD ["node", "server.js"]
