default['my_cookbook']['greeting'] = "Ohai, Chefs!"
default['my_cookbook']['message'] = "#{node['my_cookbook']['hi']} #{node['my_cookbook']['world']}!" 
default['my_cookbook']['version'] = '1.2.3'
default['my_cookbook']['callback']['url'] = 'http://www.chef.io'
default['my_cookbook']['callback']['enable'] = true
