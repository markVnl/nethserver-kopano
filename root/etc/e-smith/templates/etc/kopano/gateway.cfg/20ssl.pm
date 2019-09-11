
#
#  20 SSL SETTINGS
#

# TODO :
#  - use DB-TLS prop, see: 
# https://github.com/NethServer/nethserver-httpd-admin/commit/fecfa73e283fa1c93ba2bed5efd3c29e08c57498

disable_plaintext_auth = yes
ssl_certificate_file = /etc/pki/kopano/certs/kopano.crt
ssl_private_key_file = /etc/pki/kopano/private/kopano.key

ssl_protocols = !SSLv2 !SSLv3 !TLSv1 !TLSv1.1 TLSv1.2
ssl_ciphers = EDH+aRSA+AES256:EECDH+aRSA+AES256:ECDHE-ECDSA-AES256-GCM-SHA384:+ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-ECDSA-AES128-GCM-SHA256:+ECDHE-ECDSA-AES256-SHA384:ECDHE-ECDSA-AES128-SHA256
ssl_prefer_server_ciphers = yes