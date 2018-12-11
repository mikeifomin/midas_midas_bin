FROM mikeifomin/midas_wallet_base:v1-zeromq-dev

WORKDIR /usr/local/bin

COPY ./midasd .
COPY ./midas-cli .

RUN chmod +x ./* && \
    ln midasd walletd && \
    ln midas-cli wallet-cli

VOLUME ["/root/.midas"]
EXPOSE 44433

RUN walletd --help || exit $(($? == 127))

