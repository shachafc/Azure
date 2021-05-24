$FWName = "FW_NAME"
$RGName = "FW_RG_NAME"
$VNetName = "FW_VNET_NAME"
$FWPIP = "FW_PUBLIC_IP_NAME"
$azfw = Get-AzFirewall -Name $FWName -ResourceGroupName $RGName
$vnet = Get-AzVirtualNetwork -ResourceGroupName $RGName -Name $VNetName
$publicip = Get-AzPublicIpAddress -Name $FWPIP -ResourceGroupName $RGName
$azfw.Allocate($vnet,@($publicip))

Set-AzFirewall -AzureFirewall $azfw
