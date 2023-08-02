# Installation

These instructions assume you already have CKAN installed on this server in the default location described in the CKAN install documentation (/usr/lib/ckan/default). If this is the case, you should be able to run the following commands directly.

You will also need to install [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/).

Follow the [Datapusher plus configurations](https://github.com/dathere/datapusher-plus#configuring) and also set up the [database.](https://github.com/dathere/datapusher-plus#datapusher-database-setup)

## Commands

1. Get the code:
```sh
git clone https://github.com/dathere/datapusher-plus-docker.git
cd datapusher-plus-docker
```


2. Edit the `docker-compose.yaml` and replace the postgres password:
```sh
nano docker-compose.yaml
```


3. Configure your `.env` as required:
```sh
nano example.env
```

4. Configure the tests
Fork this repo https://github.com/dathere/testing-datapusher-plus
Change the default values in config.ini and add any custom tests
Configure the repo in the Dockerfile
```sh
nano Dockerfile
```

5. Run the following Docker commands:
```sh
sudo systemctl enable docker
docker compose build
docker compose up  -d
```

6. Finally,the datapusher should be running on http://datapusher:8800

# Testing
To test the Docker, you can use the following test script available on GitHub: [test script](https://github.com/dathere/testing-datapusher-plus).

