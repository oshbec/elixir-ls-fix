#!/bin/bash

cd $(mktemp -d)

git clone --depth 1 https://github.com/elixir-lsp/elixir-ls

cd elixir-ls

mix deps.get

mix elixir_ls.release -o ~/.vscode/extensions/jakebecker.elixir-ls-*/elixir-ls-release/
