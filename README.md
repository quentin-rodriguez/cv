
# CV

My CV


## Environment Variables

To run this project, you will need to add the following environment variables to your `.envrc` file

| Name        | Type     | Description       |
| ----------- | -------- | ----------------- |
| `FIRSTNAME` | `string` | The firstname     |
| `LASTNAME`  | `string` | The lastname      |
| `EMAIL`     | `string` | The email         |
| `ADDRESS`   | `string` | The address       |
| `MOBILE`    | `string` | The mobile phone  |
| `LINKEDIN`  | `string` | Linkedin username |
| `GITLAB`    | `string` | Gitlab username   |
| `GITHUB`    | `string` | Github username   |

## Run Locally

Intall [rtx](https://github.com/jdx/rtx#installation) or [asdf](https://asdf-vm.com/guide/getting-started.html)

Clone the project
```bash
git clone git@gitlab.com:q.rodriguez/cv.git
```

Go to the project directory
```bash
cd cv
```

Clone submodule
```bash
git submodule update --init --recursive --remote
```

Install plugins
```bash
rtx plugins install texlive https://github.com/diSimplex/asdf-texlive.git
rtx plugins intall just https://github.com/olofvndrhr/asdf-just.git
# or
asdf plugin add texlive https://github.com/diSimplex/asdf-texlive.git
asdf plugin add just https://github.com/olofvndrhr/asdf-just.git
```

Install tools
```bash
rtx install
# or
asdf install
```

Create a `.env` file and fill it with the [environment variables](#environment-variables) above
```bash
touch .env
```

Install dependencies
```bash
tlmgr install fontawesome5
tlmgr install roboto
tlmgr install sourcesanspro
tlmgr install tikzfill
tlmgr install catchfile
```

Generate the pdf
```bash
just docker-build
# or
just build
```

