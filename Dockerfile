# Use an official Node runtime as a parent image
FROM node:18.5.0-alpine as base
MAINTAINER Rauan Amangeldiyev, rauan@voyage.finance

# Set the working directory to /app
WORKDIR /usr/src/app

COPY package.json .
COPY lerna.json .
COPY tsconfig.json .
COPY tsconfig.packages.json .
COPY packages ./packages

RUN apk add --no-cache git g++ make py3-pip
RUN yarn install --pure-lockfile --non-interactive
RUN yarn preprocess
