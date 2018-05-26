
docker build -t phoenix .

docker run -it --name phoenix -p 8080:8080 -v `pwd`:/phoenix:Z phoenix:latest

nginx -p `pwd`/ -c conf/nginx.conf