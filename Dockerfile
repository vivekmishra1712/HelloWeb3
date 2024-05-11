FROM node:alpine3.17

#Finish remaining steos in order to successfully build Docker-image


# Set the working directory in the container
WORKDIR C:\Vivek\Vivek_test_project\HelloWeb3\app


# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 4000

# Command to run the application
CMD ["node", "app.js"]

