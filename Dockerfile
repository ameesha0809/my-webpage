# Use an official image as a base
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .

RUN npm install

# Copy the rest of the code
COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

