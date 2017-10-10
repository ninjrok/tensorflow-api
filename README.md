# tensorflow-api
Docker container with tensorflow/tensorflow:nightly-gpu-py3 and various 
<a href="https://github.com/tensorflow/models">models</a>.<br/>
Default mode: <a href="http://jupyter.org/index.html">Jupyter Notebook</a>
## Building the container
To build the container, change directory to
<a href="https://github.com/ninjrok/tensorflow-api">tensorflow-api</a> and run the following command.
```
docker build -t tensorflow-api .
```
## Running the container
```
docker run -p 6006:6006 tensorflow-api
```
