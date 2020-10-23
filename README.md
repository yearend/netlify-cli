# docker netlify-cli

A Docker image for [netlify/cli][a].
Also includes jq, curl, python, git, and build tools.

[a]: https://github.com/netlify/cli

```sh
docker image pull yearendtax/netlify-cli
```

## Usage

In your [Netlify user settings][b], create a personal access token. Set the environment variable `NETLIFY_AUTH_TOKEN`
inside the container.

[b]: https://app.netlify.com/user/applications

The default working directory in the container is `/project`, so mount your project directory into the container at that
location.

Specify the Netlify CLI command after the image name.

```sh
docker container run -it \
    -e NETLIFY_AUTH_TOKEN=<personal_access_token> \
    -v /path/to/project:/project \
    yearendtax/netlify-cli \
    deploy
```

