CMD_DESCRIPTION="Starts the webserver."

athena.usage 2 "<source_directory> <port>"

# arguments are found below
source_directory="$(athena.path 1)"
port="$(athena.int 2)"

# clearing arguments from the stack
athena.pop_args 2

# specifies a non default instance name to avoid starting two webservers in the same port
athena.os.set_instance "$port"

# does not allow to start two webservers in the same port
container_name=$(athena.plugin.get_container_name)
if athena.docker.is_container_running "$container_name"; then
	athena.fatal "container '$container_name' is already up!"
fi

# options for container are found below
athena.plugin.use_external_container_as_daemon "php:7.0-apache"
athena.docker.mount_dir "$source_directory" "/var/www/html"
athena.docker.add_option "-p $port:80"
