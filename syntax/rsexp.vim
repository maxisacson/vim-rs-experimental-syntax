if exists("b:current_syntax")
    finish
end

syn match rsBlock "\(Parameters{\)\|}"
syn match rsValue "\(\s*=\s*\)\@<=\(.*\)"
" syn match rsKey ".*\(\s*=\s*\)\@="
syn match rsGroup ".*\(\..*=\)\@="
syn match rsAssign "="
syn match rsComment "\s*#.*"

hi link rsBlock Structure
hi link rsComment Comment
hi link rsAssign Special
" hi link rsKey Identifier
hi link rsGroup Identifier
hi link rsValue Constant

let b:current_syntax = "rsexp"
