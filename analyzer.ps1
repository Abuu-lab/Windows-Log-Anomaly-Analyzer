#requires -Version 5.1
# Learning starter: fictional data, not a real Sysmon event.
# This script only displays data. It does not start the sample process.

$processSample = [PSCustomObject]@{
    ProcessId   = 1001
    Image       = 'C:\Windows\System32\notepad.exe'
    ParentImage = 'C:\Windows\explorer.exe'
    Source      = 'Synthetic sample'
}

$processSample | Format-Table ProcessId, Image, ParentImage, Source -AutoSize -Wrap
