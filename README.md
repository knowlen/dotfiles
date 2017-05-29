# configs  

My personal Bash configs. Low profile, meta keybinds, cyan and grey. Mostly focusing on Tmux, Vim, bash\_profile. I edited the 'nicoulaj' theme in oh-my-zsh, and the .dircolors is my directory color scheme.    

![nicksetup](https://cloud.githubusercontent.com/assets/22798226/26563843/877c6f5e-448d-11e7-99ff-2ca90a80c8b1.png)
---
### TMUX
![tmux](https://cloud.githubusercontent.com/assets/22798226/23110917/a7294932-f6d9-11e6-9c5f-8e64dceae768.png)

#### Cool stuff
> **Send commands to all panes:** alt+f (toggle on and off)  
>> ![tmux2](https://sanctum.geek.nz/arabesque/wp-content/uploads/2012/08/synchronize-panes.gif)   
#
> **Send command to current and last selected pane:** alt+r  
     Click on two panes to sync them up, then us alt+r to prompt for a command that will be sent
     to both.
#
> **Session cycling:** alt+{q,e}  
   Allows you to have multiple independent terminal workspaces without having to alt+tab between 
     every application when navigating between them. Eg; 
     start a tmux session, detatch with ctrl+b, d. Then start a new
     tmux session, switch between them quickly with alt+q (previous) or alt+e (next).

#### General re-binds
> **Pane resize:** alt+{up,down,left,right}  
**Pane switching:** alt+{w,a,s,d}    
**Vertical split:** alt+1  
**Horizontal split:** alt+2  


----
