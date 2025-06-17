FROM node:20

ARG TZ
ENV TZ="$TZ"

# Add Debian 11 repository for libssl1.1
RUN echo "deb http://deb.debian.org/debian bullseye main" >> /etc/apt/sources.list

# Install basic development tools and iptables/ipset
RUN apt update && apt install -y less \
  git \
  procps \
  sudo \
  fzf \
  zsh \
  man-db \
  unzip \
  gnupg2 \
  gh \
  iptables \
  ipset \
  iproute2 \
  dnsutils \
  aggregate \
  jq \ 
  vim \ 
  ripgrep \
  gdebi-core \
  wget \
  libcurl4-openssl-dev \
  libssl-dev \
  libssl1.1 \
  libxml2-dev \
  libfontconfig1-dev \
  libharfbuzz-dev \
  libfribidi-dev \ 
  r-base \
  r-base-dev \
  locales \
  language-pack-en

# Install RStudio Server
RUN ARCH=$(dpkg --print-architecture) && \
  if [ "$ARCH" = "amd64" ]; then \
    wget https://download2.rstudio.org/server/focal/amd64/rstudio-server-2025.05.1-513-amd64.deb && \
    gdebi -n rstudio-server-2025.05.1-513-amd64.deb && \
    rm rstudio-server-2025.05.1-513-amd64.deb; \
  elif [ "$ARCH" = "arm64" ]; then \
    echo "RStudio Server not available for ARM64, skipping installation"; \
  fi

# Ensure default node user has access to /usr/local/share
RUN mkdir -p /usr/local/share/npm-global && \
  chown -R node:node /usr/local/share

ARG USERNAME=node

# Persist bash history.
RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" \
  && mkdir /commandhistory \
  && touch /commandhistory/.bash_history \
  && chown -R $USERNAME /commandhistory

# Set `DEVCONTAINER` environment variable to help with orientation
ENV DEVCONTAINER=true

# Create workspace and config directories and set permissions
RUN mkdir -p /workspace /home/node/.claude && \
  chown -R node:node /workspace /home/node/.claude

WORKDIR /workspace

RUN ARCH=$(dpkg --print-architecture) && \
  wget "https://github.com/dandavison/delta/releases/download/0.18.2/git-delta_0.18.2_${ARCH}.deb" && \
  sudo dpkg -i "git-delta_0.18.2_${ARCH}.deb" && \
  rm "git-delta_0.18.2_${ARCH}.deb"

# change user password
RUN echo "node:rstudious" | chpasswd

# Add node user to sudoers for rstudio-server command only
RUN echo "node ALL=(ALL) NOPASSWD: /usr/sbin/rstudio-server" >> /etc/sudoers

# Configure RStudio Server to use /workspace as default working directory
RUN mkdir -p /etc/rstudio && \
  echo "session-default-working-dir=/workspace" > /etc/rstudio/rsession.conf && \
  echo "session-default-new-project-dir=/workspace" >> /etc/rstudio/rsession.conf

# Set up non-root user
USER node

# Install global packages
ENV NPM_CONFIG_PREFIX=/usr/local/share/npm-global
ENV PATH=$PATH:/usr/local/share/npm-global/bin

# Set the default shell to zsh rather than sh
ENV SHELL=/bin/zsh

# Default powerline10k theme
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.2.0/zsh-in-docker.sh)" -- \
  -p git \
  -p fzf \
  -a "source /usr/share/doc/fzf/examples/key-bindings.zsh" \
  -a "source /usr/share/doc/fzf/examples/completion.zsh" \
  -a "export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" \
  -x

# Install Claude
RUN npm install -g @anthropic-ai/claude-code

USER node