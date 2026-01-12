ErrorException Failed to open stream: Permission denied

The ErrorException Failed to open stream: Permission denied is a common issue in Laravel that occurs when the PHP process (which runs your Artisan command) does not have the necessary permissions to write to a specific file or directory. This is typically due to incorrect file system permissions in your Laravel project, specifically within the storage and bootstrap/cache directories. 

Solution: Adjust File Permissions 
You need to ensure that the user running the php artisan command has the appropriate read/write access. 
Identify the problematic directory/file: The error message in your terminal should indicate exactly which file or stream failed to open. Common culprits are files within storage/logs, storage/framework/cache, storage/framework/sessions, or bootstrap/cache.

Change directory ownership (Recommended approach): The most secure method is to change the ownership of the Laravel project files to your web server's user and your current command-line user's group (e.g., www-data on many Linux systems).

Replace your_user and www-data with your actual system username and web server user, respectively:

bash
sudo chown -R your_user:www-data /path/to/your/laravel/project

Set correct permissions: After changing ownership, set the recommended secure permissions for files (644) and directories (755).

bash
cd /path/to/your/laravel/project

find . -type f -print0 | xargs -0 chmod 0644 # Set permissions for files

find . -type d -print0 | xargs -0 chmod 0755 # Set permissions for directories

Ensure write access for specific directories: The storage and bootstrap/cache folders require write permissions for both the owner and the group (775).

bash
sudo chmod -R 775 storage/
sudo chmod -R 775 bootstrap/cache/

Run the command again: Once permissions are corrected, try running your original command:
bash
php artisan permission:create-permission "Edit Posts"
 
Alternative (Less Secure) Approach
If the above steps are complicated for your environment (e.g., local development on Windows), a quick but less secure fix is to recursively grant full read/write/execute permissions (777) to the storage and bootstrap/cache directories. This is not recommended for production servers.

bash
sudo chmod -R 777 storage/
sudo chmod -R 777 bootstrap/cache/

Other Potential Issues
Missing directories: Occasionally, some required subdirectories might be missing. You can create them manually if needed:

bash
mkdir -pv storage/framework/views storage/framework/sessions storage/framework/cache storage/logs

Clear cache: Cached configuration or permissions data can sometimes cause issues. Clearing the cache might help:

bash
php artisan optimize:clear
# or just
php artisan config:clear