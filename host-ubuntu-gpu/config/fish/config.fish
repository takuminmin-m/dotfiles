# rbenv
set -x RBENV_ROOT $HOME/.rbenv
fish_add_path $RBENV_ROOT/bin

# cargo
fish_add_path $HOME/.cargo/bin

# nvidia cuda
fish_add_path /usr/local/cuda-12.1/bin
set -x LD_LIBRARY_PATH /usr/local/cuda-12.1/lib64:$LD_LIBRARY_PATH

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# pytorch
set -x PYTORCH_CUDA_ALLOC_CONF expandable_segments:True
set -x PYTORCH_DATASETS_PATH $HOME/datasets
set -x TORCH_HOME $HOME/ml_data/.cache/torch

# huggingface
set -x HF_HOME $HOME/ml_data/.cache/huggingface

# ollama
set -x OLLAMA_MODELS $HOME/ml_data/.cache/ollama/models

# wezterm
alias wezterm="flatpak run org.wezfurlong.wezterm"

# zed editor and others
fish_add_path $HOME/.local/bin

# wakatime
fish_add_path $HOME/.wakatime

# general aliases
alias ls="ls --color=auto -a"

if status is-interactive
    # Commands to run in interactive sessions can go here
   rbenv init - fish | source
end
