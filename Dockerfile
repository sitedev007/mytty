from wettyoss/wetty


# install sudo
RUN apk update && apk add sudo && sudo --version

# add new user ajays in alpine
RUN adduser -u 10002 -D ajays && echo "ajays:ajays" | chpasswd

# add ajays user to sudoers group
RUN addgroup ajays wheel && echo "ajays ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN mkdir -p /wetty && mv /usr/src /wetty/src

EXPOSE 3000

USER 10002

WORKDIR /wetty/src/app

CMD [ "yarn", "start" ]

