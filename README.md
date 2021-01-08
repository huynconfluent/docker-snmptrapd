# snmp-trap-server
A simple snmptrapd server with authentication

## Auth information
```
user: demo_user
Authentication Encryption: MD5
Privacyt Encryption: DES
Authentication Password: topsecretpassword
Privacy Password: topsecretpassword
Engine ID: 0x8000000001020304
```

## Build this image
```
./build.sh
```

## Verify Trap Message
```
docker logs -f <container_name>
```

## Send a Trap Message to our Trap Daemon
```
docker exec <container_name> snmptrap -v 3 -l authPriv -u demo_user -a MD5 -x DES -A topsecretpassword -X topsecretpassword -e 0x8000000001020304 localhost '' 1.3.6.1.4.1.8072.2.3.0.1 1.3.6.1.4.1.8072.2.3.2.1 i 123456
```
