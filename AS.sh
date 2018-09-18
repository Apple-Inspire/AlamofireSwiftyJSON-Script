echo Installing AlamoFire and SwiftyJSON
read -p "enter name of file> " fpath
cd $fpath
#ls

sudo gem install cocoapods

pod init

read -p "enter your project folder name> " fname

cat <<EOD > Podfile
#isohelp
platform :ios, '9.0'

target '$fname' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
    pod 'Alamofire'
    pod 'SwiftyJSON'
  # Pods for $fname
 

end

EOD

pod install

echo "Done Installing you may open $fname .workspace file "
