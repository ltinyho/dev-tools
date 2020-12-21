yum install zsh git epel-release autojump -y
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://gitee.com/mcornella/ohmyzsh/raw/master/tools/install.sh)"
sed -i 's/robbyrussell/bira/' ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i "s/(git)/(git docker docker-compose history last-working-dir zsh-autosuggestions autojump)/" ~/.zshrc
echo '. /usr/share/autojump/autojump.bash' >> ~/.zshrc
source ~/.zshrc