From nginx
copy . /usr/share/nginx/html
WORKDIR website
docker build -t mywebsite .
docker run -d -p 8090:80 --name=oswebsite mywebsite
CMD ["sleep","50"]
