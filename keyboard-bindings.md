## Nvim

### Opening Files
`vim -O file1 file2` will open vertically
`vim -o file1 file2` will open horizontally
`vim -p file1 file2` will open each in a new tab

### Rearranging tabs
`:tab 3` (moves current tab to position 3)
`:tab2 3` (moves tab 2 to position 3)

### Normal Mode
#### Basic Navigation
| Keys | Description |
|-----------|-------------|
|h| move left|
|j|	move down|
|k| move up|
|l| move down|
|w,W| Move to start of next word, Strongly|
|e,E| Move to end of next word, Strongly|
|b,B| Move to start of previous word, Strongly|
|gg, G| move to first line, move to last line|
|$| Move to end of current line| 
|0, ^| move to start of current line, move to first non-whitespace character|
|I, A| move to start or end of line and go into insert mode|

#### Basic Editing
| Keys | Description |
|-----------|-------------|
| r,R| replaces a single character, replaces till esc |
| d,D, dd| based on next character pressed (w, deletes word), deletes from cursor on), deletes line(can be used with numbers) |
| x,X| cuts current character, cuts previous character|
| y, yy| Yanks. Used with other commands. Copies current line (including new line)|
| yiw| Copies current word|
| tc:| t goes to : and c clears til that point excluding the colon|
| p, P| paste text after cursor, before cursor|
| v, V, ctrl+v| visual mode, visual line mode, visual block mode|
| >>, <<| indent current line, deindent|

#### Advance Navigation
| Keys | Description |
|-----------|-------------|
|(,)| move to start of sentence|
|{,}| move to next paragraph|
|Ctrl+o| move to previous cusor position|
|Ctrl+i| move to next cursor position|
|Ctrl+u, Ctrl+f| move up a half page, move forward a full page|
|Ctrl+d, Ctrl+b| move back a half page, move back a full page|
|zz, zt, zb| move view to center, top and bottom of cursor|
|H, M, L| Move cursor to top, middle or low while maintaining view|

### Windowing Mode
| Keys | Description |
|------|-------------|
|ctrl+w h | move Focus Left | 
|ctrl+w l | move Focus Right |
|ctrl+w k | move Focus Up|
|ctrl+w j | move Focus Down|

|ctrl+w w | switch between apps|
|ctrl+w r | swap Forward|
|ctrl+w R | swap Backward|

|ctrl+w H | move Window Left|
|ctrl+w L | move Window Right|
|ctrl+w K | move Window Up|
|ctrl+w J | move Window Down|
|ctrl+w s | hsplit |
|ctrl+w v | vsplit |
|ctrl+w <, ctrl+w > | reduce/increase width of window |
|ctrl+w -, ctrl+w + | reduce/increase height of window |

### Tab Mode
| Keys | Description |
|------|-------------|
| gt, gT | Move to next/previous tab|
| 'X'gt | move to this 'X' tab position| 

## Vimium
### Normal Mode
| Keys| Description|
|-----| -----------|
|h| scroll left|
|l| scroll right|
|k| scroll up|
|j| scroll down|
|gg| scroll to top|
|G| scroll to bottom|
|u| move up half a page|
|d| move down half a page|
|zH, zL| scroll to left, right|

### Find Mode
| Keys| Description|
|-----| -----------|
| f, F| enter find mode (open in current tab),(open in new tab)|
|T| show and select from all open tabs|
|o, O| open and show browsing options + history and open tabs(current,new tab)|
|b,B| open bookmarked link (current, new tab)|

## Tmux
### Windowing Mode
| Keys | Description |
|------|-------------|
|ctrl+a h | move Focus Left | 
|ctrl+a l | move Focus Right |
|ctrl+a k | move Focus Up|
|ctrl+a j | move Focus Down|
|ctrl+a x| close pane|
|ctrl+a s | hsplit|
|ctrl+a v | vsplit|

|ctrl+a $ | rename session |
|ctrl+a d | detach from tmux session |
|ctrl+a c | create new window instance |

|ctrl+a , | rename window |
|ctrl+a 'X'| jump to that window|
|ctrl+a n | move to next window |
|ctrl+a p | move to previous window|
