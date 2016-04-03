Davis House Chef Repo
===========

Stored here is the Chef repository that manages Davis House Cooperative's servers.

The Chef server is a Hosted Enterprise Chef solution, which is great because it's free for under 5 machines :)

Chef uses *cookbooks*, which rely on *recipes*, to ensure that your server always gets your orders(network configuration) right!

Chef uses a tool called `knife` to make changes to its cookbooks, which are stored on a remote Chef server.

Our server is a Chef *client*, not a Chef *server.* To update it according to the stored cookbooks, use `chef-client`.

Chef has great tutorials! Check out https://learn.chef.io to learn more about how to use Chef. 

TODO
- Write documentation for carrying out common tasks through Chef
- Find out how to 'Chefify' the FreeNAS server. Alternatively, move the FreeNAS server to a different OS
- Move UniFi Chef setup to the new chef stuffs

