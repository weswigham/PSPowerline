# *PSPowerline* #
[![Build status](https://ci.appveyor.com/api/projects/status/imiy83nolslj5khc/branch/master)](https://ci.appveyor.com/project/chrisbenti/pspowerline/branch/master)

PSPowerline is a PowerShell module that creates a prompt similar to a very popular [Oh-My-ZSH Theme](https://gist.github.com/agnoster/3712874).

# Installation

- Git clone in your Powershell Modules directory
- Add to your profile

# Configuration

Variable Name  | Setting
------------- | -------------
```$global:PSPL:Num_Chars = 3```  | The number of characters in shorten path folder names in the prompt.

## Screenshot ##
![Picture of what PSPowerline looks like](http://i.imgur.com/YuyiD0M.png)

## Testing 
Testing is done with the [Pester](https://github.com/pester/Pester) framework.

To execute tests, run "test.bat" from the project root.

## Inspiration and Resources ##
- [Oh-My-ZSH Theme](https://gist.github.com/agnoster/3712874)
- [Patched Fonts](https://gist.github.com/qrush/1595572)
