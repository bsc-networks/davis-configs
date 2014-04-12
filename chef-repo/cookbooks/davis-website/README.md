davis-website Cookbook
======================
A very simple cookbook that places Davis House website into the default document root in CentOS for httpd, /var/www/html.  This cookbook's main purpose is to serve as a means to backing up the Davis House website and testing it (ideally on a VM or something) before deploying it.  Also, it allows for backing up if something goes wrong.


Requirements
------------
#### OS
 - CentOS

#### Cookbooks
 - Apache

Apache isn't strictly required, but this coookbook is pretty useless without it

Attributes
----------
None at the moment.

Usage
-----
Add davis-website::default to the run list.

To-Do
-----
Templatize some of the files for easy replacing when managers are cycled.

License and Authors
-------------------
Written and authored by Nicholas Herson
