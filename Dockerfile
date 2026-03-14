# is node ki dependency "node:14" thi
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json first to leverage Docker's build cache
COPY package.json .

# Install dependencies in the new layer
RUN yarn install --production

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the application when the container starts
CMD ["node", "./src/index.js"]
