# docker-mcabber

=======
You have to create a configuration file for mcabber

*~/.mcabberrc*

```
set jid = user@jabber.example.com
set server = jabber.example.com

set ignore_self_presence = 1
set tls = 1
set ssl_ignore_checks = 1
set lang = fr
set spell_enable = 1
set spell_lang = fr_FR
set spell_encoding = UTF-8
set cmdhistory_lines = 250
set roster_display_filter = ofdna
set max_history_blocks = 8
set message_autoaway = Auto-away (idle)
set escdelay = 50

alias me = say /me
alias online   = status online
alias away     = status away
alias dnd      = status dnd
alias notavail = status notavail

bind 17 = roster unread_next
bind 24 = roster alternate
bind 269 = roster toggle_offline
bind 276 = roster toggle
bind 521 = buffer up
bind 514 = buffer down

```

and run mcabber

```
bash~ mcabber
```
