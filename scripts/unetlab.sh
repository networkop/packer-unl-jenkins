#!/bin/bash
# Install UNL
curl -s http://www.unetlab.com/install.sh | bash

# boot unl kernel
sed -i 's/GRUB_DEFAULT=0/GRUB_DEFAULT="1>2"/' /etc/default/grub
update-grub