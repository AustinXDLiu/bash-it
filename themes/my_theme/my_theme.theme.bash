#!/usr/bin/env bash

SCM_THEME_PROMPT_DIRTY=" ${bold_red}⊘${normal}"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓${normal}"
SCM_THEME_PROMPT_PREFIX="${reset_color}["
SCM_THEME_PROMPT_SUFFIX=" ${reset_color}]"

GIT_THEME_PROMPT_DIRTY=" ${bold_red}⊘${normal}"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓${normal}"
GIT_THEME_PROMPT_PREFIX="${blue}["
GIT_THEME_PROMPT_SUFFIX=" ${blue}]"

STATUS_THEME_PROMPT_BAD="${red}❯${reset_color}${normal}"
STATUS_THEME_PROMPT_OK="${green}❯${reset_color}${normal}"

function prompt_command() {
    local ret_status="$( [ $? -eq 0 ] && echo -e "$STATUS_THEME_PROMPT_OK" || echo -e "$STATUS_THEME_PROMPT_BAD")"
    PS1="\n${bold_black}\A ${bold_black}\u${bold_black}@${bold_black}\h $(scm_prompt_info)\n${bold_black}\w ${ret_status} "
}

safe_append_prompt_command prompt_command
