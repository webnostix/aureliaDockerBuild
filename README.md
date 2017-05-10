# aureliaDockerBuild

1 clone repo
2 Create an Access Token via your Github account > settings
3 build using ``docker build --build-arg TOKEN=YOUR ACCESS TOKEN -t containerName .
4 run container by running following command ``docker run -it --name AureliaBoilerPlate -v $(pwd):/var/www/src -p 9000:9000 -p 3001:3001 containerName``
