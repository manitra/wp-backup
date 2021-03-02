# wp-backup
A tiny backup script for a Wordpress site : less than 20 lines ... forever ;)

# Usage

````
./backup.sh WP_FOLDER WP_DB DEST
````

The three parameters are mandatory :

- WP_FOLDER : the Wordpress base directory (eg. /var/www/example.com/htdocs/)
- WP_DB : the name of the Wordpress MySql database (eg. wp_example)
- DEST : the location were to send the backup file. This can be any location understood by the `scp` command (eg. backup.example.com:/home/backup/example.com/)

# Requirements

- run as a `root` (I know, I know ..)
