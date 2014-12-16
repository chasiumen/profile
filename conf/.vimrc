
"------------------------------------------------
"               Vim Plugin setup
"------------------------------------------------
" Neobundle to manage vim plugin
set nocompatible    "disable vi compatibility
filetype off

if has('vim_starting')
      set runtimepath+=~/.vim/bundle/neobundle.vim/
        endif

        call neobundle#begin(expand('~/.vim/bundle/'))
        NeoBundleFetch 'Shougo/neobundle.vim'
        call neobundle#end()
        
        " Let NeoBundle manage NeoBundle
        NeoBundleFetch 'Shougo/neobundle.vim'

        " Recommended to install
        NeoBundle 'Shougo/vimproc', {
              \ 'build' : {
              \     'windows' : 'make -f make_mingw32.mak',
              \     'cygwin' : 'make -f make_cygwin.mak',
              \     'mac' : 'make -f make_mac.mak',
              \     'unix' : 'make -f make_unix.mak',
              \    },
              \ }

        " List of Vim plugin
        "NeoBundle 'Shougo/neosnippet.vim'
        "NeoBundle 'Shougo/neosnippet-snippets'
        "NeoBundle 'Shougo/neocomplete'
        "NeoBundle 'Shougo/neocomplcache.vim'
        NeoBundle 'sudo.vim'
        NeoBundle 'Shougo/unite.vim'
        NeoBundle 'tpope/vim-fugitive'
        NeoBundle 'Shougo/vimfiler.vim'
        NeoBundle 'kana/vim-submode'
        NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
        
        "------------------------------------------------
        "           Web Tools
        "------------------------------------------------
        "HTML5 syntax
        NeoBundle 'alpaca-tc/html5.vim'
        "CSS syntax
        NeoBundle 'hail2u/vim-css3-syntax'
        
        " インデントに色を付けて見やすくする
        NeoBundle 'nathanaelkane/vim-indent-guides'
        NeoBundle 'rhysd/accelerated-jk'
        "NeoBundle 'kien/ctrlp.vim'
        "NeoBundle 'yuratomo/w3m.vim'

        "twitter
        NeoBundle 'TwitVim'

        NeoBundle 'flazz/vim-colorschemes'
        " You can specify revision/branch/tag.
        filetype plugin indent off     " Required!
        " If there are uninstalled bundles found on startup,
        " this will conveniently prompt you to install them.


""------------------------------------------------
""               Latex for vim conf
""------------------------------------------------
NeoBundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'
let tex_flavor='latex'
set grepprg=grep\ -nH\ $*
set shellslash
"標準で.pdfにコンパイルして開いてね
let g:Tex_DefaultTargetFormat = 'pdf'
"PDFはPreview.appで開いてね
let g:Tex_ViewRule_pdf = 'open -a Preview.app'
"pdflatexを使って.texから.pdfに変換してね
let g:Tex_CompileRule_pdf = 'pdflatex $*.tex' 
"
"   \ll
"   Vimのノーマルモードで上記を入力するだけコンパイルしてくれます．
"   Preview.appで閲覧
"   
"   \lv
"   自動的にPreview.appでPDFを開いてくれます．
"   参考:http://h0shim0.hatenablog.com/entry/2014/05/29/174114


""------------------------------------------------
""               accelerated-jk conf
""------------------------------------------------
"めっちょ早い
let g:accelerated_jk_acceleration_table = [10,5,1]
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

""------------------------------------------------
""               vim-indent-guides conf
""------------------------------------------------
"set 2 to enable
let g:indent_guides_enable_on_vim_startup = 0


""------------------------------------------------
""               vimfiler
""------------------------------------------------
""" 自動起動
"autocmd VimEnter * VimFiler -split -simple -winwidth=30 -no-quit
""" [:e .]のように気軽に起動できるようにする
"let g:vimfiler_as_default_explorer = 1
""" セーフモードの設定(OFF
"let g:vimfiler_safe_mode_by_default=0
" 
"" netrwは常にtree view
"let g:netrw_liststyle = 3
"" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
"let g:netrw_altv = 1
"" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
"let g:netrw_alto = 1
"" 'v'や'o'で開かれる新しいウィンドウのサイズを指定する
"let g:netrw_winsize = 80

" submode.vim
" http://d.hatena.ne.jp/thinca/20130131/1359567419
" ウィンドウサイズの変更キーを簡易化する
" [C-w],[+]または、[C-w],[-]
call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
call submode#enter_with('winsize', 'n', '', '<C-w>+', '<C-w>-')
call submode#enter_with('winsize', 'n', '', '<C-w>-', '<C-w>+')
call submode#map('winsize', 'n', '', '>', '<C-w>>')
call submode#map('winsize', 'n', '', '<', '<C-w><')
call submode#map('winsize', 'n', '', '+', '<C-w>-')
call submode#map('winsize', 'n', '', '-', '<C-w>+')

"Twitter
let twitvim_browser_cmd = 'open -a Safari' " for Mac
"let twitvim_browser_cmd = 'C:¥Program Files¥Your_Browser_Path' " for Windows
let twitvim_force_ssl = 1 
let twitvim_count = 40
"Key mapping
"nnoremap <Space>tt :<C-u>PosttoTwitter<CR>
"nnoremap <Space>tf :<C-u>FriendsTwitter<CR>
"nnoremap <Space>tu :<C-u>UserTwitter<CR>
"nnoremap <Space>tr :<C-u>MentionsTwitter<CR>
"nnoremap <Space>td :<C-u>DMTwitter<CR>
"nnoremap <Space>ts :<C-u>DMSentTwitter<CR>
"nnoremap <Space>tn :<C-u>NextTwitter<CR>
"nnoremap <Space>tp :<C-u>PreviousTwitter<CR>
"nnoremap <Leader><Leader> :<C-u>RefreshTwitter<CR>


"------------------------------------------------
"               Jazzradio
"------------------------------------------------
NeoBundleLazy 'supermomonga/jazzradio.vim', { 'depends' : [ 'Shougo/unite.vim' ] }
if neobundle#tap('jazzradio.vim')
  call neobundle#config({
        \   'autoload' : {
        \     'unite_sources' : [
        \       'jazzradio'
        \     ],
        \     'commands' : [
        \       'JazzradioUpdateChannels',
        \       'JazzradioStop',
        \       {
        \         'name' : 'JazzradioPlay',
        \         'complete' : 'customlist,jazzradio#channel_key_complete'
        \       }
        \     ],
        \     'function_prefix' : 'jazzradio'
        \   }
        \ })
endif

"" End of NeoBundle
NeoBundleCheck

"------------------------------------------------
"           Default Vim Settings
"------------------------------------------------

"display command inputs
set showcmd
"display line numbers
set number
"Force stop tab in terms of space (4)
set tabstop=4 
"replace TAB space as black SPACE (indent size can be modified by tabstop=N)
set expandtab 
"ignorecase in search
set ignorecase
"no beep sound
set visualbell t_vb=
"disable autoindentation
setlocal noautoindent
setlocal nosmartindent
"enable syntax color-highlighting
syntax on
"Infinite Undo -ずっとundoのターン-
if has('persistent_undo')
    set undodir=~/.vim/undo
    set undofile
endif

