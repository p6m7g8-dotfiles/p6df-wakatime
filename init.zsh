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
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::wakatime::home::symlink() {

  ln -fs $P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-wakatime/share/w* .
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
# Function: p6df::modules::wakatime::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#  Environment:	 P6_DFZ_SRC_DIR
#>
######################################################################
p6df::modules::wakatime::init() {
  local _module="$1"
  local dir="$2"

  p6_file_load "$P6_DFZ_SRC_DIR/sobolevn/wakatime-zsh-plugin/wakatime.plugin.zsh"

  p6_return_void
}
