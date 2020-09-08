FROM httpd:2.4

ARG version=v3.13.0
WORKDIR /usr/local/apache2
ENV apacheDir=/usr/local/apache2
ENV project=$apacheDir/htdocs/swagger-editor/

COPY ./index.html $project/index.html
ADD ./$version/dist/*.js  $project/dist/
ADD ./$version/dist/*.map $project/dist/
ADD ./$version/dist/*.css $project/dist/
ADD ./$version/dist/*.png $project/dist/
#ADD ./$version/docker-run.sh /usr/share/nginx/

COPY ./httpd.conf $apacheDir/conf/httpd.conf