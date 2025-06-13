# Use the latest LTS version of Node.js
FROM node:24-alpine
 
USER root
WORKDIR /app

RUN apk update
RUN apk add \
        git
#
# COMMENT: Uncomment 
#
# RUN npx create-react-app --verbose /app
# RUN npm install react-bootstrap bootstrap
# RUN npm install --save @fortawesome/fontawesome-svg-core @fortawesome/free-solid-svg-icons @fortawesome/react-fontawesome
# RUN npm install axios
# RUN npm install
 
# Expose the port your app runs on
# EXPOSE 3000
 
# Define the command to run your app
CMD ["npm", "start"]
# CMD ["sleep", "infinity"]