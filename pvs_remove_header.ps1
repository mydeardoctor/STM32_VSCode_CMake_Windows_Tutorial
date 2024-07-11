function pvs_remove_header {
    param (
        [Parameter(Mandatory=$true)]
        [string]$current_directory
    )

    $line1 = "// This is an independent project of an individual developer. Dear PVS-Studio, please check it."
    $line2 = "// PVS-Studio Static Code Analyzer for C, C++, C#, and Java: https://pvs-studio.com"

    $c_files = Get-ChildItem -Path $current_directory -Filter "*.c" -Recurse -File

    foreach ($c_file in $c_files) {
        try {
            $content = Get-Content -Path $c_file.FullName -Raw
            $content_lines = $content -split "`r?`n"
            if (($content_lines.Count -ge 2) -and ($content_lines[0] -eq $line1) -and ($content_lines[1] -eq $line2)) {
                $content_without_lines = $content_lines[2..($content_lines.Count - 1)] -join "`r`n"
                Set-Content -Path $c_file.FullName -Value $content_without_lines -Force
                Write-Output "Removed from $($c_file.FullName)"
            }
        }
        catch {
            Write-Error "Error processing $($c_file.FullName): $_"
        }
    }

    Write-Output "All files have been processed."
}

pvs_remove_header -current_directory (Get-Location)
