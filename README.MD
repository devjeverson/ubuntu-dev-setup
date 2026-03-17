# ⚙️ Ubuntu Dev Environment Bootstrap

![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04-orange)
![Shell](https://img.shields.io/badge/Shell-Bash-green)
![License](https://img.shields.io/badge/License-MIT-blue)
![Status](https://img.shields.io/badge/status-active-success)

# ⚙️ Ubuntu Dev Environment Bootstrap

![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04-orange)
![Shell](https://img.shields.io/badge/Shell-Bash-green)
![License](https://img.shields.io/badge/License-MIT-blue)
![Status](https://img.shields.io/badge/status-active-success)

Provisionamento automatizado de ambiente de desenvolvimento para Ubuntu, com foco em produtividade, padronização e onboarding rápido de desenvolvedores.

---

## 🚀 Visão Geral

Este projeto automatiza a configuração de um ambiente completo de desenvolvimento com apenas um script.

Ideal para desenvolvedores que trabalham com múltiplas stacks (Java, Angular, Python) e querem evitar setups manuais demorados e inconsistentes.

⏱ **Setup completo em ~10–15 minutos**

---

## 🧠 Por que usar?

Configurar um ambiente do zero pode gerar:

* conflitos de versões
* erros de configuração
* inconsistência entre máquinas
* perda de produtividade

Este script resolve isso ao:

* ⚡ automatizar instalações
* 🔁 padronizar ambientes
* 🚀 reduzir tempo de setup
* 👥 facilitar onboarding de times

---

## ✨ Stack instalada

* ☕ Java (JDK 17)
* 🌐 Node.js (via NVM)
* 🅰️ Angular CLI
* 🐍 Python 3 + pip + venv
* 🐳 Docker
* 🔀 Git
* 💻 VS Code + extensões
* 🧠 IntelliJ IDEA Community
* 🐍 PyCharm Community
* 🎨 ZSH + Oh My Zsh
* 🔤 Fira Code

---

## 📥 Como usar

### 🔹 Opção 1: Clonar via GitHub

```bash
git clone https://github.com/devjeverson/ubuntu-dev-setup.git
cd ubuntu-dev-setup
chmod +x ubuntu-dev-setup.sh
./ubuntu-dev-setup.sh
```

---

### 🔹 Opção 2: Download ZIP

1. Acesse o repositório:
   https://github.com/devjeverson/ubuntu-dev-setup

2. Clique em **Code → Download ZIP**

3. Extraia o arquivo e execute:

```bash
cd ubuntu-dev-setup
chmod +x ubuntu-dev-setup.sh
./ubuntu-dev-setup.sh
```

---

### 🔹 Opção 3: Instalação rápida (1 comando)

```bash
curl -sSL https://raw.githubusercontent.com/devjeverson/ubuntu-dev-setup/main/ubuntu-dev-setup.sh | bash
```

---

## 🧪 Verificação

Após a instalação:

```bash
node -v
npm -v
java -version
python3 --version
docker --version
ng version
```

---

## ⚠️ Observações

* O script solicitará permissões `sudo`
* Algumas instalações podem levar alguns minutos
* Recomendado executar em Ubuntu limpo
* Reinicie o terminal após a instalação

---

## 📦 Repositório

https://github.com/devjeverson/ubuntu-dev-setup

---

## 📄 Licença

MIT
