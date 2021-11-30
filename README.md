# L_dot
## Get
```
git clone https://github.com/supersimetria/L_dot.git
```
## Bash
```
mv ~/.bashrc ~/.bashrc-back
wget -O ~/.bashrc https://git.io/JuaYS
source ~/.bashrc
```
## ZSH
```
mv ~/.zshrc ~/.zshrc-back
wget -O ~/.zshrc https://git.io/JuaWC
source ~/.zshrc
```

#Список всех пакетов
pacman -Qqe >> ~/packages-all.txt

#Список AUR пакетов
pacman -Qmq >> ~/packages-aur.txt
grep -v -F -f ~/packages-aur.txt ~/packages-all.txt  > ~/packages-pacman.txt; rm ~/packages-aur.txt ~/packages-all.txt







#Cписок пакетов AUR/pacman с сохранением
pacman -Qqet | grep -v "$(pacman -Qqg)" > ~/list_all_packages

#Cписок пакетов AUR с сохранением
pacman -Qqetm | grep -v "$(pacman -Qqgm)" > ~/list_aur_packages

#Cписок пакетов pacman с сохранением
grep -v -F -f ~/list_aur_packages ~/list_all_packages > ~/list_pacman_packages; rm ~/list_all_packages ~/list_aur_packages

#Обновить список пакетов без AUR
pacman -Qqet | grep -v "$(pacman -Qqg)" > ~/list_all_packages
pacman -Qqetm | grep -v "$(pacman -Qqgm)" > ~/list_aur_packages
grep -v -F -f ~/list_aur_packages ~/list_all_packages > ~/list_pacman_packages; rm ~/list_all_packages ~/list_aur_packages

#Cписок пакетов apt с сохранением
dpkg -l | grep ^ii | awk '{ print $2}' > ~/list_apt_packages
#Обновить список пакетов apt с исключением
grep -v -F -f ~/minimal ~/full > ~/list_apt_packages




grep -v -F -f ~/minimal_pack ~/all_full_pack > ~/list_pacman_packages

grep -v -F -f ~/list_aur_packages ~/list_all_packages > ~/list_pacman_packages; rm ~/list_all_packages ~/list_aur_packages
