set export := true
set dotenv-load := true
set shell := ["bash", "-c"]

user := `id -u`
group := `id -g`
docker_tag := "justcv"

@docker-build:
    docker build --build-arg "USER={{user}}" --build-arg "GROUP={{group}}" -t "{{docker_tag}}" .
    docker run --env-file .env -v ./:/opt/app -it "{{docker_tag}}" xelatex cv.tex

@build:
    xelatex cv.tex
