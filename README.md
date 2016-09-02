# Example : Simple PHP Web Server

The purpose of this example is to show you how you can build an [Athena](https://github.com/athena-oss/athena) plugin to manage a simple PHP Web Server.

## How to install

Simple as executing the following command :

```bash
  $ ./athena plugins install webserver https://github.com/athena-oss/example-plugin-simple-php-webserver.git
```

## How to use

This plugin provides the following commands :
  * start - starts the webserver using the source_directory (htdocs folder - the entry point of the website) and the port that you specify.

  ```bash
    $ ./athena webserver <source_directory> <port>
  ```
  * stop - stops the webserver that is running on the port that you specify.

  ```bash
    $ ./athena webserver <port>
  ```

After running the start command you might want to check the current status of the server, in order to do that, run the following command :

```bash
  $ ./athena info
```

## Where should I look into to understand how this works?

You should have a look into the scripts [start_pre.sh](bin/cmd/start_pre.sh) and [stop_pre.sh](bin/cmd/stop_pre.sh), which actually do the magic, to understand what is happening there.
