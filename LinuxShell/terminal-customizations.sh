sudo apt update
sudo apt install curl wget git zsh -y

zsh --version

# # Set ZSH as default shell
# echo "Your Shell is currently:"
# echo $shell

# Change to ZSH
echo "Changing to ZSH"
chsh -s /usr/bin/zsh
echo "Logout to reflect changes"
# Log out and back in. You should see some config setup stuff

# Install Oh My ZSH
sudo apt install curl wget git -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Check that the ZSHRC files are there
echo "Checking that the zshrc files are there"
ls -la | grep zshrc


echo "Installing ZSH Plugins"
# Install the ZSH Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

# Disabling PL10K because it doesn't work with warp terminal
#echo "Installing PowerLevel10k"
# Install Powerlevel10k
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install Starship
curl -sS https://starship.rs/install.sh | sh


mv ~/.zshrc ~/.zshrc_OLD

echo "Copying Config files"
cp ./.zshrc ~/.zshrc

mkdir ~/.config
cp ./starship.toml ~/.config/.starship.toml


# Again, disabling pl10k
# cp ./.p10k.zsh ~/.p10k.zsh

echo "Done! Restart your terminal to take effect"