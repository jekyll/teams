LE_DOMAIN=teams.jekyllrb.com

renew-cert:
	sudo certbot certonly --manual -d $(LE_DOMAIN)
	sudo heroku certs:update /etc/letsencrypt/live/$(LE_DOMAIN)/fullchain.pem /etc/letsencrypt/live/$(LE_DOMAIN)/privkey.pem
