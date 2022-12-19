function sudos --wraps='sudo -s' --wraps=sudo --description 'alias sudos sudo'
  sudo $argv; 
end
