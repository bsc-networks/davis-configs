Davis House Chef Repo
===========

Stored here is the Chef repository that manages Davis House Cooperative's servers.

The Chef server is a Hosted Enterprise Chef solution which is free for under 5 machines.

If you're a network manager/sysadmin, welcome!

Chef uses **cookbooks**, which rely on **recipes**, to ensure that your server always gets your order (network configuration) right!

Our server, a CentOS machine in the network closet, is a Chef *client*. To update it according to the stored cookbooks, use `chef-client`.

You can use a tool called `knife` to make changes to the cookbooks stored on our remote Chef *server*.

*******************************************************************************************************************************************

Let's say, for example, you wanted to make a change to the local Davis website. 

The files for the website are stored on our web server, which is managed by Chef, which refers to a recipe stored here, on Github.

You would want to:

* Clone the davis-configs repository
* Update the davis-website files, just like they're normal html/css/js (which they are)
* Push the change to github
* `knife upload cookbook davis-website` to update the cookbook
* ssh to our web server and `sudo chef-client`

And you're done! 

TODO
- Find out how to 'Chefify' the FreeNAS server. Alternatively, move the FreeNAS server to a different OS
- Move UniFi Chef setup to the new chef stuffs
