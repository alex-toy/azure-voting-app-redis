# AZURE VOTING APP REDIS

The application is a Flask application, a basic voting app, consisting of a frontend web component and a backend Redis instance.

Those are the steps to manually deploy the application and its associated backend to a VMSS instance. You first need to have created an Azure VMSS.

1. Run **commands\steps.ps1**

2. Once you log in successfully in your instance, install Python and update pip. By default, it will have Python 2 installed without pip.
```
sudo apt update
sudo apt install python3.7
python3 --version
sudo -H pip3 install --upgrade pip
```

3. Install and start the Redis server. It is the backend of your application.
```
wget https://download.redis.io/releases/redis-6.2.4.tar.gz
tar xzf redis-6.2.4.tar.gz
cd redis-6.2.4
make
# Ping your Redis server to verify if it is running. It will return "PONG"
redis-cli ping
# The server will start after make. Otherwise, use
src/redis-server
```

4. Get a copy of the frontend starter code:
```
cd
git clone https://github.com/udacity/azure-voting-app-redis.git
cd azure-voting-app-redis/
git checkout Deploy_to_VMSS
```
Run pwd to make sure you are inside the 
```
/home/udacityadmin/redis-6.2.4/azure-voting-app-redis 
```
directory.

5. Install dependencies:
```
pip install -r requirements.txt
```
Finally, run the app (Navigate to the azure-vote/ folder if not already) :
```
cd azure-vote/
python3 main.py
```
