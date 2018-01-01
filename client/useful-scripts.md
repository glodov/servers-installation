# Useful scripts 
Working with servers from client side.

#### Table of contents
1. [Clear DNS cache](#clear-dns-cache)
2. [Retrieve NS info](#retrieve-ns-info)

## Clear DNS cache

### ![Apple](http://yaro.info/assets/brand/apple/apple-logo@24.png) Mac OSX

	sudo killall -HUP mDNSResponder

### ![Windows](http://yaro.info/assets/brand/microsoft/windows-logo@24.png) Windows

	ipconfig /flushdns

### ![Linux](http://yaro.info/assets/brand/linux/linux-logo@24.png) Linux

	/etc/init.d/nscd restart
	OR
	service nscd restart
	OR
	service nscd reload

Another way 

	sudo /etc/init.d/dnsmasq restart
	OR
	service dnsmasq restart

And one more

	sudo service network-manager restart


## Retrieve DNS info

### ![Apple](http://yaro.info/assets/brand/apple/apple-logo@24.png) Mac OSX, ![Linux](http://yaro.info/assets/brand/linux/linux-logo@24.png) Linux

	dig NS www.domain.com