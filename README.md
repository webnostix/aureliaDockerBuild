# aureliaDockerBuild

## USAGE

1. clone repo
2. Create an Access Token via your Github account > settings
3. build using ``docker build --build-arg TOKEN=YOUR ACCESS TOKEN -t containerName .
4. run container by running following command ``docker run -it --name AureliaBoilerPlate -v $(pwd):/var/www/src -p 9000:9000 -p 3001:3001 containerName``
5. Once running, open another bash window and type ``docker ps`` to get your running container id

6. Type the following command to open a bash shell inside your running container

  ``docker exec -it CONTAINER_ID /bin/bash``

7. Type ``au run -watch`` to start the Aurelia app

8. navigate to localhost:9000 in your browser to view your app

9. Edit source code from the /src/ directory inside current directory of host and watch the changes update in the browser

Email code@webnostix.co.uk if you have any issues, happy coding!
