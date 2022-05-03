bleopt accept_line_threshold=5
bleopt allow_exit_with_jobs=
bleopt canvas_winch_action=redraw-here
bleopt char_width_mode=east
bleopt char_width_version=14.0
bleopt complete_allow_reduction=
bleopt complete_ambiguous=1
bleopt complete_auto_complete=1
bleopt complete_auto_delay=1
bleopt complete_auto_history=1
bleopt complete_auto_menu=
bleopt complete_auto_wordbreaks=$' \t\n'
bleopt complete_contract_function_names=1
bleopt complete_limit=
bleopt complete_limit_auto=2000
bleopt complete_limit_auto_menu=100
bleopt complete_menu_complete=1
bleopt complete_menu_filter=1
bleopt complete_menu_maxlines=-1
bleopt complete_menu_style=align-nowrap
bleopt complete_polling_cycle=50
bleopt complete_timeout_auto=5000
bleopt complete_timeout_compvar=200
bleopt decode_abort_char=28
bleopt decode_error_char_abell=
bleopt decode_error_char_discard=
bleopt decode_error_char_vbell=1
bleopt decode_error_cseq_abell=
bleopt decode_error_cseq_discard=1
bleopt decode_error_cseq_vbell=
bleopt decode_error_kseq_abell=1
bleopt decode_error_kseq_discard=1
bleopt decode_error_kseq_vbell=1
bleopt decode_isolated_esc=auto
bleopt decode_macro_limit=1024
bleopt default_keymap=auto
bleopt delete_selection_mode=1
bleopt edit_abell=1
bleopt edit_forced_textmap=1
bleopt edit_line_type=logical
bleopt edit_vbell=
bleopt editor=
bleopt emoji_opts=ri
bleopt emoji_version=14.0
bleopt emoji_width=2
bleopt exec_elapsed_enabled='usr+sys>=10000'
bleopt exec_elapsed_mark=$'\e[94m[ble: elapsed %s (CPU %s%%)]\e[m'
bleopt exec_errexit_mark=$'\e[91m[ble: exit %d]\e[m'
bleopt filename_ls_colors=
bleopt grapheme_cluster=extended
bleopt highlight_filename=1
bleopt highlight_syntax=1
bleopt highlight_timeout_async=5000
bleopt highlight_timeout_sync=50
bleopt highlight_variable=1
bleopt history_lazyload=1
bleopt history_limit_length=10000
bleopt history_preserve_point=
bleopt history_share=
bleopt idle_interval=20
bleopt import_path=/home/f1sty/.local/share/blesh/local
bleopt indent_offset=4
bleopt indent_tabs=1
bleopt info_display=top
bleopt input_encoding=UTF-8
bleopt internal_exec_type=gexec
bleopt internal_ignoreeof_trap='Use "exit" to leave the shell.'
bleopt internal_stackdump_enabled=0
bleopt internal_suppress_bash_output=1
# bleopt keymap_vi_imap_undo=
# bleopt keymap_vi_keymodel=
# bleopt keymap_vi_macro_depth=64
# bleopt keymap_vi_mode_name_blockwise=BLOCK
# bleopt keymap_vi_mode_name_insert=INSERT
# bleopt keymap_vi_mode_name_linewise=LINE
# bleopt keymap_vi_mode_name_replace=REPLACE
# bleopt keymap_vi_mode_name_select=SELECT
# bleopt keymap_vi_mode_name_visual=VISUAL
# bleopt keymap_vi_mode_name_vreplace=VREPLACE
# bleopt keymap_vi_mode_show=1
# bleopt keymap_vi_mode_string_nmap=$'\e[1m~\e[m'
# bleopt keymap_vi_mode_update_prompt=
# bleopt keymap_vi_operatorfunc=
# bleopt keymap_vi_search_match_current=
bleopt line_limit_length=10000
bleopt line_limit_type=none
bleopt menu_align_max=20
bleopt menu_align_min=4
bleopt menu_desc_multicolumn_width=65
bleopt menu_linewise_prefix=
bleopt openat_base=30
bleopt pager=
bleopt prompt_command_changes_layout=
bleopt prompt_eol_mark=$'\e[94m[ble: EOF]\e[m'
bleopt prompt_ps1_final=
bleopt prompt_ps1_transient=
bleopt prompt_rps1=
bleopt prompt_rps1_final=
bleopt prompt_rps1_transient=
bleopt prompt_ruler=
bleopt prompt_screen_title=
bleopt prompt_status_align=$'justify=\r'
bleopt prompt_status_line=
bleopt prompt_term_status=
bleopt prompt_xterm_title=
bleopt syntax_debug=
bleopt syntax_eval_polling_interval=50
bleopt tab_width=
bleopt term_cursor_external=0
bleopt term_index_colors=256
bleopt term_modifyOtherKeys_external=auto
bleopt term_modifyOtherKeys_internal=auto
bleopt term_true_colors=semicolon
# bleopt term_vi_cmap=
# bleopt term_vi_imap=
# bleopt term_vi_nmap=
# bleopt term_vi_omap=
# bleopt term_vi_smap=
# bleopt term_vi_xmap=
bleopt undo_point=end
bleopt vbell_align=left
bleopt vbell_default_message=' Wuff, -- Wuff!! '
bleopt vbell_duration=2000
blehook ADDHISTORY=
blehook ATTACH+='ble/contrib/bash-preexec/attach.hook'
blehook CHPWD=
blehook DA1R=
blehook DA2R+='ble/color/initialize-term-colors'
blehook DETACH+='ble/contrib/bash-preexec/detach.hook'
blehook ERR+='ble/builtin/trap/invoke ERR'
blehook ERR+='ble/function#try TRAPERR'
blehook EXIT+='ble/history:bash/TRAPEXIT'
blehook INT+='ble-edit/exec:gexec/.TRAPINT'
blehook POSTEXEC=
blehook PRECMD+='ble/contrib/bash-preexec/precmd.hook'
blehook PREEXEC+='ble/contrib/bash-preexec/preexec.hook'
blehook WINCH+='ble-edit/attach/TRAPWINCH'
