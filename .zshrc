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

  #zle reset-prompt
#}
put_at_bottom(){
  tput sc;
  tput cup $LINES $(($(tput cols)-11));
  echo -e "\e[31m`date +%r`\e[39m";
  tput rc;
}
while sleep 1;do
  put_at_bottom
  done &
tput csr 0 $(($LINES - 3))
