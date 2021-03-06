# project.plugin.zsh [![Build Status](https://travis-ci.org/voronkovich/project.plugin.zsh.svg?branch=master)](https://travis-ci.org/voronkovich/project.plugin.zsh)

Zsh plugin for creating projects and navigating between them.

## Installation

Antigen:

        antigen bundle voronkovich/project.plugin.zsh

Or just clone this repo and add this line into your .zshrc:

        source path/to/cloned/repo/project.plugin.zsh

## Usage

Plugin supports two types of projects:

- **regular** projects are stored in the directory configured by the `$PROJECTS` environment variable (by default: `~/projects`);
- **temporary** projects are stored in the one of the `/tmp`'s subdirectory (see `$PROJECTS_TMP`).

To create a new regular project or open the existing one, just type a `p` command:

```sh
$ p project-name
```

To create a temporary project use a `-t` option:
```sh
$ p -t project-name
```

Some usefull shortcuts:
```sh
# You can provide an url to the project repo as a second argument. The repo will be cloned automatically
$ p awesome-zsh-plugins https://github.com/unixorn/awesome-zsh-plugins

# Or just type
$ p https://github.com/unixorn/awesome-zsh-plugins 
```

### Recipes

Recipe is a piece of code that executes automaically after the project was created. All recipes are located in the directory configured by the `$PROJECTS_RECIPES` environment variable (by default: `~/projects/.recipes`).
Typical recipe could look like this:
```
#!/usr/bin/env zsh
# ~/proects/.recipes/wordpress

wget https://wordpress.org/latest.zip && unzip latest.zip -d . && rm latest.zip
```
In order to run a recipe you should specify it's name by using an `-r` option:
```sh
$ p -tr wordpress wpblog 
```

## License

Copyright (c) Voronkovich Oleg. Distributed under the MIT.
