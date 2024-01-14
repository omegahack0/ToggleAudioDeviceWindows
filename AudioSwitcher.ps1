  ##This requires the cmdlet from https://github.com/frgnca/AudioDeviceCmdlets
  ##Run Install-Module -Name AudioDeviceCmdlets as an admin
  ##Start by running "get-audiodevice -list" and indentifying the 2 audio sources you want
  ##Write down their Index Numbers. 
  $V = Get-audiodevice -playback
  if ($V.Index -eq "4") ##Change the "A" here to one of the index numbers
  {set-audiodevice -index 1} ##Change the "B" here to the other index number
  else 
  {set-audiodevice -index 4} ##Change the "A" here to the index number you used on line 5. Save and test. That's it!