let split = split(glob("~/.config/nvim/configs/" . "*.vim"))

set hidden

for file in split
  " print loaded files
  " echo "load " . file
  " load file
  execute 'source' file
endfor

