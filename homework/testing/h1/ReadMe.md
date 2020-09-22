# Instruction on how to use the docker

We already configure the `Dockerfile` in order to has all the necessary packages for
compiling and running your code. You just need to follow the instruction below to see 
the results of unit tests designed to check your implementation.

## Setup
We use `docker-compose` and it's configuration file to build the image. Just execute the
following code to generate the image.

```shell script
./setup.sh
```

## Prepare your code for the running the tests
Just copy your `h1.sc` implementation into `./src` folder.

## Running the tests
Just like the build process. We already put the configuration needed for running the test
inside `docker-compose.yml`. Just execute below to see the results of the tests.

```shell script
./run.sh
```