From nginx
copy . /usr/share/nginx/html
WORKDIR website
docker build -t mywebsite .
docker run -d -p 8085:80 --name=app-website mywebsite
CMD sleep
