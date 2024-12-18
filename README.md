# NENA OpenAPI Documentation

This repo contains scripts to generate documentation for [OpenAPI](https://www.openapis.org/) specifications published by [NENA](https://nena.org) on their [Github page](https://github.com/NENA911). Documentation is generated using [Redocly](https://redocly.com).

## Dependencies

- Basic developer utilities (GNU `make`, `find`)
- `npm` (The Node.js package manager)
- `gh` (The Github CLI utility)

If you do not have  these tools you will need to install them. A typical procedure to install `npm` on Ubuntu would look like the following. I recommend installing `nvm` first, like this:
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```
(Make sure you trust the above script.) Then run

```
nvm install --lts
```
to install the latest Long Term Support version of Node.js

If you do not have `gh`, installation on Ubuntu would look like this:

```
apt update
apt install gh
```

## First time setup

The following only needs to be done **once**. First, login to Github with

```
gh auth login
```

Then initialize the worktree by running

```
make initialize
```

This will clone all of [NENA's Github repos](https://github.com/NENA911) to a directory named `NENA911`. Then, all files ending in `.yaml` will be dumped into a `yaml/` directory. Then you will need to install the remaining dependencies from `package.json`:

```
npm install
```

## Usage

Run `make` to generate documentation under `docs/`

Clean the worktree with `make clean`. This will delete the generated HTML documentation and other build artifacts.
