#!/bin/sh

COMMAND_NOT_FOUND=127
GIT_HTTPS_URL="https://github.com/quentin-rodriguez/cv.git"
CLONE_DEFAULT_PATH="$HOME/cv"

missing_pkgs() {
    for pkg in $@; do
        if [ -z "$(command -v $pkg)" ]; then
            echo "Missing: $pkg"
            exit $COMMAND_NOT_FOUND
        fi
    done
}

clone() {
    url=$1
    path=$2

    if [ ! -d "$path" ]; then
        git clone $url $path
    fi

    cd $path
    git submodule update --init --recursive --remote
}


missing_pkgs "git" "docker"

read -e -p "Clone path: " -i "$CLONE_DEFAULT_PATH" CLONE_PATH
read -e -p "Firstname: " -i "John" FIRSTNAME
read -e -p "Lastname: " -i "Doe" LASTNAME
read -e -p "Email: " -i "john.doe@example.com" EMAIL
read -e -p "Address: " -i "1825 rue Issou, 69000 Delachancla" ADDRESS
read -e -p "Mobile: " -i "+3311223344" MOBILE
read -e -p "Linkedin: " -i "john.doe" LINKEDIN
read -e -p "Github: " -i "john.doe" GITHUB

clone "$GIT_HTTPS_URL" "$CLONE_PATH"

echo $CLONE_PATH

docker run \
    --rm \
    --interactive \
    --user $(id -u):$(id -g) \
    --workdir /doc \
    --volume $CLONE_PATH:/doc \
    --env "FIRSTNAME=$FIRSTNAME" \
    --env "LASTNAME=$LASTNAME" \
    --env "EMAIL=$EMAIL" \
    --env "MOBILE=$MOBILE" \
    --env "LINKEDIN=$LINKEDIN" \
    --env "GITHUB=$GITHUB" \
    thomasweise/docker-texlive-full make


