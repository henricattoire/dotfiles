#
# j (1)
#
# Copyright (c) 2021 Henri Cattoire. Licensed under the WTFPL license.
#
function j() {
  J=$(perl ${_J_LIB:-$HOME/.local/lib/j.pl} $@) && cd $J || ([[ -n $J ]] && echo $J)
}

# j automatically learns (i.e. add cd'ed directories to memory)
[[ ${_J_LEARN:-1} -eq 0 ]] || {
  function jd() {
    builtin cd $1 && perl ${_J_LIB:-$HOME/.local/lib/j.pl} -m
    return 0
  }
  alias cd="jd"
}
