#! /bin/bash

cd /tmp/
svn co https://svn.php.net/repository/phpdoc/modules/doc-en phpdoc

cd phpdoc/
php doc-base/configure.php

cd doc-base/
phd -f manpage -P PHP -d .manual.xml

cd /tmp/phpdoc/doc-base/output/
cp -a ./php-functions/ /pman/
