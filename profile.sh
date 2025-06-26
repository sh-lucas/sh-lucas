#!/bin/bash

# --- Configurações ---
# Definição de cores para facilitar a leitura
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
NC='\033[0m' # reset
GREEN='\033[0;32m'


# barra de carregamento
function show_loading_bar() {
  printf "${CYAN} %s ${NC}\n" "$1"
  local bar_width=20
  local delay=0.015

  for i in {0..100}; do
    local filled=$(( (i * bar_width) / 100 ))
    local empty=$(( bar_width - filled ))

    local filled_str=$(printf '█'%.0s $(seq 1 $filled))
    local empty_str=$(printf ' '%.0s $(seq 1 $empty))

    # \r retorna o cursor
    printf "\r [${GREEN}%s%s${NC}] %d%%" "$filled_str" "$empty_str" "$i"

    sleep $delay
  done

  echo ""
}


# --- Script Principal ---

# Mostra a barra de carregamento
show_loading_bar "Petting cute kittens"
show_loading_bar "Downloading coffee"
show_loading_bar "Installing dependencies"

# Cabeçalho
echo ""
echo -e "${PURPLE}## 💜 Lucas Schwalm Silva${NC}"
echo "" # Linha em branco para espaçamento

# Bio
echo -e "- Computer Engineering in UERGS, Brazil;"
echo -e "- Coding coffee and drinking software;"
echo -e "- Software developer @ roxcode, Porto Alegre;"
echo ""

# Tecnologias mais usadas
echo -e "${CYAN}### 💻 Most used Techs${NC}"
echo -e "${WHITE}  Golang | Typescript | C${NC}"
echo ""

# Experiências anteriores
echo -e "${PURPLE}### 💜 Previous contacts and experiences${NC}"
echo -e "${WHITE}  React | Flutter | Rust | Fedora | Java${NC}"
echo ""

# Contato
echo -e "${YELLOW}## 🔗 Contact me:${NC}"
echo -e "- Email Me: ${WHITE}lucas.schwalm.silva@gmail.com${NC}"
echo -e "- My Website: ${WHITE}https://lucas-schwalm-silva.vercel.app/${NC}"
echo ""
