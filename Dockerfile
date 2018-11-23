FROM mikeifomin/midas_coins_base

COPY ./midasd /usr/local/bin/coind
COPY ./midas-cli /usr/local/bin/coin-cli

EXPOSE 44433

