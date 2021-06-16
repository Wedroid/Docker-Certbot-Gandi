### Usage

First create your gandi.ini credentials file like this :

```ini
# live dns v5 api key
dns_gandi_api_key=APIKEY
```

Next launch the container and call your credentials file in the docker volumes and in the certbot command options

```shell
docker run -it --rm --name certbot \
  -v "$(pwd)/data/etc/letsencrypt:/etc/letsencrypt" -v "$(pwd)/var/lib/letsencrypt:/var/lib/letsencrypt" -v "$(pwd)/$PATH_TO_GANDI_CONFIGURATION:/certbot/gandi.ini
   certonly --agree-tos --email admin@mail.com --dry-run \
  --authenticator dns-gandi --dns-gandi-credentials /certbot/gandi.ini \
  -d test.domain.com -d \*.test.domain.com
```
