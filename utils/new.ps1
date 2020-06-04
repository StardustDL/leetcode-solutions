if ($args.Count -gt 1) {
    if (-not (Test-Path -Path $args[0])) {
        New-Item -Path $args[0] -ItemType Directory
    }
    $dir = $args[0],$args[1] -join "/"
    if (-not (Test-Path -Path $dir)) {
        New-Item -Path $dir -ItemType Directory
        Write-Output "" | Out-File -FilePath $dir/solution.md
        Write-Output "" | Out-File -FilePath $dir/code.c
    }
}
else {
    Write-Output "Missing path"
    exit -1
}