if ($args.Count -gt 1) {
    $dir = $args[0],$args[1] -join "/"
    if (Test-Path -Path $dir) {
        Remove-Item -Path $dir -Recurse
    }
}
else {
    Write-Output "Missing path"
    exit -1
}