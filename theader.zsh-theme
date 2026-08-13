TNAME="$(whoami)"
setopt prompt_subst

ZSH_THEME_GIT_PROMPT_PREFIX="%F{8}%K{8}%F{0} %K{2} %F{white}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%K{8} %k%F{8}%f "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}* %f"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZLE_RPROMPT_INDENT=0



get_date_badge() {
    local date_str="$(date +"%d/%b/%y %a")"
    printf "%%K{8}%%F{2}%%K{2}%%F{0} %%K{8} %%F{2}%%B%-14s%%b%%k%%F{8}%%f" "$date_str"
}

get_nl_status() {
    if (( ${nl_mode:-0} == 1 )); then
        printf "%%K{1}%%F{15}%%B 🔒 NL MODE ON %%b%%f%%k "
    fi
}

PROMPT="
%F{red}╭─[%F{blue}%BRemo773%b%F{yellow}@%F{gray}termux%F{red}]-[%F{green}%~%F{red}]
%F{red}╰─ %F{red}%B⋙%b %F{blue}⋙ %F{gray}⋙ %f "

RPROMPT="\$(git_prompt_info)\$(get_date_badge)"



