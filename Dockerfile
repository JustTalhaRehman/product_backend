# Step 1: Use Node.js LTS as base image
FROM node:18

# Step 2: Set working directory in container
WORKDIR /usr/src/app

# Step 3: Copy package files
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy all source code
COPY . .

# Step 6: Expose port (matches your .env PORT)
EXPOSE 5000

# Step 7: Command to start backend
CMD ["npm", "start"]
