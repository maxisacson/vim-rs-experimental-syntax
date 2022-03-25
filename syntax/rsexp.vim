if exists("b:current_syntax")
    finish
end

syn match rsBlock "\(Parameters{\)\|}"
syn match rsValue "\(\s*=\s*\)\@<=\([^#]*\)"
syn match rsGroup "\w*\(\..*=\)\@="
syn match rsAssign "="
syn match rsComment "#.*$"

hi link rsComment Comment
hi link rsBlock Structure
hi link rsAssign Special
hi link rsGroup Identifier
hi link rsValue Constant

let b:current_syntax = "rsexp"
