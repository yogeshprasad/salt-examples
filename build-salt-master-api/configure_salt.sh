if [ -f /etc/salt_config_done ]; then
	service salt-master start
	service salt-api start

else
	touch /etc/salt_config_done
	useradd admin
	echo admin:password | chpasswd
	salt-call --local tls.create_self_signed_cert
	service salt-master restart
	service salt-api restart
fi
