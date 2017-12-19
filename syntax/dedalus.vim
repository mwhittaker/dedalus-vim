if exists("b:current_syntax")
    finish
endif
let b:current_syntax = "dedalus"

syntax region dedalusAtom start="(" end=")" transparent contains=dedalusConstant,dedalusVariable,dedalusOperator
syntax keyword dedalusKeyword next async
syntax match dedalusOperator "@"
syntax match dedalusOperator "#"
syntax match dedalusComment "//.*$"
syntax match dedalusConstant contained "[a-z0-9][a-zA-Z0-9_]*"
syntax match dedalusVariable contained "[A-Z][a-zA-Z0-9_]*"

highlight link dedalusComment Comment
highlight link dedalusKeyword Keyword
highlight link dedalusOperator Operator
highlight link dedalusConstant Constant
highlight link dedalusVariable Identifier
