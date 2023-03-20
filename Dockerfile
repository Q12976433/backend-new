# syntax=docker/dockerfile:1

FROM node:18-alpine
# ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

# RUN npm install --production
RUN npm install

# RUN npm install -g @nestjs/cli

COPY . .

# RUN npm run build

# CMD [ "node", "dist/main.js" ]

# define ARGs
# ARG ACCESS_TOKEN_SECRET_PRIVATE
# ARG ACCESS_TOKEN_SECRET_PUBLIC

# ENV ACCESS_TOKEN_SECRET_PRIVATE=${ACCESS_TOKEN_SECRET_PRIVATE}
# ENV ACCESS_TOKEN_SECRET_PUBLIC=${ACCESS_TOKEN_SECRET_PUBLIC}

EXPOSE 9090

CMD [ "npm", "start" ]
