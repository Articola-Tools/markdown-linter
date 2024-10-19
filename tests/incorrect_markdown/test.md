# Articola Tools' Markdown linter

[![image size](https://ghcr-badge.egpl.dev/articola-tools/markdown-linter/size?color=dodgerblue)](https://ghcr-badge.egpl.dev/articola-tools/markdown-linter/size?color=dodgerblue)

This repo contains Dockerfile with preconfigured [Markdown linter](https://github.com/markdownlint/markdownlint).
This linter is used in Articola Tools organization's repositories to lint Markdown files like README.md.

# Usage

Use `ghcr.io/articola-tools/markdown-linter` Docker image with `-v ./:/linter_workdir/repo`
parameter, where `./` - is a path to a folder with files you want to lint.

Example command to use this linter -
`docker run --rm -v ./:/linter_workdir/repo ghcr.io/articola-tools/markdown-linter`
