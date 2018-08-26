echom "About to load YASL syntax highlighting"
"if exists("b:current_syntax")
"    finish
"endif

echom "Loaded YASL syntax highlighting"
let b:current_syntax = "yasl"

syntax keyword yaslKeyword break const continue else elseif enum fn for if in
syntax keyword yaslKeyword let print return while
syntax keyword yaslConstant false inf nan true undef

syntax keyword yaslFunction open popen input


syntax match yaslString "\v'[^']*'"
syntax match yaslNumber "\v[0-9]+(\.[0-9]+)?"
syntax match yaslNumber "\v0x[0-9a-fA-F]+"
syntax match yaslNumber "\v0b[01]+"
syntax match yaslNumber "\v0o[0-7]+"

syntax match yaslOperator "\v\."
syntax match yaslOperator "\v\*\*\=?"
syntax match yaslOperator "\v\+\=?"
syntax match yaslOperator "\v-\=?"
syntax match yaslOperator "\v#"
syntax match yaslOperator "\v!\=?\=?"
syntax match yaslOperator "\v\^\=?"
syntax match yaslOperator "\v\*\=?"
syntax match yaslOperator "\v/\=?"
syntax match yaslOperator "\v//\=?"
syntax match yaslOperator "\v\%\=?"
syntax match yaslOperator "\v\>\>\=?"
syntax match yaslOperator "\v\<\<\=?"
syntax match yaslOperator "\v\&\&?\=?"
syntax match yaslOperator "\v\|\|?\=?"
syntax match yaslOperator "\v\~\=?"
syntax match yaslOperator "\v\<\=?"
syntax match yaslOperator "\v\>\=?"
syntax match yaslOperator "\v\?"
syntax match yaslOperator "\v::?"
syntax match yaslOperator "\v\?\?\=?"
syntax match yaslOperator "\v\=\=?\=?"

syntax region yaslComment start="/\*" end="\*/"
syntax match yaslComment "\v\".*$"

highlight link yaslOperator Operator
highlight link yaslKeyword Keyword
highlight link yaslConstant Constant
highlight link yaslFunction Function
highlight link yaslComment Comment
highlight link yaslString String
highlight link yaslNumber Number
