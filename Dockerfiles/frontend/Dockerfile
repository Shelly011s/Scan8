FROM node:alpine AS development
# Setting up the work directory
WORKDIR /frontend

# Add /app/node_modules/.bin to environment variables
# ENV PATH /app/node_modules/.bin:$PATH

# Copy package files and install app dependencies
COPY package.json /frontend/package.json
COPY package-lock.json /frontend/package-lock.json
RUN npm i

# Copying all the files in our project
COPY . .
EXPOSE 3000

# start app
CMD ["npm", "start"]