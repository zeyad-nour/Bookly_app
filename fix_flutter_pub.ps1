# Script to fix "flutter pub get" issues
# - Configure DNS
# - Set Flutter/Dart environment variables
# - Clean project
# - Repair pub cache
# - Get packages again

Write-Host "Setting DNS for Wi-Fi to Google..."
netsh interface ip set dns name="Wi-Fi" static 8.8.8.8
netsh interface ip add dns name="Wi-Fi" 8.8.4.4 index=2

Write-Host "Setting environment variables for Flutter/Dart..."
setx PUB_HOSTED_URL "https://pub.dev" /M
setx FLUTTER_STORAGE_BASE_URL "https://storage.googleapis.com" /M

Write-Host "Cleaning Flutter project..."
flutter clean

Write-Host "Repairing pub cache..."
flutter pub cache repair

Write-Host "Running flutter pub get..."
flutter pub get

Write-Host "Done! Try running your project again."
