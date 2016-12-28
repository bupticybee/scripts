from docker.client import Client
from docker.utils import kwargs_from_env

# mac
"""
kwargs = kwargs_from_env()
kwargs['tls'].assert_hostname = False

cli = Client(**kwargs)
"""

cli = Client(base_url='unix:///var/run/weave/weave.sock')

#cli = Client(base_url='unix:///var/run/docker.sock')

host_config=cli.create_host_config(port_bindings={
        80: 80,
})

container = cli.create_container(image='ubuntu:latest',command='/bin/sleep 30',host_config=host_config)
result = cli.start(container=container.get('Id'))
print result

id = container['Id']

print(container)

#container = cli.create_container(container) 
print 'dockerid',container['Id']
