#override the default override.  I used deface to remove the li that this override depended on.
# original override location: spree_auth-0.70.3/app/overrides/auth_shared_login_bar.rb

# Depending on order of execution, an li can appear in the nav bar ul.  this override removes that li if it is there
Deface::Override.new(:virtual_path => "shared/_nav_bar",
                     :name => "auth_shared_login_bar",
                     :insert_top => "li#link-to-cart[data-hook]",
                     :partial => "shared/login_bar",
                     :disabled => false)

# this is the override we want to stick
Deface::Override.new(:virtual_path => "layouts/spree_application",
                     :name => "auth_shared_login_bar",
                     :insert_top => "ul#nav-bar[data-hook]",
                     :partial => "shared/login_bar",
                     :disabled => false)
