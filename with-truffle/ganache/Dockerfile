FROM node:alpine

RUN yarn global add --global-folder /usr/local/share ganache-cli

EXPOSE 8545

ENTRYPOINT ["ganache-cli"]
CMD ["-h", "0.0.0.0"]
