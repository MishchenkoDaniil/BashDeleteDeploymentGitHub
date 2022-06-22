RESTART=(./del-pel.sh)
#!/bin/bash
export USER=#hello-world
export TOKEN=#hello-world
export USER1=#hello-world
curl -u $USER:$TOKEN https://api.github.com/repos/$USER1/client/deployments     
echo "Input ID"
read ID
curl -u $USER:$TOKEN -X DELETE https://api.github.com/repos/$USER1/client/deployments/$ID
(exec "$RESTART");
