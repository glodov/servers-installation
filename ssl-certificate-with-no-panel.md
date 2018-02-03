# Set up SSL certificate on server with no panel

## Problems might be occured on the Product side

1. www and non-www SSL certificates __exists__
2. be sure to buy and generate the SSL certificate for domain which will be used
3. link to service where it is bought __MUST__ be provided
4. link to name / type of certificate which bought __MUST__ be provided _(because different types of certificates have different types of generation)_


## Server side set-up

* Check SSL mode is installed and enabled on [Apache](https://httpd.apache.org/docs/current/mod/mod_ssl.html) or [Nginx](http://nginx.org/en/docs/http/ngx_http_ssl_module.html) or other server you use.
* Add into configuration file support for SSL v2, v3
* Create SSL configuration file for website
* Define paths for 
	* certificate;
	* key;
	* CA certificate;

#### Check if it works with your website.


## Configuration example
Here is apache configuration example.

```
<IfModule mod_ssl.c>
 <VirtualHost 0.0.0.0:443>
     ServerAdmin your-admin@gmail.com
     ServerName your-server.name.com
     ServerAlias your-mydomain-alias.com

     <Directory "/home/user/website">
        Options FollowSymLinks
        AllowOverride All

        Require all granted
     </Directory>

     DocumentRoot /home/user/website/public_html/
     ErrorLog /home/user/website/error.log
     CustomLog /home/user/website/access.log combined

     SSLProtocol all -SSLv2 -SSLv3
     SSLEngine on
     SSLCertificateFile /etc/apache2/ssl/www/domain.com.crt
     SSLCertificateKeyFile /etc/apache2/ssl/www/domain.com.key
     SSLCertificateChainFile /etc/apache2/ssl/www/domain.com.ca.crt
 </VirtualHost>
</IfModule>
```