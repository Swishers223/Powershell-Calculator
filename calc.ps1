[int]$var1
[int]$var2
[string]$var3
[int]$var4

Clear-Host
$language = Read-Host -Prompt 'Choose your language ( ENG | РУС )'
Clear-Host

$language

if ($language -contains "eng") {
$Message = 'Do you wanna use my calc? ( Y | N )'
$yes = "y"
$no = "n"
Clear-Host

Write-Host $Message
$answer = Read-Host
Clear-Host
if ($answer -contains $yes) {
    while ($answer -contains $yes) {
        Write-Host "Write down some numbers!"
        [int]$var1 = Read-Host -Prompt "Number 1"
        [int]$var2 = Read-Host -Prompt "Number 2"
        [string]$var3 = Read-Host -Prompt "What operation do you need? ( + | - | * | / )"
        if ($var3 -eq "+") {
            $var4 = $var1 + $var2
        }
        if ($var3 -eq "-") {
            $var4 = $var1 - $var2
        }
        if ($var3 -eq "*") {
            $var4 = $var1 * $var2
        }
        if ($var3 -eq "/") {
            $var4 = $var1 / $var2
        }
        Write-Host "Anwser: $var4"
        Start-Sleep -Seconds 3
        Clear-Host
        Clear-Variable -Name var1
        Clear-Variable -Name var2
        Clear-Variable -Name var3
        Clear-Variable -Name var4
        Clear-Variable -Name answer
        Write-Host $Message
        $answer = Read-Host
        Clear-Host
            if ($answer -contains $no) {
                Write-Output "( ˘_˘ )"
                Start-Sleep -Seconds 3
                break
            }
            ElseIf ($answer -ne $no, $yes) {
                Clear-Host
                Write-Host "Please, use <Y> or <N>!"
                Start-Sleep -Seconds 3
                $answer = $yes
                Clear-Host
            }
    }
}
ElseIf ($answer -contains $no) {
    Clear-Host
    Write-Host "( ˘_˘ )"
    Start-Sleep -Seconds 3
    Clear-Host
    break
}
Else {
    Clear-Host
    Write-Host "Please, use <Y> or <N>!"
    Start-Sleep -Seconds 3
    Clear-Host
    break
}


Clear-Variable -Name var1
Clear-Variable -Name var2
Clear-Variable -Name var3
Clear-Variable -Name var4
Clear-Variable -Name answer
Clear-Host
break
}

ElseIf ($language -contains "рус") {
$Message = "Хотите ли вы опробовать мой новый калькулятор? ( Д | Н )"
$yes = "д"
$no = "н"
Clear-Host

Write-Host $Message
$answer = Read-Host
Clear-Host
if ($answer -contains $yes) {
    while ($answer -contains $yes) {
            Write-Host "Напишите пару чисел!"
            [int]$var1 = Read-Host -Prompt "Number 1"
            [int]$var2 = Read-Host -Prompt "Number 2"
            [string]$var3 = Read-Host -Prompt "Какую операцию будем над ними выполнять? ( + | - | * | / )"
            if ($var3 -eq "+") {
                $var4 = $var1 + $var2
            }
            if ($var3 -eq "-") {
                $var4 = $var1 - $var2
            }
            if ($var3 -eq "*") {
                $var4 = $var1 * $var2
            }
            if ($var3 -eq "/") {
                $var4 = $var1 / $var2
            }
            Write-Host "Ответ: $var4"
            Start-Sleep -Seconds 3
            Clear-Host
            Clear-Variable -Name var1
            Clear-Variable -Name var2
            Clear-Variable -Name var3
            Clear-Variable -Name var4
            Clear-Variable -Name answer
            Write-Host $Message
            $answer = Read-Host
            Clear-Host
                if ($answer -contains $no) {
                    Write-Output "( ˘_˘ )"
                    Start-Sleep -Seconds 3
                    break
                }
                ElseIf ($answer -ne $no, $yes) {
                    Clear-Host
                    Write-Host "Пожалуйста, используйте <Д> или <Н>!"
                    Start-Sleep -Seconds 3
                    $answer = $yes
                    Clear-Host
                }
    }
}

ElseIf ($answer -contains $no) {
    Clear-Host
    Write-Host "( ˘_˘ )"
    Start-Sleep -Seconds 3
    Clear-Host
    break
}
Else {
    Clear-Host
    Write-Host "Пожалуйста, используйте <д> или <н>!"
    Start-Sleep -Seconds 3
    Clear-Host
    break
}

Clear-Variable -Name var1
Clear-Variable -Name var2
Clear-Variable -Name var3
Clear-Variable -Name var4
Clear-Variable -Name answer
Clear-Host
break
}