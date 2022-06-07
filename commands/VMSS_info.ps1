"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


################################################################
"VMSS configuration :"

az vmss list-instance-connection-info `
    --resource-group alexeirg `
    --name udacity-vmss



    ssh udacityadmin@52.151.44.227 -p 50000