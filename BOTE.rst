=========================================================================
{% trans -%}How to volunteer by helping I2P-Bote bootstrap{%- endtrans %}
=========================================================================

.. meta::
    :author: idk
    :date: 2019-05-20
    :excerpt: {% trans %}Help Bootstrap I2P-Bote!{% endtrans %}

{% trans -%}
An easy way to help people message eachother privately is to run an
I2P-Bote peer which can be used by new bote users to bootstrap their own
I2P-Bote peers. Unfortunately, until now, the process of setting up an
I2P-Bote bootstrap peer has been much more obscure than it should be.
It's actually extremely simple!
{%- endtrans %}

{% trans -%}
::

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

{%- endtrans %}

**{%- trans %}Step One: Install I2P-Bote{%- endtrans %}**

{%- trans %}

I2P-Bote is an i2p plugin, and installing it is very easy. The original
instructions are available at the `bote eepSite,
bote.i2p <http://bote.i2p/install/>`__, but if you want to read them on
the clearnet, these instructions come courtesy of bote.i2p:

{%- endtrans %}

{%- trans %}

1. Go to the plugin install form in your routerconsole:
   http://127.0.0.1:7657/configclients#plugin
2. Paste in the URL http://bote.i2p/i2pbote.su3
3. Click Install Plugin.
4. Once installed, click SecureMail in the routerconsole sidebar or
   homepage, or go to http://127.0.0.1:7657/i2pbote/

{%- endtrans %}
