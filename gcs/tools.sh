# apt install starship
wget https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-musl.tar.gz
tar xzf starship-x86_64-unknown-linux-musl.tar.gz -C ~/bin
rm starship-x86_64-unknown-linux-musl.tar.gz

# 103  echo 'eval "$(starship init bash)"'
# 104  echo 'eval "$(starship init bash)"' >> .bashrc 

curl https://raw.githubusercontent.com/dylanaraps/neofetch/refs/heads/master/neofetch > ~/bin/neofetch
chmod +x ~/bin/neofetch
