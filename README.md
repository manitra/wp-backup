# wp-backup
A tiny backup script for Wordpress sites : less than **20 lines** ... forever ;)

# Usage

````
./backup.sh WP_FOLDER WP_DB DEST
````

The three parameters are mandatory :

- `WP_FOLDER`   : the Wordpress base directory (eg. /var/www/example.com/htdocs/)
- `WP_DB`       : the name of the Wordpress MySql database (eg. wp_example)
- `DEST`        : the location were to send the backup file. This can be any location understood by the `scp` command (eg. ubuntu@backup.example.com:/home/backup/example.com/)

# Requirements

- run as a `root` as any user that can connect to the local mysql database without password (I know, I know ..)
