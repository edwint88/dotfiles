# Shortcuts & Cheatsheet

## Comands (C + :)

__C = Ctrl + a__

- custom pane -> split-window -v -p 10 -t window
- new window -> new-window -n window
- select pane -> select-pane -t 1
- resize-pane -D 20 (-D=down -U=up -L=left -R=right -t=pane)
- synchronize panes toggle -> :setw synchronize-panes
- list shortcuts -> C + ?
- CLI first line -> C + a <-> Ctrl + e (end of line)

## Panes

- break pane -> C + !
- split vertical -> C + "
- split horizontal -> C + %
- next pane -> C + C
- last pane -> C + ;
- swap pane -> C + o
- show pane #n -> C + q
- kill pane -> C + x
- toggle zoom -> C + z
- vim pane move -> C + hjkl
- toggle layouts -> C + space

## Window

- show windows -> C + w
- find window -> C + f
- select window (from index) -> C + \'
- create windows -> C + c
- next window -> C + n
- previous window -> C + p
- #n window -> C + #n
- rename window -> C + ,
- kill window -> C + &
- clock -> C + t

## Session

- detach -> C + d
- rename session -> C + $
- choose session -> C + s

## Copy Mode

- enter copy mode -> C + \[
- navigate -> arrows
- space -> start selection
- finish copy mode -> enter 
- paste selection -> C + \]

- choose buffer -> C + =
- delete buffer -> C + -

## Config

- reload config -> C + r
