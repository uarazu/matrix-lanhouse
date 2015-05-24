#!/bin/bash
#rm -rf ../db/migrate/*slider*----------------ready
#rm -rf ../db/migrate/*service*---------------ready
#rm -rf ../db/migrate/*structure*-------------ready
rm -rf ../db/migrate/*game*
rake db:drop
rake db:create
#rails destroy scaffold contacts
#rails destroy scaffold footer
rails destroy scaffold games
#rails destroy scaffold services--------------ready
#rails destroy scaffold slider----------------ready
#rails destroy scaffold structure-------------ready
#./contacts.sh
#./footer.sh
./games.sh
#./services.sh--------------------------------ready
#./slider.sh----------------------------------ready
#./structure.sh-------------------------------ready
rake db:migrate
