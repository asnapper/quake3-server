FROM debian:stable-slim AS build
LABEL maintainer="Matthias Löffel <matthias.loeffel@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get install -y curl

WORKDIR /download
ADD steal_q3a.sh .
RUN bash ./steal_q3a.sh

FROM asnapper/ioquake-base:latest
COPY --from=build /download/baseq3 /ioq3/baseq3