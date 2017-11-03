from drupal:8.4

RUN apt-get update && apt-get install -y git && curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php && \
php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
composer require drupal/graphql:3.0.0-beta1 && \
composer require drush/drush && \
composer require drupal/console:~1.0 --prefer-dist --optimize-autoloader && \
composer require drupal/admin_toolbar && \
export PATH=$PATH:/var/www/html/vendor/drupal/console/bin && \
drush en admin_toolbar && \
drush en graphql
