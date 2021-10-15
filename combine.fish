#!/usr/bin/fish
set -g build_time (date +"%Y-%m-%d_%T" -u)
function app_fish_empty
  if test -e app.fish
    rm app.fish
  end
end
    app_fish_empty
    fish core.fish
    cat fish_libs/main.fish >> app.fish
    echo ""
    echo "#build time UTC = $build_time" >> app.fish
    chmod +x app.fish
