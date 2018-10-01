FROM ethereum/client-go

COPY ./entrypoint.sh ./genesis.json ./
COPY --from=ethereum/solc:stable /usr/bin/solc /usr/local/bin

ENTRYPOINT ["./entrypoint.sh"]
