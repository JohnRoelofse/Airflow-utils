#!/bin/bash

# Set variables
export HOME=/home/ubuntu
export AIRFLOW_HOME=$HOME/venv/airflow

# Install (or update) python3, pip, and virtualenv
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y
sudo apt-get install virtualenv -y

# Navigate to home directory
cd $HOME

# Create virtual environment inside home directory
virtualenv -p `which python3` venv

# Create airflow directory
mkdir $AIRFLOW_HOME

# Activate virtual environment
source $HOME/venv/bin/activate

# Install airflow
pip install apache-airflow

exit

