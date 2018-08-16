FROM node:alpine

# Install Nexmo CLI
RUN npm install -g nexmo-cli

USER node

# Copy Credentials to User's Home Directory
WORKDIR /home/node
COPY .nexmorc . 
