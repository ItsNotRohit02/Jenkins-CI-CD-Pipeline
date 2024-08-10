FROM nginx
LABEL "Project"="Jenkins-CI-CD"
LABEL "Author"="Rohit"

RUN rm -rf /etc/nginx/conf.d/default.conf
COPY nginvproapp.conf /etc/nginx/conf.d/vproapp.conf