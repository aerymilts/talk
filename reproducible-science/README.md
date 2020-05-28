# Reproducible science with Docker workshop

A hands-on talk for getting started with [dockerised Jupyter notebooks](https://jupyter-docker-stacks.readthedocs.io/en/latest/). \[[Slides](https://aerymilts.github.io/talks/reproducible-science)\]

If you want to be involved in the hands-on portion of the talk, ensure that you have `git` and `docker` installed. 

## Getting started
Install [`git`](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [`docker`](https://docs.docker.com/desktop/) according to your OS.

Using [Homebrew](https://brew.sh/)? Run `brew cask install docker` instead.

### Test the installation
Check that Git and Docker are installed correctly.

Git is installed correctly when you are able to obtain a version for it. 
 
```bash
$ git --version
git version 2.24.2
```

Docker should return a message as below when running the [hello-world](https://hub.docker.com/_/hello-world/) image.

```bash
$ docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
ca4f61b1923c: Pull complete
Digest: sha256:ca0eeb6fb05351dfc8759c20733c91def84cb8007aa89a5bf606bc8b315b9fc7
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.
...
```

## Getting the materials

Clone this repository. 

```bash
$ git clone https://github.com/aerymilts/talks
```

Resources are in `reproducible-science`.