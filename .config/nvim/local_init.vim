let g:snips_author = 't1meshift'
let g:airline_theme = 'minimalist'

"let g:Sierra_Pitch = 1
"colorscheme sierra
set t_Co=256
syntax on
colorscheme minimalist
let g:airline_powerline_fonts = 1
let g:deoplete#enable_at_startup = 1
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})

let g:md_pdf_viewer="zathura"
let g:md_pdf_engine="xelatex -Vgeometry:top=20mm -Vgeometry:left=15mm -V papersize=a4paper -V lang=russian -V mainfont='Cantarell'"
" Abusing an exploit in the plugin :)
let g:md_default_latex_class="latex"
let g:pandoc#modules#disabled = ["folding", "spell"]
