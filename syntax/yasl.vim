if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "yasl"

syntax keyword yaslKeyword assert break const continue echo else elseif
syntax keyword yaslKeyword export fn for if let match return while
syntax keyword yaslConstant false true undef

syntax keyword yaslDisallowed header global enum struct pragma yield do
syntax keyword yaslDisallowed ifdef elseifdef use no pure consteval
syntax keyword yaslDisallowed constexpr constfold extern in typename

syntax keyword yaslFunction collections io math mt require __require_c__

syntax match yaslString "\v'[^']*'"
syntax match yaslString "\v`[^`]*`"
syntax match yaslString "\v\"[^\"]*\""
syntax match yaslNumber "\v[0-9]+(\.[0-9]+)?"
syntax match yaslNumber "\v0x[0-9a-fA-F]+"
syntax match yaslNumber "\v0b[01]+"

syntax keyword yaslOperator len
syntax match yaslOperator "\v\."
syntax match yaslOperator "\v-\>"
syntax match yaslOperator "\v\*\*\=?"
syntax match yaslOperator "\v\+\=?"
syntax match yaslOperator "\v-\=?"
syntax match yaslOperator "\v!\=?\=?"
syntax match yaslOperator "\v\^\=?"
syntax match yaslOperator "\v\*\=?"
syntax match yaslOperator "\v//?\=?"
syntax match yaslOperator "\v\%\=?"
syntax match yaslOperator "\v\>\>?\=?"
syntax match yaslOperator "\v\<\<?\=?"
syntax match yaslOperator "\v\&\&?\=?"
syntax match yaslOperator "\v\&\^\=?"
syntax match yaslOperator "\v\|\|?\=?"
syntax match yaslOperator "\v\~\=?"
syntax match yaslOperator "\v\?"
syntax match yaslOperator "\v:"
syntax match yaslOperator "\v\?\?\=?"
syntax match yaslOperator "\v\=\=?\=?"

syntax region yaslComment start="/\*" end="\*/"
syntax match yaslComment "\v#.*$"

highlight link yaslOperator Operator
highlight link yaslKeyword Keyword
highlight link yaslConstant Constant
highlight link yaslFunction Function
highlight link yaslComment Comment
highlight link yaslString String
highlight link yaslNumber Number
highlight link yaslDisallowed Error
