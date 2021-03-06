$ROOT = Split-Path -Parent $MyInvocation.MyCommand.Path
Import-Module "$ROOT\..\PSPowerLine.psm1"


Describe "Version control repositories" {
    InModuleScope PSPowerline {
        Context "whose root directories" {
            $rootdir = "C:/Temp/Is-Vcs/Test"
            
            It "Is-VCSRoot returns true at the root of a git repository" {
                rm $rootdir -recurse -force -ErrorAction SilentlyContinue
                $dir = "$rootdir/.git";
                mkdir $dir -force
            
                Is-VCSRoot (Get-Item $rootdir) | Should be $true
                rm $rootdir -recurse -force -ErrorAction SilentlyContinue
            }
            
            It "Is-VCSRoot returns true at the root of a hg repository" {
                rm $rootdir -recurse -force -ErrorAction SilentlyContinue
                $dir = "$rootdir/.hg";
                mkdir $dir -force
            
                Is-VCSRoot (Get-Item $rootdir) | Should be $true
                rm $rootdir -recurse -force -ErrorAction SilentlyContinue
            }
            
            It "Is-VCSRoot returns true at the root of a svn repository" {
                rm $rootdir -recurse -force -ErrorAction SilentlyContinue
                $dir = "$rootdir/.svn";
                mkdir $dir -force
            
                Is-VCSRoot (Get-Item $rootdir) | Should be $true
                rm $rootdir -recurse -force -ErrorAction SilentlyContinue
            }
            
            It "Is-VCSRoot returns not true when not at the root of a repository" {
                rm $rootdir -recurse -force -ErrorAction SilentlyContinue
                mkdir $rootdir -force
            
                Is-VCSRoot (Get-Item $rootdir) | Should not be $true
                rm $rootdir -recurse -force -ErrorAction SilentlyContinue
            }
        }
    }
}