FROM ubuntu:24.10

WORKDIR /root/.config/nvim/

COPY . .

RUN apt update && \
  apt install -y git && \
  apt install -y curl && \
  apt install -y neovim && \
  apt install -y build-essential

CMD [ "tail", "-f", "/dev/null" ]

