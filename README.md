![Docker logo](https://upload.wikimedia.org/wikipedia/commons/7/79/Docker_(container_engine)_logo.png "Docker Logo")


# Nginx Docker image for armhf devices

This is a Docker image used to run Nginx on arm devices, built on a Raspberry Pi 3.  
Based on alpine linux for a minimal and clean image.

# Getting the image

It's available onf the Docker Registry :


```
docker pull drakerin/alpine-nginx_armhf
```

# Using the image (default configuration)

To start Nginx with the default settings : 

```
docker run -p 80:80 drakerin/alpine-nginx_armhf
```

It starts Nginx with a default server redirecting to an index showing **"It Works"**.

# Customizing configuration

In order to provide your own configuration / virtual server(s) files, you will need to create a directory to share with the containers volume, e.g.:

```
mkdir /srv/nginx
```

(According to the FHS, /srv/ contains data for the **s**e**rv**ices provided by the system)

If you only want to override the default nginx configuration, you can place the **nginx.conf** file in the newly created directory.
If you want to add virtual servers, you first need to create a conf.d directory inside the first one, e.g.:
```
mkdir /srv/nginx/conf.d
```
Then you can place your configuration files in there.
You can also add your websites files by creating a /var/www directory and placing your files there.

```
mkdir -P /srv/nginx/var/www
```
