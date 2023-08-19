From nginx
copy . /usr/share/nginx/html
Add /home/ubuntu/website
docker build -t mywebiste .
docker run -d -p 8085:80 --name=website mywebsite
