$FWName = "FW_NAME"
$RGName = "FW_RG_NAME"

$azfw = Get-AzFirewall -Name $FWName -ResourceGroupName $RGName
$azfw.Deallocate()
Set-AzFirewall -AzureFirewall $azfw
