FROM alpine:latest
RUN apk add --no-cache bash
WORKDIR /app
COPY game.sh .
RUN chmod +x game.sh
CMD ["./game.sh"]
