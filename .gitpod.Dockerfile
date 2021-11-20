FROM gitpod/workspace-full

RUN brew update; \
    brew upgrade; \
    brew install shellcheck hadolint kubectl okteto railwayapp/railway/railway

# The URL for the armored GPG key for our Releases Key is same as https://madebythepinshub.gitlab.io/ppa/releases-key.gpg
# in case the Pages deployment when into hiccups.
RUN curl -fsSL https://gitlab.com/MadeByThePinsHub/ppa/-/raw/main/public/releases-key.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/thepinsteam-ppa-archive-keyring.gpg >> /dev/null; \
    echo "deb [signed-by=usr/share/keyrings/thepinsteam-ppa-archive-keyring.gpg] https://madebythepinshub.gitlab.io/ppa ./" | sudo tee /etc/apt/sources.list.d >> /dev/null; \
    # TODO: GitHub CLI
    sudo install-packages dive glab