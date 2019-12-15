foreach ($file in Get-ChildItem -Path ./src) {
    switch ($file.Extension) {
        ".rs" {
            Write-Host "format Rust" $file.Name;
            rustfmt $file.FullName;
        }
        ".py" {
            Write-Host "format Python" $file.Name;
            autopep8 -i $file.FullName;
        }
        ".cs" {
            Write-Host "format C#" $file.Name; 
            dotnet format --files $file.Name --workspace $file.DirectoryName;
        }
        ".c" {
            Write-Host "format C" $file.Name; 
            clang-format -style="{ BasedOnStyle: LLVM, UseTab: Never, IndentWidth: 4, TabWidth: 4, BreakBeforeBraces: Allman, AllowShortIfStatementsOnASingleLine: false, IndentCaseLabels: false, ColumnLimit: 0, AccessModifierOffset: -4 }" -i $file.FullName;
        }
        ".cpp" {
            Write-Host "format C++" $file.Name; 
            clang-format -style="{ BasedOnStyle: LLVM, UseTab: Never, IndentWidth: 4, TabWidth: 4, BreakBeforeBraces: Allman, AllowShortIfStatementsOnASingleLine: false, IndentCaseLabels: false, ColumnLimit: 0, AccessModifierOffset: -4 }" -i $file.FullName;
        }
        default {
        }
    }
}