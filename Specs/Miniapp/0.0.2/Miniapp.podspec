
version='0.0.2'


source = { :git => 'https://github.com/liudongpu/miniapp-ios.git' }
if version == '1000.0.0'
  # This is an unpublished version, use the latest commit hash of the react-native repo, which we’re presumably in.
  source[:commit] = `git rev-parse HEAD`.strip
else
  #source[:tag] = "v#{version}"
end



Pod::Spec.new do |spec|
  spec.name = 'Miniapp'
  spec.version = version
  spec.license = { :type => 'Google', :file => 'COPYING' }
  spec.homepage = 'https://liudongpu.github.io/miniapp-book/'
  spec.summary = 'Uhutu miniapp module'
  spec.authors = 'liudongpu'

  spec.source = source
  
  spec.module_name = 'Miniapp'
  spec.header_dir = 'miniapp-ios/Miniapp/'

  spec.dependency "React", "0.59.10"



  spec.source_files= "miniapp-ios/Miniapp/**/*.{c,h,m,mm,S,cpp}"



  spec.platforms = { :ios => "9.0", :tvos => "9.2" }
end
