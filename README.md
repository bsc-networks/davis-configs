Davis House Router Configuration
===========

Stored here are some config files for the Davis House server.  

The Davis House configurations have now been converted to Chef management.  Inside the chef-repo directory is a full chef repository containing configs to get the router running CentOS configured, as well as the server running the UniFi controller configured properly.

TODO: 

* Clean out the chef repository, deleting unnecessary cruft and rearranging files in a more logical way
* Add data bags for DHCP hosts for UniFi access points, UniFi controller, FreeNAS file server, and (optionally) public Windows hosts around the house.

