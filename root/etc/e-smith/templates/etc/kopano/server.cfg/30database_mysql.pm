
#
# 30 DATABASE StORE SETTINGS FOR MYSQL
#

mysql_host = localhost
mysql_port = 3306
{
    use NethServer::Password;
     my $mysql_password = NethServer::Password::store('kopano');

    $OUT .= qq (
mysql_user = kopano
mysql_password = $mysql_password
mysql_database = kopano
);
}
