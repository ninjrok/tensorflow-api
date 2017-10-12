# tensorflow-api
Docker container with tensorflow/tensorflow:nightly-gpu-py3 and various 
<a href="https://github.com/tensorflow/models">models</a>.<br/>
Dependencies: <a href="https://www.docker.com/">Docker</a>,
<a href="https://www.tensorflow.org/install/install_linux">
NVIDIA requirements to run TensorFlow with GPU support</a><br/>
Default mode: <a href="http://jupyter.org/index.html">Jupyter Notebook</a>
## Building the container
To build the container, change directory to
<a href="https://github.com/ninjrok/tensorflow-api">tensorflow-api</a> and run the following command.
```
nvidia-docker build -t tensorflow-api .
```
## Running the container
Default mode runs jupyter notebook and tensorboard on port 6006. Set the "PASSWORD" env variable 
for jupyter notebook.
```
nvidia-docker run -p 8888:8888 -p 6006:6006 -e PASSWORD="passwd123" tensorflow-api
```
Optional environment variable: JUPYTER_PORT. The following command will run jupyter notebook on port 8998.
```
nvidia-docker run -p 8998:8998 -p 6006:6006 -e PASSWORD="passwd123" -e JUPYTER_PORT=8998 tensorflow-api
```
## Verify your installation
Try running the notebook at 
<a href="http://localhost:8888/notebooks/models/research/object_detection/object_detection_tutorial.ipynb">
models/research/object_detection/object_detection_tutorial.ipynb</a>.<br/>
You should see the following output.<br/>
![png](images/verified_install.png)