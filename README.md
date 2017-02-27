# NX Local Server

Install and run NGINX locally with NPM.

## Installation

Production dependency:
```
npm install --save nx-local-server
```

Development dependency:
```
npm install --save-dev nx-local-server
```

You might also need to install these system packages:

```
libpcre3
libpcre3-dev
```

## Use

From the command line:
```
node_modules/.bin/nginx -p . -c [local nginx conf file]
```

From an NPM script:
```
// package.json
{
    ...
    "scripts": {
        "start": "nginx -p . -c [local nginx conf file]"
    }
    ...
}
```
