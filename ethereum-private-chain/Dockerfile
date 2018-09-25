FROM ethereum/client-go

COPY ./genesis.json  /root/
COPY ./build.sh .

ENTRYPOINT ["./build.sh"]
