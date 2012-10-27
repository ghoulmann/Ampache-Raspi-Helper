As long-time Ampache-fanfolk, we wanted to test audio streaming with Ampache and the Raspberry Pi. Pleased to see others gave it consideration [see here]. There are successful ampache clients for Android, iOS, and Blackberry (also Viridian (Python) and a Ruby command-line client. What does this mean to you? Manage your firewall appropriately and you can access your music anywhere.

Well, fantastic: Ampache streams just as it should (tested on the newer 512MB model). Creating a catalog (mysql doing it’s thing behind the scenes) doesn’t go so very quickly. But we had absolutely no problem streaming Melvins while populating the database. Very good sign. No stutter, wow, or flutter.

Things you need to know:

    -It’s assumed you are using Raspian/Raspbian
    -You should expand partition on your SD card using sudo raspi-config.
    -Ampache handles video streaming to some extent (it’s not their priority). I haven’t tested video - just audio (Melvins, specifically).
    -If you’re audio library is tremendous, you’ll want to work out a storage solution for your Rapi beyond the SD card (tested audio stored with Raspian on an 8GB sd card).
    -Docs: See documentation at http://ampache.org

I can’t preseed answer to the configuration questions for others, so have ready: a password for the ampache admin user; a password for mysql’s root account; a username and password for the mysql user for ampache. After you run the script, navigate to your IP/ampache to finish configuration.

Run with sudo.

What it does:
  -checks to be sure it's run as if from root
  
  -sets hostname to "ampache"
  
  -updates repo stuff
  
  -installs from repos: mysql-server, ampache, ampache-themes
  
  -Changes a setting in /etc/php5/apache2/php.ini

Suggestions welcome.