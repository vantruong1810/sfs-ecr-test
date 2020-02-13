#!/bin/bash
set -e
echo "Start service nginx"
service nginx start
echo "Start php7.3-fpm"
service php7.3-fpm start
echo "Done!!!"
#Extra line added in the script to run all command line arguments
exec "/bin/bash"