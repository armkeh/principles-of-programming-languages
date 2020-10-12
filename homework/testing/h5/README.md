# Instructions for automated testing using Docker

We have already created a `Dockerfile` here which specifies
all the necessary packages, etc., for compiling and running your code.
You only need to follow the instructions below to see 
the results of unit tests designed to check your implementation.

## Setup
We use `docker-compose` and its configuration file to build the image.
Assuming you have `docker` and `docker-compose` installed,
simply execute
```shell script
./setup.sh
```
to generate the image.

## Prepare your code for the running the tests
You only need to place the `h5t.rb` unit test file and
the `run.sh` file in the same directory as your `h5.rb` source file.

## Running the tests
As with the build process, we have already put
the configuration needed for running the test inside `docker-compose.yml`.
Simply execute
```shell script
./run.sh
```
to run and see the results of the tests.
