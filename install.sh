#!/bin/bash
#
# Config initializer
#
# See also: https://dotfiles.github.io/tutorials/
#

set -eEu -o pipefail

# Save the repository path
REPO_DIR=${PWD#"$HOME"/}

# Move to the home directory
cd "${HOME}"

symlink() {
    [[ -e "$2" || -L "$2" ]] && rm "$2"
    ln -s "$1" "$2"
}

# Create symlinks
symlink "${REPO_DIR}/Editor/.screenrc" .screenrc
symlink "${REPO_DIR}/Editor/.vimrc" .vimrc

symlink "${REPO_DIR}/Git/.gitconfig" .gitconfig
symlink "${REPO_DIR}/Git/.gitignore_global" .gitignore_global

symlink "${REPO_DIR}/Shell/.zshrc" .zshrc

symlink "${REPO_DIR}/SSH" .ssh
find "${REPO_DIR}/SSH" -type d -exec chmod 700 {} +
find "${REPO_DIR}/SSH" -type f -exec chmod 600 {} +

mkdir -p .claude
symlink "../${REPO_DIR}/Agents/CLAUDE.md" .claude/CLAUDE.md
