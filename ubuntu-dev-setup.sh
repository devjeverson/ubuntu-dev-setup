
---

# ⚙️ Script completo

## 🧩 `ubuntu-dev-setup.sh`

```bash
#!/bin/bash

set -e

LOG_FILE="setup.log"

exec > >(tee -i $LOG_FILE)
exec 2>&1

echo "🚀 Iniciando setup FULL DEV..."

# -------------------------------
# Funções utilitárias
# -------------------------------

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

ask_install() {
  read -p "Instalar $1? (y/n): " choice
  case "$choice" in
    y|Y ) return 0 ;;
    * ) return 1 ;;
  esac
}

# -------------------------------
# Atualização do sistema
# -------------------------------

echo "🔄 Atualizando sistema..."
sudo apt update && sudo apt upgrade -y

# -------------------------------
# Git
# -------------------------------

if ask_install "Git"; then
  if command_exists git; then
    echo "✔ Git já instalado"
  else
    sudo apt install -y git
    read -p "Nome do Git: " git_name
    read -p "Email do Git: " git_email
    git config --global user.name "$git_name"
    git config --global user.email "$git_email"
  fi
fi

# -------------------------------
# Docker
# -------------------------------

if ask_install "Docker"; then
  if command_exists docker; then
    echo "✔ Docker já instalado"
  else
    sudo apt install -y docker.io
    sudo systemctl enable docker
    sudo systemctl start docker
    sudo usermod -aG docker $USER
  fi
fi

# -------------------------------
# Node + NVM
# -------------------------------

if ask_install "Node.js (via NVM)"; then
  if command_exists node; then
    echo "✔ Node já instalado"
  else
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    source "$NVM_DIR/nvm.sh"
    nvm install --lts
    nvm use --lts
  fi
fi

# -------------------------------
# Angular CLI
# -------------------------------

if ask_install "Angular CLI"; then
  if command_exists ng; then
    echo "✔ Angular CLI já instalado"
  else
    npm install -g @angular/cli
  fi
fi

# -------------------------------
# Java
# -------------------------------

if ask_install "Java (JDK 17)"; then
  if command_exists java; then
    echo "✔ Java já instalado"
  else
    sudo apt install -y openjdk-17-jdk
  fi
fi

# -------------------------------
# Python
# -------------------------------

if ask_install "Python"; then
  if command_exists python3; then
    echo "✔ Python já instalado"
  else
    sudo apt install -y python3 python3-pip python3-venv
    python3 -m pip install --upgrade pip
  fi
fi

# -------------------------------
# VS Code
# -------------------------------

if ask_install "VS Code"; then
  if command_exists code; then
    echo "✔ VS Code já instalado"
  else
    sudo snap install code --classic
  fi

  echo "📦 Instalando extensões..."
  code --install-extension esbenp.prettier-vscode
  code --install-extension dbaeumer.vscode-eslint
  code --install-extension angular.ng-template
  code --install-extension eamodio.gitlens
fi

# -------------------------------
# JetBrains IDEs
# -------------------------------

if ask_install "IntelliJ IDEA"; then
  sudo snap install intellij-idea-community --classic || echo "Já instalado"
fi

if ask_install "PyCharm"; then
  sudo snap install pycharm-community --classic || echo "Já instalado"
fi

# -------------------------------
# ZSH + Oh My Zsh
# -------------------------------

if ask_install "ZSH + Oh My Zsh"; then
  if command_exists zsh; then
    echo "✔ ZSH já instalado"
  else
    sudo apt install -y zsh
  fi

  if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi

  chsh -s $(which zsh)
fi

# -------------------------------
# Fontes
# -------------------------------

if ask_install "Fira Code Fonts"; then
  sudo apt install -y fonts-firacode
fi

# -------------------------------
# Finalização
# -------------------------------

echo ""
echo "🎉 Setup finalizado!"
echo "📄 Log salvo em: $LOG_FILE"
echo "⚠ Reinicie o terminal para aplicar todas as mudanças."
