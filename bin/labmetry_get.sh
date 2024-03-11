#!/bin/bash

s() {
    for i in $@ ; do
        echo $i | sha1sum | head -c 2
    done
}    

year=$(date +%Y)
wget 'https://labh-curien.univ-st-etienne.fr/labmetry/api/export_publications_team/2023/'$year'/1/12/all/A/malice?giveJournals=1&giveConferences=1&giveOthers=1&format=html&sort=chronological&apikey='$(s 0428 1919 2301)'d8ecfc5eea4ed2b07c4ae912d6' -q -O - | grep -v '<h1>.*</h1>' > _includes/labmetry_raw.html

git diff _includes/labmetry_raw.html
