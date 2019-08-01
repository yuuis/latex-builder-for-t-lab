FROM paperist/alpine-texlive-ja

RUN apk add make

ADD ./ /workdir

CMD ["make"]
