# rtpproxy-codecs
This is an umbrella project for all of the codec libraries that can be built into RTPproxy.  
It wraps them in a slashpackage-style build system.

# Debian build instructions

~~~.txt
package/debian/prepare
dpkg-buildpackage -b -uc
~~~

