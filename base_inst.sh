#!/usr/bin/env bash
#
################################################################################
# Config
# set:
# -e: if it finds any error, it ends the execution immediately
set -e
#
# ============================================
# show banner
# ============================================
# link: https://patorjk.com/software/taag/#p=display&f=Big%20Money-ne&t=Base%20Install
show_header(){
cat << "HEADER"
 /$$$$$$$                                      /$$$$$$                       /$$               /$$ /$$
| $$__  $$                                    |_  $$_/                      | $$              | $$| $$
| $$  \ $$  /$$$$$$   /$$$$$$$  /$$$$$$         | $$   /$$$$$$$   /$$$$$$$ /$$$$$$    /$$$$$$ | $$| $$
| $$$$$$$  |____  $$ /$$_____/ /$$__  $$        | $$  | $$__  $$ /$$_____/|_  $$_/   |____  $$| $$| $$
| $$__  $$  /$$$$$$$|  $$$$$$ | $$$$$$$$        | $$  | $$  \ $$|  $$$$$$   | $$      /$$$$$$$| $$| $$
| $$  \ $$ /$$__  $$ \____  $$| $$_____/        | $$  | $$  | $$ \____  $$  | $$ /$$ /$$__  $$| $$| $$
| $$$$$$$/|  $$$$$$$ /$$$$$$$/|  $$$$$$$       /$$$$$$| $$  | $$ /$$$$$$$/  |  $$$$/|  $$$$$$$| $$| $$
|_______/  \_______/|_______/  \_______/      |______/|__/  |__/|_______/    \___/   \_______/|__/|__/
       for alpine                                                         Developed by Sebastian Weigl
HEADER
}
#
##########################################################
# 1 #
##########################################################
install_system_tools(){
  echo
  echo "############################################"
  echo " Install sytem tools"
  echo "############################################"
  #
  apk add \
    bc \
    bat \
    kmod \
    most \
    tree \
    lsof \
    lnav \
    sudo \
    fwupd \
    rsync \
    strace \
    psmisc \
    gettext \
    texinfo \
    mlocate \
    binutils \
    autoconf \
    moreutils \
    bash-completion \
    ca-certificates 
}
#
##########################################################
# 2 #
##########################################################
install_info(){
  echo
  echo "############################################"
  echo " Install info tools"
  echo "############################################"
  #
  apk add \
    fzf \
    inxi \
    htop \
    lshw \
    ncdu \
    btop \
    dysk \
    bpytop \
    hwinfo \
    lsscsi \
    hdparm \
    blktool \
    sysstat \
    fastfetch \
    dmidecode \
    smartmontools
}
#
##########################################################
# 3 #
##########################################################
install_dev_tools(){
  echo
  echo "############################################"
  echo " Install development tools"
  echo "############################################"
  #
  apk add \
    git \
    gcc \
    g++ \
    flex \
    make \
    bison \
    cmake \
    dwarves \
    lowdown \
    automake \
    shellcheck \
    git-extras \
    autotools-dev
}
#
##########################################################
# 4 #
##########################################################
install_net_tools(){
  echo
  echo "############################################"
  echo " Install network tools"
  echo "############################################"
  #
  apk add \
    lynx \
    curl \
    samba \
    afuse \
    minicom \
    ethtool \
    sipcalc \
    arpwatch \
    ipcalc-ng \
    net-tools \
    smbclient \
    nfs-common \
    cifs-utils \
    netdiscover \
    lynx-common \
    ssh-askpass \
    openssh-server \
    ntpsec-ntpdate
}
#
##########################################################
# 5 #
##########################################################
install_other_tools(){
  echo
  echo "############################################"
  echo " Install other tools"
  echo "############################################"
  #
  apk add \
    iat \
    rpm \
    zip \
    rar \
    arj \
    xxd \
    acpi \
    lzma \
    alien \
    unzip \
    unrar \
    bzip2 \
    pbzip2 \
    usbutils \
    elfutils \
    tealdeer \
    rpm-common \
    lm-sensors \
    btrfs-progs
}
#
##########################################################
# 6 #
##########################################################
install_graphic_tools(){
  echo
  echo "############################################"
  echo " Install graphic tools"
  echo "############################################"
  #
  apk add \
    gv \
    a2ps \
    menu \
    groff \
    screen \
    dialog \
    html2ps \
    graphviz \
    imagemagick
}
#
########################### MAIN #########################
show_header
sleep 2
apk update && apk upgrade -U
#
sleep 2
install_system_tools  # 1 #
sleep 2
install_info          # 2 #
sleep 2
install_dev_tools     # 3 #
sleep 2
install_net_tools     # 4 #
sleep 2
install_other_tools   # 5 #
sleep 2
install_graphic_tools # 6 #
#
##########################################################
# end of script #
##########################################################
echo "############################################"
echo "Done! all packages have been installed "
echo "############################################"
