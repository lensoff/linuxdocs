#open file
vi filename

#quit vi with save
:x
#quit without saving
:q!

:w 			write current contents to file named in original vi call 
:w newfile 	write current contents to a new file named newfile 

#Moving the Cursor
j [or down-arrow]
k [or up-arrow]
h [or left-arrow]
l [or right-arrow]

0  	move cursor to start of current line (the one with the cursor)
$ 	move cursor to end of current line
w 	move cursor to beginning of next word
b 	move cursor back to beginning of preceding word

gg			start of the file
shift+G 	end of the file

u 	UNDO WHATEVER YOU JUST DID

dd 	delete entire current line
dG	delete from cursor to the end of the file

#Searching Text
/string 	search forward for occurrence of string in text
?string 	search backward for occurrence of string in text
n 			move to next occurrence of search string
N 			move to next occurrence of search string in opposite direction

#Cutting and Pasting Text
v			visual mode to mark text
d			to cut text
y			to copy text

yy			copy (yank, cut) the current line into the buffer
Nyy or yNy 	copy (yank, cut) the next N lines, including the current line, into the buffer
p			put (paste) the line(s) in the buffer into the text after the current line

#https://www.cs.colostate.edu/helpdocs/vi.html

#How To Comment Out Multiple Lines At Once
	Use Rectangular Visual selection.
    select the first caracter of your block
    press Ctrl+V ( this is rectangular visual selection mode)
    type j for each line more you want to be commented
    type Shift-i (like I for "insert at start")
    type // (or # or " or ...)
    you will see the modification appearing only on the first line
    IMPORTANT LAST STEP: type Esc key, and there you see the added character appear on all lines

#To cut-and-paste or copy-and-paste:

    Position the cursor at the beginning of the text you want to cut/copy.
    Press v to begin character-based visual selection, or V to select whole lines, or Ctrl-v or Ctrl-q to select a block.
    Move the cursor to the end of the text to be cut/copied. While selecting text, you can perform searches and other advanced movement.
    Press d (delete) to cut, or y (yank) to copy.
    Move the cursor to the desired paste location.
    Press p to paste after the cursor, or P to paste before. 

#Replace text:
:%s/MySQLBackend/MariaDBBackend/g
	
#http://vim.wikia.com/wiki/Cut/copy_and_paste_using_visual_selection

#paste with vim without code being commented
# I
:set paste
:set nopaste

# II
:set pastetoggle=<F2>
echo 'set pastetoggle=<F2>' >> /etc/vimrc

# III
#Copy all the lines to clipboard
#copy
gg"*yG
ggVG
#paste
"+p

# IV
#vi syntax highlight
vim --version | grep syntax
echo "alias vi='vim'" >> /etc/profile && source /etc/profile
#vi ~/.vimrc
#vi /etc/vimrc
echo 'syntax on' >> /etc/vimrc
echo 'color desert' >> /etc/vimrc
echo 'set nocp' >> /etc/vimrc
echo 'set wildmenu' >> /etc/vimrc
echo 'set pastetoggle=<F2>' >> /etc/vimrc
echo 'set mouse-=a' >> /etc/vim/vimrc

#:syntax on
#:colorscheme desert
#:set mouse-=a
