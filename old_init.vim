
""        
""  ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
""  ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
""  ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
""  ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
""  ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
"" 
""   => MARIO Says hello to world 
""
"" =================================================================


"" =================================================================
"set path+=**
"set title
"set scrolloff=10
"set autoindent
"set wildmenu
"set number
"set cursorline
"set mouse=a
"set noswapfile
"set tabstop=4 shiftwidth=4  expandtab autoindent smartindent
"set showcmd
"set clipboard+=unnamedplus " Copy paste between vim and everything else
"set t_Co=256
"set background=dark
"set termguicolors
"syntax on
"set laststatus=2
"" set signcolumn=yes
"filetype plugin on

"" set foldmethod=syntax
"" set foldcolumn=1
"" set foldlevelstart=99

"" Color Coulmn ====================================================
"set colorcolumn=80

"set foldlevel=20
"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()


"" Ignore Files ====================================================
"set wildignore+=*.pyc
"set wildignore+=*_build/*
"set wildignore+=**/coverage/*
"set wildignore+=**/node_modules/*
"set wildignore+=**/android/*
"set wildignore+=**/ios/*
"set wildignore+=**/.git/*



"" Vim-Plug init====================================================
"" instal vim plug if not existed
"if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
"	echo "Downloading junegunn/vim-plug to manage plugins..."
"	silent !mkdir -p ~/.config/nvim/autoload/
"	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
"endif


"" Attempt to Speed up Vim =========================================
"set ttyfast
"set lazyredraw


"" Plugins =========================================================
"call plug#begin('~/.vim/plugged')

"    "--- File Manager and FZF -------------------------     
"    Plug 'preservim/nerdtree'
"    Plug 'nvim-telescope/telescope.nvim'
"    Plug 'nvim-lua/popup.nvim'
"    Plug 'nvim-lua/plenary.nvim'
"    Plug 'nvim-telescope/telescope.nvim'
"    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"    Plug 'nvim-telescope/telescope-file-browser.nvim'
"    Plug 'sudormrfbin/cheatsheet.nvim'
"    " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"    " Plug 'kyazdani42/nvim-tree.lua'
"    " Plug 'ThePrimeagen/harpoon'     
    
"    "--- Themes ---------------------------------------     
"    Plug 'projekt0n/github-nvim-theme'
"    Plug 'nvim-lualine/lualine.nvim'
"    Plug 'kyazdani42/nvim-web-devicons'
"    Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
    
"    "--- Auto Complete Plugins ----------------------     
"    " Plug 'hrsh7th/nvim-cmp'
"    " Plug 'hrsh7th/cmp-buffer'
"    " Plug 'hrsh7th/cmp-path'
"    " Plug 'hrsh7th/cmp-nvim-lsp'
"    " Plug 'L3MON4D3/LuaSnip'
"    " Plug 'saadparwaiz1/cmp_luasnip'
"    " Plug 'David-Kunz/cmp-npm'

"    "--- Syntax Highlighting and Snippets Plugins----     
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
"    Plug 'pangloss/vim-javascript'
"    " Plug 'leafgarland/typescript-vim'
"    " Plug 'ianks/vim-tsx'
"    " Plug 'peitalin/vim-jsx-typescript'
"    Plug 'pearofducks/ansible-vim'
"    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"    Plug 'tpope/vim-surround'
"    Plug 'alvan/vim-closetag'
"    Plug 'jiangmiao/auto-pairs'
"    Plug 'tpope/vim-commentary'  " For commenting  gcc & gcl 
"    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
   
"    "--- Editor Tools ---------------------------------     
"    Plug 'mhinz/vim-startify'
"    Plug 'tpope/vim-fugitive'
"    Plug 'preservim/tagbar' 
"    Plug 'duane9/nvim-rg'
"    Plug 'cuducos/yaml.nvim'
    
"    "---------------------------------------------------
    
"    call plug#end()



""=== Telescope ==============================================================
"lua << EOF
"local actions = require('telescope.actions')
"require('telescope').setup{
"    defaults = {
"        file_ignore_patterns = {
"            "node_modules", "android", "ios",
"            "assets", "yarn.lock" ,"package-lock.json" 
"        }
"    }
"}
"require("telescope").load_extension "file_browser"
"EOF

""===  Plug 'nvim-telescope/telescope.nvim' ===================================
"lua << EOF
"require('plenary.reload').reload_module('lualine', true)
"require('lualine').setup({
"  options = {
"    theme = 'github_dark_default',
"    disabled_types = { 'NvimTree' }
"  },
"  sections = {
"    lualine_x = {},
"    -- lualine_y = {},
"    -- lualine_z = {},
"  }
"})
"EOF


""=== Plug 'akinsho/nvim-bufferline.lua' =======================================
"lua << EOF
"vim.api.nvim_exec([[let $KITTY_WINDOW_ID=0]], true)
"require("bufferline").setup{
"  highlights = {
"  },
"  options = {
"    modified_icon = "●",
"    left_trunc_marker = "",
"    right_trunc_marker = "",
"    max_name_length = 25,
"    max_prefix_length = 25,
"    enforce_regular_tabs = false,
"    view = "multiwindow",
"    show_buffer_close_icons = true,
"    show_close_icon = false,
"    separator_style = "slant",
"    diagnostics = "nvim_lsp",
"    diagnostics_update_in_insert = false,
"    diagnostics_indicator = function(count, level, diagnostics_dict, context)
"      return "("..count..")"
"    end,
"    offsets = {
"      {
"        filetype = "coc-explorer",
"        text = "File Explorer",
"        highlight = "Directory",
"        text_align = "center"
"      }
"    }
"  }
"}
"EOF
"nnoremap <silent> gb :BufferLinePick<CR>




"" Close tag Congifg ===========================================================
"let g:closetag_filenames = '*.html,*.jsx,*.tsx'
"let g:closetag_regions = {
"    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
"    \ 'javascript.jsx': 'jsxRegion',
"    \ 'typescriptreact': 'jsxRegion,tsxRegion',
"    \ 'javascriptreact': 'jsxRegion',
"    \ }


"" Startify Congifg ============================================================
"let g:startify_lists = [
"          \ { 'type': 'files',     'header': ['   Files']            },
"          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
"          \ { 'type': 'sessions',  'header': ['   Sessions']       },
"          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
"          \ ]

"let g:startify_bookmarks = [ 
"        \{'w':'~/Mario/work'},
"        \{'m':'~/Mario/'},
"        \{ 'i': '~/.config/nvim/init.vim'},
"        \ ]

"" terminal colors =============================================================
"" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"" Colors ======================================================================
"colorscheme github_dark_default

"" highlight IconNameDevicon guifg='<color>' ctermfg='<cterm_color>'
"hi Normal ctermbg=NONE guibg=NONE
"hi Normal guibg=NONE ctermbg=NONE
"hi LineNr guibg=NONE ctermbg=NONE
"hi SignColumn guibg=NONE ctermbg=NONE
"hi EndOfBuffer guibg=NONE ctermbg=NONE
"highlight Cursor guifg=#f00 guibg=#657b83
"highlight Comment cterm=italic gui=italic
"highlight ColorColumn ctermbg=16 guibg=#303030
"set fillchars=vert:\│,eob:\ 

"" Prettier config ============================================================
"let g:prettier#autoformat = 1
"let g:prettier#autoformat_require_pragma = 0
"autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
"autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"" Coc config =================================================================
"let g:coc_global_extensions = [
"            \ 'coc-html',
"            \ 'coc-css',
"            \ 'coc-json',  
"            \ 'coc-tslint-plugin',
"            \ 'coc-tsserver',
"            \ 'coc-prettier',
"            \ 'coc-snippets',
"            \ 'coc-pairs'
"            \ ]

"" NERDTreeToggle config =======================================================
"function! ToggleNERDTREE()
"    NERDTreeToggle
"    silent NERDTreeMirror
"endfunction

""KeyBindinigs mapings ==========================================================
"nnoremap <C-f> <cmd>lua require('telescope.builtin').live_grep()<cr>
"nnoremap <C-p> :Telescope find_files<CR>
"nnoremap <C-g> :Telescope git_files<cr>
"nnoremap <C-b> :Telescope buffers<cr>
"nnoremap <C-a> ggVG
"nnoremap <C-n> :call ToggleNERDTREE()<CR>
"nnoremap <C-s> :w<CR>

"nnoremap ,html :-1read $HOME/.config/nvim/snippets/skeleton.html<CR>
"nnoremap ,rfc  :-1read $HOME/.config/nvim/snippets/react.js<CR>
"" inoremap <CR> <C-y><CR>

