org="taras"
app="asgnsgtest"
stage="dev"
location="eastus"

common_pref="$org-$app-$stage-$location"

rg_name="$common_pref-rg"
echo "About to create/validate a RG named: $rg_name"
az group create --name $rg_name --location $location > /dev/null && echo "Done."

vnet_name="$common_pref-vnet"
echo "About to create/validate a VNet named: $vnet_name"
az network vnet create \
    --name $vnet_name \
    --resource-group $rg_name \
    --location $location \
    --address-prefix 10.0.0.0/16 > /dev/null && echo "Done."

subnet_count=2
echo "About to create/validate $subnet_count subnets."
i=1
while [ $i -le $subnet_count ]
do
  subnet_name="$common_pref-subnet-$i"
  az network vnet subnet create \
      --name $subnet_name \
      --vnet-name $vnet_name \
      --resource-group $rg_name \
      --address-prefix "10.0.$i.0/24" > /dev/null && echo "Subnet $i Done."
  i=$((i+1))
done

echo "About to create/validate $subnet_count ASGs."
i=1
while [ $i -le $subnet_count ]
do
  asg_name="$common_pref-asg-$i"
  az network asg create \
      --name $asg_name \
      --resource-group $rg_name \
      --location $location > /dev/null && echo "ASG $i Done."

  i=$((i+1))
done

echo "About to create/validate $subnet_count NSGs."
i=1
while [ $i -le $subnet_count ]
do
  nsg_name="$common_pref-nsg-$i"
  az network nsg create \
      --name $nsg_name \
      --resource-group $rg_name \
      --location $location > /dev/null && echo "NSG $i creation Done."

  az network nsg rule create \
      --nsg-name $nsg_name \
      --name "DenyAll" \
      --priority 1000 \
      --resource-group $rg_name \
      --access Deny \
      --direction Inbound \
      --source-address-prefixes '*' \
      --source-port-ranges '*' \
      --destination-address-prefixes '*' \
      --destination-port-ranges '*' > /dev/null && echo "NSG $i DenyAll rule added."

  az network vnet subnet update \
      --name "$common_pref-subnet-$i" \
      --vnet-name $vnet_name \
      --resource-group $rg_name \
      --network-security-group $nsg_name > /dev/null && echo "NSG $i attached to subnet $i."

  i=$((i+1))
done

i=1
while [ $i -le $subnet_count ]
do
  pip_name="$common_pref-public-ip-$i"
  az network public-ip create \
      --resource-group $rg_name \
      --name $pip_name \
      --location $location > /dev/null && echo "Public IP $i done."

  vm_name="$common_pref-vm-$i"
  az vm create \
      --resource-group $rg_name \
      --name $vm_name \
      --image UbuntuLTS \
      --admin-username taras \
      --admin-password Pass#123Pass#123 \
      --location $location \
      --size Standard_B1s \
      --asgs "$common_pref-asg-$i" \
      --vnet-name $vnet_name \
      --subnet "$common_pref-subnet-$i" \
      --public-ip-address $pip_name > /dev/null && echo "VM $i done."

  i=$((i+1))
done