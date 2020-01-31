git clone https://github.com/hakimel/reveal.js.git
git clone https://github.com/tooxoot/reveal_progress_bar.git

rm -rf reveal.js/index.html
rm -rf reveal.js/README.md
rm -rf reveal.js/.gitignore
mv reveal.js/* .
rm -rf -r reveal.js

mkdir plugin/reveal-progress-bar

mv reveal_progress_bar/reveal-progress-bar.js plugin/reveal-progress-bar

find reveal_progress_bar/*.css | sed 's/.*/mv & css/' | bash

rm -rf reveal_progress_bar

npm install

