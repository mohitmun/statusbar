#https://gist.github.com/izabera/9903f9d942e2667ef2cb
#https://gist.github.com/grega/61355d041ccfaef66419
#https://github.com/xcd-bash/status-bar
#github.com:adone/bash-status-line
#bsl_set_status_line() {
  #local lines=`tput lines`
  #tput sc
  #non_scroll_line=$(($lines - 1))
  #tput csr 0 $(($lines - 3))
  ##
  ## Clear out the status line
  #tput cup $non_scroll_line 0
  #printf "%${COLUMNS}s"
  #tput rc

  ## Reprint the status line
  #tput cup $non_scroll_line 0
  ##echo $(get_spotify_widget)
  ##echo -ne "$(get_battery)$DOT$(get_volume_indicator)$DOT$(time12)"
  #echo -ne "hello"
  #tput rc
#}
#setopt PROMPT_SUBST
#repeat_string(){
  ## this works fine
  ##printf "-%.0s" $(seq 1 $(( $COLUMNS - 1)))

  ## this doesn't works fine
   ##printf "-%.0s" $(seq 1 $COLUMNS)
#}

#TMOUT=1
#PROMPT="$(bsl_set_status_line)$(repeat_string)
#$(date)
#hello >>>"
#TRAPALRM() {
#tput_exp(){
  #tput sc
  #tput cup $LINES
  #echo -ne "chus"

  #tput csr 0 $(($LINES - 3))
  #tput rc
#}
#delete_one_line(){
  #printf "=%.0s" $(seq 1 $COLUMNS)
#}
#PROMPT="hello
#>>> $(tput sc)
#echo "-"
#$(tput rc)"

#TMOUT=1
##https://github.com/robbyrussell/oh-my-zsh/issues/5910#issuecomment-294509017
#TRAPALRM() {
    #if [[ $WIDGET != *"complete"* && $WIDGET != *"-search" ]]; then;
      ##async_job vagrant_prompt_worker export-spotify-status $PWD
      ##zle reset-prompt
      ##bsl_set_status_line
      ##thanks https://github.com/wilywampa/vimconfig/blob/b95caa50883438288729b6e8ff963783b110a3a5/dotfiles/.zshrc#L1374
      #if [[ -n $BUFFER ]]; then
        #TMOUT=5
      #else
        #TMOUT=1
      #fi
      ##echo $BUFFER > ~/.debug_async
    #fi
    #tput_exp
    ##tput csr 0 $(($LINES - 3))
#}
  #zle reset-prompt
#}
    put_at_bottom(){
      tput sc;
      tput cup $LINES $(($(tput cols)-11));
      echo -ne "\e[31m`date +%r`\e[39m";
      tput rc;
    }
    while sleep 1;do
      put_at_bottom
      done &
    tput csr 0 $(($LINES - 3))
