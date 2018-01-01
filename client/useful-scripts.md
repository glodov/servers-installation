# Useful scripts 
Working with servers from client side.

#### Table of contents
1. [Clear DNS cache](#clear-dns-cache)
2. [Retrieve NS info](#retrieve-ns-info)

## Clear DNS cache

### Mac OSX
`sudo killall -HUP mDNSResponder`

### Windows
`ipconfig /flushdns`

### Linux
`/etc/init.d/nscd restart`

OR

`service nscd restart`

OR

`service nscd reload`

-

`sudo /etc/init.d/dnsmasq restart`

OR

`service dnsmasq restart`

-

`sudo service network-manager restart`


## Retrieve DNS info

### Mac OSX, Linux

`dig NS www.domain.com`