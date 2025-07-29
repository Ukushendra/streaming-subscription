# Use official Node.js image
FROM node:20

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Build the app
RUN npm run build

# Expose port and run
EXPOSE 3000
CMD ["npm", "run", "dev"]
