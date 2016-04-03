Davis House Chef Repo
===========

Stored here is the Chef repository that manages Davis House Cooperative's servers.

The Chef server is a Hosted Enterprise Chef solution which is free for under 5 machines.

If you're a network manager/sysadmin, welcome!

Chef uses **cookbooks**, which rely on **recipes**, to ensure that your server always gets your order (network configuration) right!

Our server, a CentOS machine in the network closet, is a Chef *client*. To update it according to the stored cookbooks, use `chef-client`.

You can use a tool called `knife` to make changes to the cookbooks stored on our remote Chef *server*.

Chef has great tutorials! Check out https://learn.chef.io to learn more about how to use Chef. 

TODO
- Find out how to 'Chefify' the FreeNAS server. Alternatively, move the FreeNAS server to a different OS
- Move UniFi Chef setup to the new chef stuffs
