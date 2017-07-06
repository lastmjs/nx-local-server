# NX Local Server

Install and run NGINX locally with NPM.

## Installation

```
npm install nx-local-server
```

## Use

### Create local config file

Create an NGINX configuration file and save it somewhere in your project.
All file paths in your configuration file should be relative to the root directory of this project, which by default will be installed to `node_modules/nx-local-server`.

### Start NGINX server with local config

From the command line:
```
node_modules/.bin/nginx -p node_modules/nx-local-server -c ../../[local nginx conf file]
```

From an NPM script:
```
// package.json
{
    ...
    "scripts": {
        "start": "nginx -p node_modules/nx-local-server -c ../../[local nginx conf file]"
    }
    ...
}
```

### Stop NGINX Server

From the command line:
```
node_modules/.bin/nginx -p node_modules/nx-local-server -s stop
```

From an NPM script:
```
// package.json
{
    ...
    "scripts": {
        "stop": "nginx -p node_modules/nx-local-server -s stop"
    }
    ...
}
```
