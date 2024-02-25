  ##This requires the cmdlet from https://github.com/frgnca/AudioDeviceCmdlets
  ##Run Install-Module -Name AudioDeviceCmdlets as an admin
  ##Start by running "get-audiodevice -list" and indentifying the 2 audio sources you want

  ##Use 'Get-audiodevice -list' to get the correct name for your audio device then enter that is the string to search for for your first and second device
  $Device1=Get-audiodevice -list | ForEach-Object {if($_.name -eq 'Speakers (HyperX Cloud II Wireless)'){$_.index}}
  $Device2=Get-audiodevice -list | ForEach-Object {if($_.name -eq 'Speakers (High Definition Audio Device)'){$_.index}}

  $V = Get-audiodevice -playback
  if ($V.Index -eq $Device1)
  {set-audiodevice -index $Device2}
  else 
  {set-audiodevice -index $Device1}
