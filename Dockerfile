from wettyoss/wetty

# add new user ajays in alpine
RUN adduser -u 10002 -D ajays && echo "ajays:ajays" | chpasswd

EXPOSE 3000

USER 10002

CMD [ "pnpm", "start" ]

