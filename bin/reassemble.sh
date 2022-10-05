#!/usr/bin/env bash

CONFIG_LST=$(ls ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig-stubs)

[ -e ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json ] && rm ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json 

echo "{" > ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json 

for CONFIG in ${CONFIG_LST} ; do
   cat ${CONFIG} >> ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json 
done

echo "}" >> ${HOME}/onav-cloud/Ocean-Data-Map-Project/oceannavigator/configs/datasetconfig.json 
