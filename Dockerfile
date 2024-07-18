FROM ubuntu:24.10

WORKDIR /home/root/.config/nvim/

COPY . .

RUN apt update && \
    apt install -y git && \
    apt install -y curl && \
    apt install -y neovim

CMD [ "tail", "-f", "/dev/null" ]

