# list of tools we depend on and must install if they're missing
RPMTOOLS= /usr/bin/rpmbuild

# convenience target for "make rpm".
rpm: strict-base-policy.noarch.rpm

strict-base-policy.noarch.rpm: $(RPMTOOLS)
	rpmbuild -bb selinux-policy-refpolicy.spec

/usr/bin/rpmbuild:
	sudo yum -y install rpm-build
