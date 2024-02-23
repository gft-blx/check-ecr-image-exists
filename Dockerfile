FROM public.ecr.aws/docker/library/golang:1.21.7-alpine3.19

WORKDIR /app

COPY . /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
