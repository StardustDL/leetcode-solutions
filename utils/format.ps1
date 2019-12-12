Get-ChildItem ./src -Recurse *.rs | ForEach-Object { 
    Write-Host "format" $_.FullName; 
    rustfmt $_.FullName;
}
Get-ChildItem ./src -Recurse *.py | ForEach-Object { 
    Write-Host "format" $_.FullName; 
    autopep8 -i $_.FullName;
}
Get-ChildItem ./src -Recurse *.c | ForEach-Object { 
    Write-Host "format" $_.FullName; 
    clang-format -i $_.FullName;
}
Get-ChildItem ./src -Recurse *.cpp | ForEach-Object { 
    Write-Host "format" $_.FullName; 
    clang-format -i $_.FullName;
}