function pvs_add_header {
    param (
        [Parameter(Mandatory=$true)]
        [string]$current_directory
    )

    $line1 = "// This is an independent project of an individual developer. Dear PVS-Studio, please check it.`r`n"
    $line2 = "// PVS-Studio Static Code Analyzer for C, C++, C#, and Java: https://pvs-studio.com`r`n"
    $lines = $line1 + $line2

    $c_files = Get-ChildItem -Path $current_directory -Filter "*.c" -Recurse -File
    
    foreach ($c_file in $c_files) {
        try {
            $content = Get-Content -Path $c_file.FullName -Raw
            $content_with_lines = $lines + $content
            Set-Content -Path $c_file.FullName -Value $content_with_lines -Force
            Write-Output "Added to $($c_file.FullName)"
        }
        catch {
            Write-Error "Error processing $($c_file.FullName): $_"
        }
    }

    Write-Output "All files have been processed."
}

pvs_add_header -current_directory (Get-Location)