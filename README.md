
# CV

A brief description of what this project does and who it's for


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
| `GITHUB`    | `string` | Github usernmame  |

## Run Locally

Intall rtx or asdf
```bash

```

Clone the project
```bash
git clone git@gitlab.com:q.rodriguez/cv.git
```

Go to the project directory
```bash
cd cv
```

Install tools
```bash
rtx install
```

Install dependencies
```bash
tlmgr install fontawesome5
tlmgr install roboto
tlmgr install sourcesanspro
tlmgr install tikzfill
tlmgr install carchfile
```

Create the pdf
```bash
xelatex cv.tex
```

