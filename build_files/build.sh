#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
#dnf5 install -y tmux 

rpm-ostree override remove \
    # browsers
    firefox \
    firefox-langpacks \
    plasma-browser-integration \
    fedora-chromium-config-kde \
    # kde utils
    khelpcenter \
    kcharselect \
    spectacle \
    ark \
    ark-libs \
    krfb \
    krfb-libs \
    kfind \
    kinfocenter \
    kdebugsettings \
    kwalletmanager5 \
    kde-partitionmanager \
    kwrite \
    plasma-welcome \
    plasma-systemmonitor \
    plasma-discover \
    plasma-discover-flatpak \
    plasma-discover-kns \
    plasma-discover-libs \
    plasma-discover-notifier \
    filelight \
    # fcitx5
    fcitx5 \
    fcitx5-mozc \
    fcitx5-data \
    fcitx5-unikey \
    fcitx5-chewing \
    fcitx5-sayura \
    fcitx5-chinese-addons \
    fcitx5-m17n \
    fcitx5-chinese-addons-data \
    fcitx5-lua \
    fcitx5-hangul \
    fcitx5-libthai \
    fcitx5-configtool \
    fcitx5-gtk \
    fcitx5-gtk3 \
    fcitx5-gtk4 \
    fcitx5-libs \
    fcitx5-qt \
    fcitx5-qt-libfcitx5qt6widgets \
    fcitx5-qt-libfcitx5qtdbus \
    fcitx5-qt-qt6gui \
    fcitx5-qt5 \
    fcitx5-qt6 \
    kcm-fcitx5 \
    libime \
    libime-data \
    # journald
    kjournald \
    kjournald-libs \
    # akonadi
    akonadi-server \
    akonadi-server-mysql \
    # etc
    htop

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
