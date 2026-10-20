# Launch app
To launch the API container with automatic rebuild : docker compose up --watch

Simply launch the container : docker build -t nginx . && docker run -d -p 8080:80 nginx