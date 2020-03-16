#tmux

ctrl+b c - new window
ctrl+b , - rename window
ctrl+b p - previous window
ctrl+b n - next window
ctrl+b w - list windows
ctrl+b % - split windows vertically
ctrl+b " - split windows horizontally"

tmux new -s <session name>

ctrl+b d - detach from a session

tmax list-sessions (or ls)
tmax attach -t <session name>


#tmux alternative - screen

# Starting Linux Screen
screen
# Starting Named Session
screen -S session_name
# Detach from Linux Screen Session
Ctrl-a + Ctrl-d
# Reattach to a Linux Screen
screen -r
# Several sessions
screen -ls
screen -r <session-id>
