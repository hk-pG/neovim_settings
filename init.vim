let split = split(glob("~/.config/nvim/configs/" . "*.vim"))

for file in split
  " print loaded files
  echo "load " . file
  " load file
  execute 'source' file
endfor

colorscheme tender
