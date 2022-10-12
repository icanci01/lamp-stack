CREATE DATABASE wordpress;

CREATE USER 'wp_user'@'localhost' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_user'@'localhost';

FLUSH PRIVILEGES;

exit

