#Global variables
[string]$global:yes = "y"
[string]$global:no = "n"
[string]$global:yesorno
[int]$global:solution

#Functions
function Get-MathOperations {
    [CmdletBinding()]
    param (
        [string]
        $operation,

        [int]
        $int1,

        [int]
        $int2
    )
            
    #Number 1
    $int1 = Read-Host "Number 1"

    #Number 2
    $int2 = Read-Host "Number 2"

    #Operations
        $operation = Read-Host "What operation do you need? ( + | - | * | / )"
        if ($operation -eq "+") {
            $global:solution = $int1 + $int2
        }
        elseif ($operation -eq "-") {
            $global:solution = $int1 - $int2
        }
        elseif ($operation -eq "*") {
            $global:solution = $int1 * $int2
        }
        elseif ($operation -eq "/") {
            $global:solution = $int1 / $int2
        }
}

function Get-YesOrNo {
    Write-Output "Do you wanna use my calc?"
    $global:yesorno = Read-Host "( Y | N )"
}

Clear-Host
Get-YesOrNo

if ($global:yesorno -contains $global:yes) {
    while ($global:yesorno -contains $global:yes) {
        Get-MathOperations
        Write-Output "Solution: $solution"
        Start-Sleep -Seconds 3
        Clear-Host
        Get-YesOrNo
            if ($global:yesorno -contains $global:no) {
                Write-Output "( ˘_˘ )"
                Start-Sleep -Seconds 3
                Clear-Host
                break
            }
            ElseIf ($global:yesorno -ne $global:no -ne $global:yes) {
                Write-Output "Please, use <Y> or <N>!"
                Start-Sleep -Seconds 3
                Clear-Host
                break
            }
    }
}

ElseIf ($global:yesorno -contains $global:no) {
    Write-Output "( ˘_˘ )"
    Start-Sleep -Seconds 3
    Clear-Host
    break
}

Else {
    Write-Output "Please, use <Y> or <N>!"
    Start-Sleep -Seconds 3
    Clear-Host
    break
}
