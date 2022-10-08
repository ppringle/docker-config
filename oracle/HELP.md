# Creating an Oracle Docker image 

Oracle provides a [GitHub](https://github.com/oracle/docker-images) repository that contains configurations, images, and Dockerfiles for 
Oracle products.

Assuming that Docker is already installed, leverage the following instructions to build a Docker image for any
version of the Oracle Database.

1. Clone the Repo above. It's a huge repository, so if you have Git version **2.22** or above, the recommendation here 
   would be to use **sparse** checkout to only download the directory that contains the files for the Oracle database.
```
#1. Check if you have Git 2.22 or above, otherwise update it first
git --version

#2. Clone the empty repo
git clone --no-checkout https://github.com/oracle/docker-images oracle-docker-images

#3. Cd into the empty repo
cd oracle-docker-images

#4. Update the config file to enable sparse checkout
git config core.sparseCheckout true

#5. Initialize sparse-checkout
git sparse-checkout init --cone

#6. Checkout the Oracle database directory
git sparse-checkout set OracleDatabase/SingleInstance

#7. Pull the content from remote origin
git pull origin main

mkdir oracle-docker-images
cd oracle-docker-images
git config --global init.defaultBranch main
git init
git remote add -f origin https://github.com/oracle/docker-images
git config core.sparseCheckout true
git config pull.rebase true
git sparse-checkout init --cone
git sparse-checkout set OracleDatabase/SingleInstance
git pull origin main


```

2. Determine what version of Oracle you are interested in using, and download the corresponding Linux ZIP file from 
   the [official Oracle download page](http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html).

3. Once the file has been downloaded, move it to the directory containing the corresponding Dockerfile (do not unzip 
   it !). For e.g. if the installation file for Oracle **19.3** was downloaded, place the zipped installation file in 
   the _dockerfiles/19.3.0_ directory.
