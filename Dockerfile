



### STAGE 2: Run ###
FROM nginx
#COPY nginx.conf /etc/nginx/nginx.conf
COPY dist/web-application-angular /usr/share/nginx/html
