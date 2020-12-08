function fish_right_prompt -d "Write out the right prompt"
        set -l last_status $status

        # tmux, screen title
        switch $TERM;
        case xterm'*' vte'*';
        printf '\033]0;['(prompt_pwd)']\007';
        case screen'*';
        printf '\033k['(prompt_pwd)']\033\\';
        end

        echo -ns (date "+%d.%m")" - "(date "+%R")
end
