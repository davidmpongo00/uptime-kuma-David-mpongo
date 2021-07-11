FROM node:16.4.2-alpine3.14
# 
WORKDIR /app
COPY . .
RUN yarn
RUN yarn build
# 
EXPOSE 3001
VOLUME ["/app/data"]
CMD ["npm", "run", "start-server"]
