#################################################
# profile.ps1
#
# Hodgepodge of utilities for use in powershell

Import-Module $HOME\.posh-git\posh-git

function Get-Time { return $(get-date | foreach { $_.ToLongTimeString() } ) }
function prompt
{
    # Write the time 
    write-host "[" -noNewLine
    write-host $(Get-Time) -foreground yellow -noNewLine
    write-host "] " -noNewLine
    # Write the path
    write-host $($(Get-Location).Path.replace($home,"~").replace("\","/")) -foreground green -noNewLine

    Write-VcsStatus
    write-host $(if ($nestedpromptlevel -ge 1) { '>>' }) -noNewLine
    return "> "
}

# LS.MSH 
# Colorized LS function replacement 
# /\/\o\/\/ 2006 
# http://mow001.blogspot.com 
function LL
{
    param ($dir = ".", $all = $false) 

    $origFg = $host.ui.rawui.foregroundColor 
    if ( $all ) { $toList = ls -force $dir }
    else { $toList = ls $dir }

    foreach ($Item in $toList)  
    { 
        Switch ($Item.Extension)  
        { 
            ".Exe" {$host.ui.rawui.foregroundColor = "Yellow"}
            ".ps1" {$host.ui.rawui.foregroundColor = "Yellow"} 
            ".cmd" {$host.ui.rawui.foregroundColor = "Red"} 
            ".msh" {$host.ui.rawui.foregroundColor = "Red"} 
            ".vbs" {$host.ui.rawui.foregroundColor = "Red"} 
            Default {$host.ui.rawui.foregroundColor = $origFg} 
        } 
        if ($item.Mode.StartsWith("d")) {$host.ui.rawui.foregroundColor = "Green"}
        $item 
    }  
    $host.ui.rawui.foregroundColor = $origFg 
}

function lla
{
    param ( $dir=".")
    ll $dir $true
}

function la { ls -force }

function docker-rm-all {
  docker ps -a | Foreach{ docker rm ($_ -split "\s+")[0]}
}

function docker-volume-rm-all {
  docker volume ls  | Foreach {docker volume rm ($_ -split '\s+')[1]}
}