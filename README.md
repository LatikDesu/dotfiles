### "Dotfiles"
This Repository Dotfiles contain my personal config files. Here you'll find configs, customizations, themes, and whatever I need to personalize my experience.

### Terminal and Application Icons with Nerd-Fonts
To display icons in terminal or applications Fonts, I'm using Nerd-Fonts. I'm currently using the Hack Nerd Font Mono in terminal applications, and Hack Nerd Font in applications.

If need Helix Editor
```bash
sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix
```

eza install
```bash
sudo apt update
sudo apt install -y gpg

sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza
````

```bash
sudo apt-get install zsh direnv yadm neofetch curl
sudo curl -sS https://starship.rs/install.sh | sh
yadm clone https://github.com/LatikDesu/dotfiles.git
```
```bash
chsh -s $(which zsh)
```
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

![image](https://github.com/LatikDesu/dotfiles/assets/122733866/fe2f284d-0b69-4b32-9f91-9481642b21df)

