#!/bin/bash -e
export TRIGRAM=JMF

echo "###########################################################"
echo "# Get environment"
echo "###########################################################"
echo "1) test"
echo "2) test2"
read -p "env ? " env
case $env in 
    "1"|"test")
        export ENV_NAME=test;;
    "2"|"test2")
        export ENV_NAME=test2;;
    *)
        echo -e "\nExisting ...."
        exit;;
esac

echo "#####################################################################"
echo "# create all servers, add '-e terraform_state=absent' to destroy"
echo "#####################################################################"
ansible-playbook -i localhost, -e "env_name=${ENV_NAME} env_type=${ENV_TYPE} dc_name=${DC_NAME} env_color=${ENV_COLOR}" create_cluster.yml
    