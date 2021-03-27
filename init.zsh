# shellcheck shell=zsh

######################################################################
#<
#
# Function: p6df::modules::wakatime::deps()
#
#>
######################################################################
p6df::modules::wakatime::deps() {
  ModuleDeps=(
    sobolevn/wakatime-zsh-plugin
  )
}

######################################################################
#<
#
# Function: p6df::modules::wakatime::home::symlink()
#
#>
######################################################################
p6df::modules::wakatime::home::symlink() {

  ln -fs $P6_DFZ_SRC_P6M7G8_DIR/p6df-wakatime/share/w* .
}

######################################################################
#<
#
# Function: p6df::modules::wakatime::langs()
#
#>
######################################################################
p6df::modules::wakatime::langs() {

  pip install wakatime
}

######################################################################
#<
#
# Function: p6df::modules::wakatime::init()
#
#>
######################################################################
p6df::modules::wakatime::init() {

  . $P6_DFZ_SRC_DIR/sobolevn/wakatime-zsh-plugin/wakatime.plugin.zsh
}
