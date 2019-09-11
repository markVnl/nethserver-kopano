
#
# 30 IMAP SETTINGS
#


# Only mail folder for IMAP or all subfolders (calendar, contacts, tasks, etc. too)
#imap_only_mailfolders = yes

# Show Public folders for IMAP
#imap_public_folders = yes

# IMAP clients may use IDLE command
#imap_capability_idle = yes

# The maximum size of an email that can be uploaded to the gateway
#imap_max_messagesize = 128M

# Internally issue the expunge command to directly delete e-mail marked for deletion in IMAP.
#imap_expunge_on_delete = no

# Maximum count of allowed failed IMAP command counts per client
#imap_max_fail_commands = 10

# Some MUAs are sending commands via idle causing the connection
# to reach imap_max_fail_commands and leaves the client in a
# broken state. The clients include Apple Mail. If you experience
# problems or uses Apple Mail set this option to yes
#imap_ignore_command_idle = no