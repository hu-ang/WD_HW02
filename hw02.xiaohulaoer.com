server {
	listen 80;
	listen [::]:80;

	root /home/angela/www/hw02.xiaohulaoer.com;

	index index.html;

	server_name hw02.xiaohulaoer.com;

	location / {
		#First attempt to serve request as file, then
		#as directory, then fall back to displaying a 404.
		try_files $uri $uri/ =404;
	}
}
