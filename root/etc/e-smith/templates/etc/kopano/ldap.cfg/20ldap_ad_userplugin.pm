
#
#  20 LDAP/ACTIVE DIRECTORY USER PLUGIN SETTINGS
#

{
    use NethServer::SSSD; 
    my $sssd = new NethServer::SSSD();
    
    my $ldap_emailaddress_attribute = ${'kopano-server'}{'CustomEmailField'} || 'mail';
    
    if ($sssd->isLdap) {
        $OUT .= "\!include /usr/share/kopano/ldap.openldap.ns.cfg\n\n";
    }elsif ($sssd->isAD) {
        $ldap_emailaddress_attribute = ${'kopano-server'}{'CustomEmailField'} || 'userPrincipalName';
        $OUT .= "\!include /usr/share/kopano/ldap.active-directory.ns.cfg\n\n";
    }else{
        $OUT .= "no account provider defined\n\n";
    }
    $OUT .= "ldap_emailaddress_attribute = $ldap_emailaddress_attribute\n";
}
