" Not sure about that scheme
"Plug 'AlessandroYorba/Sierra'
Plug 'dikiaap/minimalist'

" muh :terminal support
Plug 'vimlab/split-term.vim'

" nerdtree with git status, so i don't have to do `git status` by myself
" Plug 'Xuyuanp/nerdtree-git-plugin'

" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" LaTeX
Plug 'lervag/vimtex'

" Pandoc support
" Pandoc + Markdown (damn, that's quite heavy :c)
Plug 'skywind3000/asyncrun.vim' " needed for async convert
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'conornewton/vim-pandoc-markdown-preview'
