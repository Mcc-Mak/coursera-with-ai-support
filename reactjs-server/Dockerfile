# Use the latest LTS version of Node.js
FROM node:24-alpine
 
# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY ./package*.json ./
COPY ./public/ ./public
COPY ./src/ ./src
 
# Install dependencies
RUN npm install

RUN npm run add-default-browsers || true 

# Copy the rest of your application files
COPY . .
 
# Expose the port your app runs on
# EXPOSE 3000
 
# Define the command to run your app
CMD ["npm", "start"]
# CMD ["sleep", "infinity"]