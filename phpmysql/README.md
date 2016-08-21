# PHP with MySQL Docker container
Based on [PHP container](https://github.com/docker-library/php). Depends on the `php:5.6-apache` image. This image installs the requirements so PHP can call a MySQL instance to communicate with databases.
## Usage
To test the command you can enter:

    docker run --name phpmysql -p 80:80 -d silgon/phpmysql # or
    docker run --name phpmysql -v $PWD:/var/www/html -p 80:80 -d silgon/phpmysql
    
You can see the content with the command line as follows:

    curl http://localhost

Enjoy!
