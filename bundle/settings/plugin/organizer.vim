"FIXME?
let g:ft_ignore_pat = '\.org'
filetype plugin indent on
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org call org#SetOrgFileType()
command! OrgCapture :call org#CaptureBuffer()
command! OrgCaptureFile :call org#OpenCaptureFile()
