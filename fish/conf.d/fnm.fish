
# fnm

set FNM_PATH "/home/alice/.local/share/fnm"

if [ -d "$FNM_PATH" ]
  set PATH "$FNM_PATH" $PATH
  fnm env | source
  fnm env --use-on-cd --shell fish | source
end


