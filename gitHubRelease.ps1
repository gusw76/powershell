# Define variables
<<<<<<< HEAD
$repositoryUrl = "https://github.com/gusw76/store.git"  # Replace with your repository URL
=======
$repositoryUrl = "https://github.com/username/repository.git"  # Replace with your repository URL
>>>>>>> 84271df85e8ae100d9df5c3cf029eb7ac665e62b
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
