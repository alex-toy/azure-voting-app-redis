$names = (az network nic list --resource-group $RGName  | ConvertFrom-Json).name
$names

$InboundRuleName = "Port_80"

az network nic ip-config create `
    --resource-group $RGName `
    --name ipconfig1 `
    --nic-name $names[0]
    # [--app-gateway-address-pools]
    # [--application-security-groups]
    # [--gateway-name]
    # [--lb-address-pools]
    # [--lb-inbound-nat-rules]
    # [--lb-name]
    # [--make-primary]
    # [--private-ip-address]
    # [--private-ip-address-version {IPv4, IPv6}]
    # [--public-ip-address]
    # [--subnet]
    # [--vnet-name]


az network nic ip-config inbound-nat-rule add `
    --resource-group $RGName `
    --inbound-nat-rule $InboundRuleName `
    --nic-name $names[0] `
    --lb-name $VMSSLoadBalancer `
    --ip-config-name ipconfig1