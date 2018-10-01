FROM ethereum/client-go

RUN apk add --update --no-cache netcat-openbsd

COPY ./entrypoint.sh ./genesis.json ./

ENTRYPOINT ["./entrypoint.sh"]
