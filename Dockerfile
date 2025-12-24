FROM node:19-alpine

# Definindo variáveis de ambiente
ARG _WORKDIR=/home/node/app
ARG PORT=3333

# Rodando comandos como root
USER root

# Instalando git e openssh
RUN apk add --no-cache git openssh

# Adicionando a chave pública do GitHub aos hosts conhecidos
RUN mkdir -p ~/.ssh && \
    ssh-keyscan github.com >> ~/.ssh/known_hosts

# Definindo o diretório de trabalho
WORKDIR ${_WORKDIR}

# Adicionando o conteúdo da aplicação ao diretório de trabalho
ADD . ${_WORKDIR}


RUN npm install --force



# Mudando para o usuário node
USER node

# Expondo a porta definida na variável de ambiente
EXPOSE ${PORT}

# Comando para iniciar a aplicação
CMD ["yarn", "start"]
