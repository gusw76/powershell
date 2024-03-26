# Define variables
$repositoryUrl = "https://github.com/gusw76/store.git"  # Replace with your repository URL
$cloneDirectory = "C:\temp\repository"  # Replace with your desired clone directory
$destinationDirectory = "C:\destination"  # Replace with your desired destination directory

# Clone the repository
git clone $repositoryUrl $cloneDirectory

# Check if the clone was successful
if (Test-Path $cloneDirectory) {
    Write-Host "Repository cloned successfully."
    
    # Copy files to the destination directory
    Copy-Item -Path "$cloneDirectory\*" -Destination $destinationDirectory -Recurse -Force
    
    Write-Host "Files copied to $destinationDirectory."
    
    # Remove the cloned directory
    Remove-Item -Path $cloneDirectory -Recurse -Force
    Write-Host "Cloned directory removed."
} else {
    Write-Host "Failed to clone the repository."
}
