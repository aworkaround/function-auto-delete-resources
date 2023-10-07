param($Timer)

Import-Module -Name 'Az.Resources', 'Az.Accounts' -Force

Get-AzSubscription | Where-Object State -NE 'Disabled' | ForEach-Object {
    Set-AzContext -SubscriptionObject $_
    Get-AzResourceGroup | Select-Object -Property Location, ResourceGroupName, Tags
}