CMD_DESCRIPTION="Stops the webserver."

athena.usage 1 "<port>"

# arguments are found below
port="$(athena.int 1)"

# clearing arguments from the stack
athena.pop_args 1

# specifies which instance should be stopped
athena.os.set_instance $port
athena.docker.stop_container "$(athena.plugin.get_container_name)"
