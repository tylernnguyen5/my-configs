#!/bin/bash
set +ex

# SASS Kickstart

mkdir sass

mkdir sass/0-plugins
touch sass/0-plugins/_plugins-dir.sass

mkdir sass/1-base
touch sass/1-base/_base-dir.sass

mkdir sass/2-layouts
touch sass/2-layouts/_layouts-dir.sass

mkdir sass/3-modules
touch sass/3-modules/_modules-dir.sass

mkdir sass/4-states
touch sass/4-states/_states-dir.sass

mkdir sass/5-themes
touch sass/5-themes/_themes-dir.sass

touch _variables.sass

touch _mixins.sass

cat  > sass/app.sass <<EOL
// IMPORT ALL SASS DIRECTORY FILES

// import global variables
@import "variables"

// import global mixins
@import "mixins"

// import your directories
@import "0-plugins/plugins-dir"
@import "1-base/base-dir"
@import "2-layouts/layouts-dir"
@import "3-modules/modules-dir"
@import "4-states/states-dir"
@import "5-themes/themes-dir"

// import any additional sass below...
EOL

mkdir css
mkdir img
