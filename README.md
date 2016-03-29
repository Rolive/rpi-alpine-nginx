# Nginx Docker image for armhf devices


Docker image to run Nginx on arm devices, built on a Raspberry Pi 3.  
Base on alpine linux for a minimal image, perfect sized for Raspberry Pi.

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

# Customizing configurations

