

#
#
#  10 LDAP DIRECTORY USER PLUGIN SETTINGS
#
{
    use NethServer::SSSD; 
    my $sssd = new NethServer::SSSD();

  
    my $ldapURI = $sssd->ldapURI();
    my $bindDN = $sssd->bindDN();
    my $bindPassword = $sssd->bindPassword();
    my $baseDN = $sssd->baseDN();
    $OUT .= <<EOF

ldap_uri = $ldapURI 
ldap_bind_user = $bindDN
ldap_bind_passwd = $bindPassword
ldap_search_base = $baseDN

EOF
}
