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

There should be a data bag named 'davis-website' and an item named 'passwords'. This JSON will contain 3 mappings: 

```
"nyt": "NYT_PASSWORD",
"netflix": "NETFLIX_PASSWORD",
"hulu": "HULU_PASSWORD",
```

This item is encrypted and the key should be transfered when changing Network Managers.  If this transfer of keys does not happen, you will need to reconstruct the JSON using a new encryption key.

See this documentation: http://docs.opscode.com/essentials_data_bags.html#encrypt-a-data-bag-item

Usage
-----
Add davis-website::default to the run list.

To-Do
-----
Templatize some of the files for easy replacing when managers are cycled.

License and Authors
-------------------
Written and authored by Nicholas Herson
