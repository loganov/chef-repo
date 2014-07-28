#
# Cookbook Name:: loganov-user
# Recipe:: default
#
# Copyright 2014, Loganov Industries
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'user'

user_account 'gweaver' do
  action [:create, :modify]
  comment 'Gregory Weaver'
  ssh_keys ['ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDWpnP1ycaWA9Ha9ygcojGONHLpBCIaqOnCD562Dg0SLZ0v/eIaxsLttAbj5O087EMnU2JzjrKoVl9Bwn1Q21H0RVCTvzS9L5ofr3kNGYixZ9XpWfiEKO7OHx3wCFveOiNYqXQW0bQEWrgjZtnCrKwn+vcNqp6NDCnPjUKyeT8ClbcVCUGiOEBGo58J7A3i7ggEBmaUdcfcx8ecyxQjz2sv8fTE8DXnY3/2+HUVruHh7JfFBiwXtTpwYylitFcQd4Iz6n+QYSNrlgVknk6R9zx8DTMqYixX5DuyDRLjG50TJztnfS/cCcox4iontgHgVBzbve6x9Vv9c5m13n7XLybN gregory.weaver@gmail.com']
  home '/home/gweaver'
end

user_account 'jreed' do
  action [:create, :modify]
  comment 'Jay Reed'
  ssh_keys ['ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAxu8i7mjGyJvKgpACTNjDKfAMt8IxpUYIvg1viE7GyaZbO2RROjEKuPKk3FC0VCGpxgWh7/Gs5R8d0F/BoegwnMtHjH5ahPlBdy98QsamEXVxMdPFMx3QJSWxYQmxmgQnHlLlsDN06+wisLUgR7Ut2NRAA2E2ISHcR3koCj6J9oat0F0w/pml9/nTbN+KmVg58EuIeb8JvUmhGFXihTSyYSw3fcO0TiYdRRb/zsDeiFQLig72862rqrWAXzIIcF9IoLRJt2FPXgHhXaoKHvInPd+ZvsUhP/uBRrUUXixsmo51a1q6MKQztrK4AhqH+z+Az4EgAzyUcpMEWoRG7LKaKQ== johngreedjr@gmail.com']
  home '/home/jreed'
end

include_recipe 'loganov-user::groups'