function fssh -d "Fuzzy-find ssh host and ssh into it"
  rg '^host [^*]' ~/.ssh/config | cut -d ' ' -f 2 | fzf | xargs -o ssh
end
