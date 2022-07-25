vim.cmd [[
try
  colorscheme tokyonight 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme pablo
  set background=dark
endtry
]]

