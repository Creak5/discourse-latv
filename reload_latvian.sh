#!/bin/bash
# A simple script to reload translations from github

cd /tmp
git clone https://github.com/Creak5/discourse-latv.git
cp -rT discourse-persian/ /var/www/discourse/
cp -f discourse-persian/reload_latvian.sh /root/reload_latvian.sh
chmod +x /root/reload_latvian.sh
rm -rf discourse-latv
cd /var/www/discourse
sudo -u discourse RAILS_ENV=production bundle exec rake assets:clobber assets:precompile