function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))    
  
    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    let l:errors_recap = l:all_errors == 0 ? '' : printf('%d⨉', all_errors)
    let l:warnings_recap = l:all_warnings == 0 ? '' : printf('%d⚠ ', all_warnings)
    return (errors_recap . warnings_recap)
endfunction
