# Create the base Image
FROM node:19-alpine

# Copy the package.json file
COPY package.json /app/
# COPY source dest
COPY index.js /app/

# Set the working directory
WORKDIR /app

# Run npm 
RUN npm install

# Run the app

CMD ["npm", "start"]