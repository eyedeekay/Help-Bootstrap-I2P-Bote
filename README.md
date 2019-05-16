
How to volunteer by helping I2P-Bote bootstrap
==============================================

An easy way to help people message eachother privately is to run an I2P-Bote
peer which can be used by new bote to bootstrap their own I2P-Bote peers.
Unfortunately, until now, the process of setting up an I2P-Bote bootstrap peer
has been much more obscure than it should be. It's actually extremely simple!

        What is I2P-bote?
           I2P-bote is a private messaging system built on i2p, which has additional
           features to make it even more difficult to discern information about the
           messages that are transmitted. Because of this, it can be used to transmit
           private messages securely while tolerating high latency and not relying on
           a centralized relay to send messages when the sender goes offline. This is
           in contrast to almost every other popular private messaging system, which
           either require both parties to be online or rely on a semi-trusted service
           which transmits messages on behalf of senders who go offline.

           or, ELI5: It's used similarly to e-mail, but it suffers from none of e-mail's
           privacy defects.

Step One: Install I2P-Bote
--------------------------

I2P-Bote is an i2p plugin, and installing it is very easy. The original
instructions are available at the [bote eepSite, bote.i2p](http://bote.i2p/install/),
but if you want to read them on the clearnet, these instructions come courtesy
of bote.i2p:


 1. Go to the plugin install form in your routerconsole: http://127.0.0.1:7657/configclients#plugin
 2. Paste in the URL http://bote.i2p/i2pbote.su3
 3. Click Install Plugin.
 4. Once installed, click SecureMail in the routerconsole sidebar or homepage, or go to http://127.0.0.1:7657/i2pbote/

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

Step Three: Contact Us!
=======================

###

##### is this... centralization?

Not if you get involved! In the past, the bootstrap nodes have all been run by
people who are involved in the development of I2P-bote, but over time that
number has dwindled and as a result, so has the number and availability of
bootstrap nodes. Right now, the process is unfortunately centralized around a
couple of people. You can help fix that, by running an I2P-Bote bootstrap node
as a service to other users of the network.
