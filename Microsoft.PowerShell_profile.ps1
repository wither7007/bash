Function cpa { RunDll32.exe shell32.dll,Control_RunDLL }
#https://github.com/equalsraf/win32yank
win32yank -o
function ditto() {
start "C:\Program Files\Ditto\Ditto.exe"
}
function guts(){
gci C:\projects\music\gut\script
cd C:\projects\music\gut
}
function ms4() {
  start "C:\Program Files\MuseScore 4\bin\MuseScore4.exe"
}
function midi() {
  start "C:\Users\jayst\OneDrive\Desktop\MidiSheetMusic-2.6.exe"
}
function syn() {
start "C:\Program Files (x86)\Synthesia\Synthesia.exe"
}
function vt ($a) {
Start-Process  "vlc"  -ArgumentList "--no-video-title", "$a"
}
function fdt ($a) {

 fd -a -L --changed-within $a
}
function gst {
    echo $function:gs
    echo '----'
				git status
			}

function linux {
$CurrentDirectory = Get-Location
echo "$CurrentDirectory" | sed 's|C:\\|/mnt/c/|g'| sed 's|\\|/|g' | nvim -
}
function path {
$CurrentDirectory = Get-Location
echo "$CurrentDirectory" | nvim -
}

function pc {
$CurrentDirectory = Get-Location
echo "$CurrentDirectory" | clip
}

function fdd {
  fd -d 1 -tf
}
function gstat {
  git log --stat | v -
}
function bas {
  cd \all\bash
}
function fdc {
gci -Directory | Format-Wide  -Column 3
}

function ffc {
gci -File | Format-Wide  -Column 5
}
function gitp {
    echo $function:gitp
  $Age = Read-Host "any key to continue"
  git log -p -1 | v -
}
function gsw($a) {
				git switch $a
			}
function lr {
  gci -Force | sort LastWriteTime
}
function gol {
  git log --oneline
}
function gvm {
  git log | v -
}
function graph {
  echo " git log --graph --oneline --branches | v -"
   git log --graph --oneline --branches
}
function gstage {
  echo $function:gstage
  git status -vv | v -
}
function gb{
		git branch
}
function tch {
  touch index.html style.css script.js
}
function down {
  cd 'C:\Users\jayst\Downloads'
}
function sw{
				git switch -
	}
function vd{
  git diff | v -
}

function gic{
  param(
    [Parameter()]
    [String]$m = "ok"
)
    echo $function:gic

				git commit -am $m
        echo "------------------------"
}
function nib ($a) {
  echo "  node --inspect-brk $a"
  node --inspect-brk $a
}

function nin ($a) {
  echo "  node --inspect $a"
  node --inspect $a
}

function no ($a) {
  echo "  node  $a"
  node  $a
}
function rex ($a) {

gci | ?{$_.Name -match $a}
}

function mc {
  cd C:\Users\jayst\OneDrive\Documents\MuseScore3\Scores
}
function msc {
"C:\Program Files\MuseScore 4\bin\MuseScore4.exe"
}
function ld {
  gci -directory |  sort LastWriteTime
}
function mt($a) {
  Get-ChildItem -Recurse | Where-Object { $_.FullName -match $a }
}
function vz {
  vlc -Z .
}
function ph {
  sqllite.py
  v C:\projects\sqllite\ipy
}
function lds {
  gci -Directory -Recurse | foreach { $_.fullName }
}

function se ($a) {
    dos2Unix "C:\Users\jayst\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
  rg -i $a c:\all\his
}
#goes back or forward n directories

Function b([int]$n = 1) {
    echo "foreach ($i in 1..$n) { cd - }"
    foreach ($i in 1..$n) { cd - }
}

Function f([int]$n = 1) {
  echo "    foreach ($i in 1..$n) { cd + }"
    foreach ($i in 1..$n) { cd + }
}

function hd ($a) {
  head $a
}
function prc ($a) {
  pr -a -8 -t -e20 -i -w  140 -i $a 
}

function fdi ($a) {
  fd -H -I $a
}

function fda ($a) {
  fd -H -I $a
}

function fd1 ($a) {
  fd -H -I -d 1 $a
}

function rgi ($a) {
  rg -i -L $a
}
function lw {
  ls | Format-Wide -Column 5
}

function hl {
  dos2Unix "C:\Users\jayst\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
  tail "C:\Users\jayst\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" -n 30
}
function h3 {
  dos2Unix "C:\Users\jayst\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
  tail "C:\Users\jayst\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" -n 30
}
function xxx ($a) {
  ri $a -force -recurse
}
function siz {
  C:\all\ps\size.py .
}
function rgh {
  rg --help | v -
}
function npml {
  npm list --depth=0
}
function fdh {
  fd --help | v -
}

function spr($a) {
  stop-process -id $a
}

function duh(){
  du -h --max-depth=1
}
function fl() {
   gci . | sort LastWriteTime | select name,creationtime, Directory
}
function tskl {
  tasklist /apps | v -
}
function f2 {
  echo "fd -a -tf --changed-within 2d | more"
fd -a -tf --changed-within 2d | more
}
function f1 {
  echo "fd -a -tf --changed-within 1d | more"
fd -a -tf --changed-within 1d | more
}
function tre {
  echo "  tree $Args[0]  /f | v - "
  tree $Args[0]  /f 
}
function trev {
  echo "  tree $Args[0]  /f | v - "
  tree $Args[0]  /f | v -
}

function lt {
    
  param(
    [Parameter()]
    [String]$m = ".*"
    )
  echo $m
    gci | sort LastWriteTime | rg -i $m
}

function l {
    
  param(
    [Parameter()]
    [String]$m = ".*"
    )
  echo $m
    gci | sort LastWriteTime | rg -i $m
}
function ifr() {
start "C:\Program Files\IrfanView\i_view64.exe"
}
function ls(){
    gci | sort LastWriteTime
}
function tails() {
  tail -n 30 \all\his
}
function rgh {
  rg --help | v -
}
function d3(){
  gci -Directory $Args[0] | sort LastwriteTime| Format-Wide -Column 3
}
function f3(){
  gci -File $Args[0]| sort lastwritetime| Format-Wide -Column 3
}
function chr($a)
{$fil=gci $a | % {$_.fullname}
chrome $fil}

function la {
				cd c:\all\note
				gci
}
#function from https://stackoverflow.com/questions/15694338/how-to-get-a-list-of-custom-powershell-functions
#gets all self functions
Function Get-MyCommands {
    Get-Content -Path $profile | Select-String -Pattern "^function.+" | ForEach-Object {
        # Find function names that contains letters, numbers and dashes
        [Regex]::Matches($_, "^function ([a-z0-9.-]+)","IgnoreCase").Groups[1].Value
    } | Where-Object { $_ -ine "prompt" } | Sort-Object
}
function cpu(){
Get-Process | Where-Object {$_.CPU -gt 10} | Sort-Object -Property CPU -Descending | Select-Object ProcessName, CPU | nvim -
}				
function newt(){
				wt -w 0 nt -d .
}
# getCpu function from 
# https://4sysops.com/archives/powershell-get-process-managing-processes/
function Getc
{
    $CPUPercent = @{
        Name = 'CPUPercent'
        Expression = {
            $TotalSec = (New-TimeSpan -Start $_.StartTime).TotalSeconds
            [Math]::Round( ($_.CPU * 100 / $TotalSec), 2)
        }
    }
    Get-Process | 
    Select-Object -Property Name, $CPUPercent, Description |
    Sort-Object -Property CPUPercent -Descending |
    Select-Object -First 15
}
function his(){
dos2Unix "C:\Users\jayst\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
Copy-Item "C:\Users\jayst\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" -destination "c:\all\his"
nvim +$ C:\all\his
}
#show all commands

function all{
				gcm | sort source | nvim -
}
function pdn($a) {
#start paint.net
				start "C:\Program Files\paint.net\paintdotnet.exe " $a
}
function vc($a) {
start-process "C:\Program Files (x86)\VideoLAN\VLC\vlc.exe" $a
}


#Unique all lines in a file
function unq(){
$hash = @{}      # define a new empty hash table
Get-Content c:\all\his | %{if($hash.$_ -eq $null) { $_ }; $hash.$_ = 1} > nhis #get content hash file
dos2unix.exe nhis
}
function uhis(){
#Unique all lines in history file
$hash = @{}      # define a new empty hash table
get-Content C:\Users\jayst\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt | %{if($hash.$_ -eq $null) { $_ }; $hash.$_ = 1} > C:\Users\jayst\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.bak
}
function cld(){
				#set current time and date to clipboard
			 Write-Output $(get-date -Format "dddd MM/dd/yyyy HH:mm ") | Set-Clipboard
			 }	
#$host.UI.RawUI.WindowTitle = "PS 7.1"
function pss() {
Get-Process | sort-object cpu -descending | nvim -
}
function gn{
				v c:\all\note\notes
}
#good function to go up dir (u or u[#]
for($i = 1; $i -le 5; $i++){
  $u =  "".PadLeft($i,"u")
  $unum =  "u$i"
  $d =  $u.Replace("u","../")
  Invoke-Expression "function $u { push-location $d }"
  Invoke-Expression "function $unum { push-location $d }"
}
#notes ft auto
function gw{
	Get-Process | Select Id,MainWindowTitle,ProcessName | where{$_.MainWindowTitle -ne ""} | ft -auto
}				
function gws{
	Get-Process | Select Id | where{$_.MainWindowTitle -ne ""} | ft -auto
}				

function gpn{
    v c:\all\note\power
}
function mps{
    cd c:\projects
}
function p3 {
    python $args[0] 
}

function np {
    start "C:\Program Files (x86)\Notepad++\notepad++.exe"
}
function sup {
v C:\Users\jayst\OneDrive\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

}

function fun {
v C:\Users\jayst\OneDrive\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

}
function mkc ($a) {
				md $a
				cd $a
			}
#temp set vscode weird path !todo
function cdc {
#$a="cd "
$a+=pwd | % {$_.path}
echo $a | set-clipboard
}
function ex ($a) {
  exiftool -j $a | nvim -
}
function ex2 ($a) {
  exiftool -j $a | rg title
}

function ex3 ($a) {
  exiftool -j $a | rg Duration
}

#make room for unix diff
Remove-Alias -Force -name diff
Remove-Alias -Force -name ls
$env:PYTHONSTARTUP= "c:\projects\py\startup.py"
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
function ve($x) {
  nvim +$ $x
}

function cdy() {
  cd c:\you
}
#https://stackoverflow.com/questions/29170594/going-back-to-directory/69490652#69490652
Function b([int]$n = 1) {
    foreach ($i in 1..$n) { cd - }
}

Function f([int]$n = 1) {
    foreach ($i in 1..$n) { cd + }
}
Function u([int]$n = 1) {
    cd (@('..') * $n -join '/')
}

#u 3
Set-Alias pu Push-Location
Set-Alias po Pop-Location

set-alias aud "C:\Program Files\Audacity\Audacity.exe"
set-alias code "C:\Users\jayst\AppData\Local\Programs\Microsoft VS Code\bin\code.cmd"
set-alias mid MidiSheetMusic-2.6.exe
set-alias tsk taskmgr
set-alias rc robocopy
set-alias ctj convertto-json
set-alias fm c:\vifm\vifm.exe
set-alias g gvim
set-alias py python
set-alias i3 ipython
set-alias v nvim
set-alias hf hyperfine
set-alias lse live-server
set-alias c cls 
set-alias ms "C:\Program Files\MuseScore 3\bin\MuseScore3.exe"
set-alias .... "cd ..\..\.."
set-alias irf I_view64.exe
# set-alias sup g C:\Users\jayst\OneDrive\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 
set-alias ahk C:\all\note\first.ahk
set-Alias np "C:\Program Files (x86)\Notepad++\notepad++.exe"
#start "C:\all\ps\akey.ps1"
$ENV:EDITOR = "C:\tools\neovim\Neovim\bin\nvim.exe"
#start vim autofill
import-module C:\Users\jayst\OneDrive\Documents\WindowsPowerShell\Modules\posh-git\1.0.0\posh-git.psd1
#make neovim the global editor
$env:editor = "C:\tools\neovim\Neovim\bin\nvim.exe"
cls
write-host("Generative Pre-trained Transformer 3 (GPT-3) is an autoregressive language model")
write-host("v C:\Users\jayst\OneDrive\Documents\PowerShell\Microsoft.PowerShell_profile.ps1")
#start "C:\Program Files\Google\Chrome\Application\chrome.exe"
$env:Path = 'C:\Program Files\MuseScore 4\bin\;C:\projects\music\gut\script;C:\Program Files\IrfanView;' + $env:Path


Import-Module PSReadLine

Set-PSReadLineOption -PredictionSource History

Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -Colors @{ InlinePrediction = '#875f5f'}
start "C:\Program Files\Ditto\Ditto.exe"

Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord
mps
