sudo apt-get install java-8-openjdk
sudo apt-get install unzip

# here you paste the link you grabbed in the developer.android.com site

sudo -iu jenkins wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip

sudo -iu jenkins mkdir android-sdk

sudo -iu jenkins unzip sdk-tools-linux-3859397.zip -d android-sdk

# this step is important to accept the Android SDK license

yes |sudo -iu jenkins android-sdk/tools/bin/sdkmanager --licenses
