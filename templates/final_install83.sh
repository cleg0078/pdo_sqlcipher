#!/bin/bash
#sudo checkinstall make install

cp release/pdo_sqlcipher.so /usr/lib/php/20230831/
cp release/sqlcipher /usr/bin

cp pdo_sqlcipher.ini /etc/php/8.3/mods-available/
cp pdo_sqlite.ini /etc/php/8.3/mods-available/

rm -f /etc/php/8.3/fpm/conf.d/20-pdo_sqlcipher.ini /etc/php/8.3/cli/conf.d/20-pdo_sqlcipher.ini

ln -s /etc/php/8.3/mods-available/pdo_sqlcipher.ini /etc/php/8.3/fpm/conf.d/20-pdo_sqlcipher.ini
ln -s /etc/php/8.3/mods-available/pdo_sqlcipher.ini /etc/php/8.3/cli/conf.d/20-pdo_sqlcipher.ini

