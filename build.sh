#!/usr/bin/env sh

rose-pine-bloom -p '$$' -f hex -o src/ src/_template.scss
sass src/rose-pine.scss dist/rose-pine.css
sass src/rose-pine-dawn.scss dist/rose-pine-dawn.css
sass src/rose-pine-moon.scss dist/rose-pine-moon.css
