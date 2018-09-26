FROM ethereum/client-go

COPY ./build.sh ./genesis.json ./
COPY --from=ethereum/solc:stable /usr/bin/solc /usr/local/bin

ENTRYPOINT ["./build.sh"]
