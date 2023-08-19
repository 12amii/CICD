From nginx
RUN install jdk-8u221-oth-JPR
copy . /usr/share/nginx/html
WORKDIR website
docker build -t mywebsite .
docker run -d -p 8090:80 --name=oswebsite mywebsite
CMD ["sleep","50"]
