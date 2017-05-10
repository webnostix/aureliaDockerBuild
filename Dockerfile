
FROM node:6.1.0
MAINTAINER	Webnostix code@webnostix.co.uk

RUN npm install -g jspm
RUN apt-get -y install git
RUN npm install aurelia-cli -g
RUN npm install gulp-cli -g
RUN jspm config registries.github.auth [YOUR GITHUB TOKEN]
RUN jspm install -y

# Setup the script to run on startup
COPY . /var/www/
#RUN ln -s /source /var/www/src/
#RUN chmod u+x /var/www/script.sh
VOLUME ["/var/www/src"]
EXPOSE 9000 3001
WORKDIR /var/www/
#CMD npm install -y && au run —watch
RUN echo 'npm install -y && gulp' >> /startup.sh
CMD ["sh", "/startup.sh"]
