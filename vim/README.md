$ - go to end line\
^ or 0 or g0 - go to first char of the line\
N | - go to N column\
N h or j or k or  l - go N in direction\
N f{char} - go to the Nth char to the right 
	(similar with t - goes to start of the word)\
N F{char} - go to the Nth char to the left (similar with T)\
N ; - repeat last f, F, t T N times to right | N , - repeats to left\
N - - goes up N lines\
N + - goes down N lines\
N % - go to line N % in the file\
N w or b or e or ge - go N words with the cursor\
N ) ( - move N sentences \<- or ->\
N } { - move N paragraphs \<- or ->

N . - repeats the last N commands\
i - insert mode\
o - open new line in insert mode\
O - open new line above in insert mode\
a - append after cursor in insert mode\
A - append at the end\
r - replace one char\
R - replace until ESC\
y - yank\
yy - yank a line\
yw - yank a word\
p - put (paste)

G - go to last line\ 
gg - go to first line\
type number + G - go to specific line\
type number + ENTER - go down number times

{n}w - move to word\
{n}e - move to end of word\
d (w e $ h j k l) - delete motion

d + # - delete until next word same as cursor\
u - undo

Ctrl + G - print cursor location\
Ctrl + R - redo\
Ctrl + T - go back\
Ctrl + O - repeat to go further back\
N Ctrl + D - go downwards N lines (1/2 window as def)\
N Ctrl + U - go upwards N lines\
N Ctrl + F vs N Ctrl + B - go downwards vs upwards\
Ctrl W + Ctrl W - to jump to another window

% ({\[ - find next one)}\]\
:s/old/new/g - substitute (g - all in line)

:! - type an external command\
:v - visual mode (press v 10 enter : w Name enter -> select 10 lines 
	and save them in Name file)\
:r file|output - inserts the text at cursor location

:help | F1 | :help cmd\
:e + Ctrl+D to autocomplete + Tab to select one possibility

:set {option}x - x can be ? (show value) or & (reset to default)\
:set x{option} - x can be no or inv (inverse the option)\
:set ic -ignore cases | :set noic\
:set his - highlight search | :set nohls\
:set is - incsearch set partial matches for search phrase 
	(better :set his is) | :set nois\
:set number - shows numbers\
:set mouse=a -enable mouse

# Plugins
(remaped leader from \\ to ,)

, + k - toggle nerdtree\
, + y - find file in tree\
, + , or :w - save\

ctrl + p - fuzzy search

# SO subjects
https://stackoverflow.com/questions/46216382/comparing-files-with-itself-in-vim-or-any-other-method/46217823#46217823
