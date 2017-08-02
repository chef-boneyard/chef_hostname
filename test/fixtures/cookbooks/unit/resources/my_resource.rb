provides :my_resource
resource_name :my_resource

default_action :doit

action :doit do
  hostname 'foobar.example.com'
end
