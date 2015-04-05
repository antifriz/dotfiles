" disable arrows
no <up> ddkP
no <down> ddp
no <left> <Nop>
no <right> <Nop>

ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

vno <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>

" auto-center after some commands
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz 
nmap ] ]zz
nmap ) )zz

" abbreviations
iabbr @author Ivan Jurin
iabbr @email nirujnavi@gmail.com

" quik pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>( ()<ESC>i

" typo corrections
imap flase false
imap ture true
