Step Two: Get your I2P-Bote node's base64 address
-------------------------------------------------

This is the part where a person might get stuck, but fear not. While a little
hard to find instructions, this is actually easy and there are several tools and
options available to you, depending on what your circumstances are. For people
who want to help run bootstrap nodes as volunteers, the best way is to retrieve
the required information from the private key file used by the bote tunnel.

I2P-Bote stores it's destination keys in a text file which, on Debian, is
located at /var/lib/i2p/i2p-config/i2pbote/local_dest.key. In non-Debian systems
where i2p is installed by the user, the key will be in
$HOME/.i2p/i2pbote/local_dest.key, and on Windows, the file will be in
C:\\ProgramData\\i2p\\i2pbote\\local_dest.key.

### Method A: Convert the plain-text key to the base64 destination

In order to convert a plain-text key into a base64 destination, one needs to
take the key and separate only the destination part from it. In order to do this
properly, one must take the following steps:

  1. First, take the full destination and decode it from i2p's base64 character
   set into binary.
  2. Second, take bytes 386 and 387 and convert them to a single Big-Endian
   integer.
  3. Add the number you computed from the two bytes in step two to 387.
  4. Take that nummber of bytes from the front of the full destination.
  5. Convert back to a base64 representation using i2p's base64 character set.

A number of applications exist to perform these steps for you. Here are some of
them:

  * []()
  * [my application for converting keys](https://github.com/eyedeekay/keyto64)

#### Shortcut:

Since the local destination of your bote node is a DSA destination, then it's
quicker to just truncate the local_dest.key file to the first 516 bytes. To do
that easily, run this command when running I2P-Bote with I2P on Debian:

        sudo -u i2psvc head -c 516 /var/lib/i2p/i2p-config/i2pbote/local_dest.key

Or, if I2P is installed as your user:

        head -c 516 i2pbote/local_dest.key
