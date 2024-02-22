
# CV

My CV


## Environment Variables

To run this project, you will need to add the following environment variables to your `.env.local` file

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

## Build Locally

Install [mise](https://mise.jdx.dev/getting-started.html)

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

Install plugins and tools
```bash
mise install
```

Create a `.env.local` file and fill it with the [environment variables](#environment-variables) above
```bash
touch .env.local
```

Install dependencies
```bash
tlmgr install fontawesome5
tlmgr install roboto
tlmgr install sourcesanspro
tlmgr install tikzfill
tlmgr install catchfile
tlmgr install babel-french
```

Generate the pdf
```bash
xelatex cv.tex
```

## Build with Docker

Build the image
```bash
docker build --build-arg "GROUP=$(id -g)" --build-arg "USER=$(id -u)" -t $(id -un)-cv -q .
```

Generate the pdf
```bash
docker run --rm --env-file .env.local -v ./:/opt/app -it $(id -un)-cv xelatex cv.tex
```
