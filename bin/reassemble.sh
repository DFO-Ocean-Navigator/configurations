#!/usr/bin/env bash

CONFIG_LST=$(ls ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig-stubs)

[ -e ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json ] && rm ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json 

echo "{" > ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json 

for CONFIG in ${CONFIG_LST} ; do
   cat ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig-stubs/${CONFIG} >> ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json 
   sed -i '$ s/$/,/' ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json
done

sed -i '$ s/.$//' ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json
echo "}" >> ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json 
