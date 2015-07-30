#!/bin/bash
if [ ! -z "$JABBER_USERNAME" ];
then
  echo "Settings $JABBER_USERNAME"
else
  echo "ENV variable $JABBER_USERNAME is undefined"
  exit 1
fi

if [ ! -z "$JABBER_SERVER" ];
then
  echo "Settings $JABBER_SERVER"
else
  echo "ENV variable $JABBER_SERVER is undefined"
  exit 1
fi

echo "Generating mcabber_${JABBER_SERVER}_config"
cp /home/mcabber_client/.mcabber/mcabberrc.example /home/mcabber_client/.mcabber/mcabber_${JABBER_SERVER}_config

sed -i -e "s/#JABBER_USERNAME#/${JABBER_USERNAME}/g;s/#JABBER_SERVER#/${JABBER_SERVER}/g" /home/mcabber_client/.mcabber/mcabber_${JABBER_SERVER}_config
