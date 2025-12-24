<h1 align="center">WhatsApp API Node.js - Multi Device</h1>

<div align="center">
  <p>
    <img title="Status" src="https://img.shields.io/badge/Status-Ativo-brightgreen?style=for-the-badge" alt="">
    <img title="Versão" src="https://img.shields.io/badge/Version-New%20Release-blue?style=for-the-badge" alt="">
  </p>
  <p>
    <a href="https://github.com/Jrodolfosilva">
      <img title="Maintainer" src="https://img.shields.io/badge/Maintainer-J. Rodolfo Silva-black.svg?style=for-the-badge&logo=github" alt="">
    </a>
  </p>
  <p>
    <i>Este projeto é uma continuação e evolução da API originalmente desenvolvida por <a href="https://github.com/salman0ansari">Mohd Salman Ansari</a> (projeto original descontinuado).</i>
  </p>
</div>

---

Uma implementação robusta do [Baileys](https://github.com/WhiskeySockets/Baileys) como um serviço de API RESTful simples, com suporte a múltiplos dispositivos. Basta baixar, configurar e usar.

## 🚀 Bibliotecas Utilizadas
* **Baileys** (Motor do WhatsApp)
* **Express** (Servidor HTTP)
* **MongoDB** (Opcional - para persistência de dados)

## ⚙️ Instalação

1.  Clone este repositório:
    ```bash
    git clone [https://github.com/Jrodolfosilva/seu-repositorio.git](https://github.com/Jrodolfosilva/seu-repositorio.git)
    ```
2.  Entre no diretório do projeto:
    ```bash
    cd seu-repositorio
    ```
3.  Instale as dependências:
    ```bash
    yarn install
    ```
4.  Configure as variáveis de ambiente:
    * Copie o arquivo `.env.example` para `.env`
    * Preencha as variáveis conforme necessário (especialmente o `TOKEN`).

## 🐳 Docker Compose

1.  Certifique-se de configurar seu `.env` primeiro.
2.  Para usar com MongoDB via Docker, configure:
    ```env
    MONGODB_ENABLED=true
    MONGODB_URL=mongodb://mongodb:27017/whatsapp_api
    ```
3.  Inicie os containers:
    ```bash
    docker-compose up -d
    ```

## 🛠️ Configuração Inicial

> [!IMPORTANT]
> Você **deve** definir a variável `TOKEN=` no arquivo `.env` com uma string aleatória para proteger suas rotas de acessos não autorizados.

## 📖 Como Usar

* **Desenvolvimento:** `yarn dev`
* **Produção:** `yarn start`

### 1. Gerar uma Instância
Para criar uma nova sessão do WhatsApp:
```bash
curl --location --request GET 'localhost:3333/instance/init'