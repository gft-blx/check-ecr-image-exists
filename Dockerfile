FROM public.ecr.aws/docker/library/golang:1.19.2-alpine3.16

WORKDIR /app

COPY . /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
