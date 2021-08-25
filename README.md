# dotfiles
my dotfiles for ArcoLinux i3

## How to install

**At first, you'd better backup your own config files!!!**

### vim
```shell
mv vim ~/.vim
mv vimrc ~/.vimrc
```

### xmodmap 
```shell
pacman -S xkeycaps
xmodmap -pke > ~/.Xmodmap
mv Xmodmap ~/.Xmodmap
```

### mpd
```shell
pacman -S mpd
mkdir ~/.config/mpd/playlists
touch ~/.config/mpd/{database,log,pid,state,sticker.sql}
mv mpd/mpd.conf ~/.config/mpd/
```

### i3、polybar、rofi、termite
```shell
mv i3 polybar rofi termite ~/.config/
```
