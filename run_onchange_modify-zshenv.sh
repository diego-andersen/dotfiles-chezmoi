#!/usr/bin/env bash

FILE=/etc/zsh/zshenv

if ! grep -q "export XDG_CONFIG_HOME" $FILE; then
    { echo -e "\n"
      echo "# Need these here because we want \$ZDOTDIR != \$HOME"
      echo "export XDG_CONFIG_HOME=\${XDG_CONFIG_HOME:=\"\$HOME/.config\"}"
      echo "export XDG_DATA_HOME=\${XDG_DATA_HOME:=\"\$HOME/.local/share\"}"
    } | sudo tee -a $FILE > /dev/null
fi

if ! grep -q "export ZDOTDIR" $FILE; then
    { echo -e "\n"
      echo "export ZDOTDIR=\"\$XDG_CONFIG_HOME/zsh\""
      echo "export HISTFILE=\"\$XDG_DATA_HOME/zsh/history\""
    } | sudo tee -a $FILE > /dev/null
fi
