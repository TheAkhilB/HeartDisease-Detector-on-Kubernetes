## Heart-Disease-Prediction 

### Overview

A simple web application which uses Machine Learning algorithm to predict the heart condition of a person by providing some inputs about the person health like age, gender, blood pressure, cholesterol level etc built using `Flask` and deployed on `Kubernetes`.

### Motivation 

As being a Data and ML enthusiast I have tried many different projects related to the subject but what I have realised is that Deploying your machine learning model is a key aspect of every ML and Data science project. Everything thing I had studied or been taught so far in my Data science and ML journey had mostly focused on defining problem statement followed by Data collection and preparation, model building and evaluation process which is of course important for every ML/DS project but what if I want different people to interact with my models, how can I make my model available for end-users? I can't send them jupyter notebooks right!. That's why I wanted to try my hands on complete end-to-end machine learning project. 


- To get the Code for Exploratory data analysis/visualisations, different algorithms used and the model evaluation,
  **Link of jupyter notebook -** *[https://github.com/TheAkhilB/ML/blob/main/Heart_Disease_Prediction.ipynb] (Heart_Disease_Prediction.ipynb)*
 
 
 ### Technical Aspect
 
 This Project is mainly divided into two parts:
 
 1. Exploring the dataset and traning the model using `Sklearn`.
 2. Building and hosting a `flask` web app on `Kubernetes`.

**About the repository Structure :**

- Project consist `app.py` script which is used to run the application and is engine of this app. contians API that gets input from the user and computes a predicted value based on the model.
- `prediction.py` contains code to build and train a Machine learning model.
- *templates* folder contains two files `main.html` and `result.html` which describe the structure of the app and the way this web application behaves. These files are connected with Python via Flask framework.  
- *static* folder contains file `style.css` which adds some styling and enhance the look of the application. 

### Pre-requisites
- Docker installed and a working Kubernetes cluster.

### Installation

The Code is written in Python 3.8. If you don't have Python installed you can find it [here](https://www.python.org/downloads/). If you are using a lower version of Python you can upgrade using the pip package, ensuring you have the latest version of pip. To install the required packages and libraries, run this command in the project directory after cloning the repository:

```
pip install -r requirements.txt 
```

*To clone the repository*

```
git clone https://github.com/TheAkhilB/ML.git
```

### Run 

*To Run the Application*

```
python /HeartPrediction_AKhil/app.py
```

*For deploying in Kubernetes*

-Create a docker image

```
sudo docker build -t mlproject:v1 .
```
-Use the docker image to create a deployment and service for kubernetes
-Create a namespace for our deployment

```
sudo kubectl apply -f /kuber/namespace.yaml
```
-Create a deployment and service using the commands

```
sudo kubectl apply -f /kuber/deployment.yaml
```

```
sudo kubectl apply -f /kuber/service.yaml
```

*Now check the service running on the port with*

```
sudo kubectl get services -n mlops
```


### Technologies used 

[![forthebadge made-with-python](http://ForTheBadge.com/images/badges/made-with-python.svg)](https://www.python.org/)  


[![Flask](https://github.com/jalbertsr/logo-badge-images/blob/master/img/rsz_flask.png?raw=true)](http://flask.pocoo.org/)  

[![Docker](https://i.imgur.com/VyjCJuz.png)](https://www.docker.com/)

[![Kubernetes](https://github.com/cncf/artwork/blob/master/projects/kubernetes/horizontal/white/kubernetes-horizontal-white.png)](https://kubernetes.io/)

### Future work 

- improve model performance.
- Add more better styling to the user interface.







  
  
  


