FROM mikeifomin/midas_coins_base

COPY ./midasd /usr/local/bin/
COPY ./midas-cli /usr/local/bin/

VOLUME ["/root/.midas"]

EXPOSE 44433

CMD exec midasd && tail -f /root/.midas/debug.log
