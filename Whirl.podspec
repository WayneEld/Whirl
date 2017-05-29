Pod::Spec.new do |spec|
spec.name         = 'Whirl'
spec.version      = '1.0.0'
spec.license      = { :type => 'MIT' }
spec.homepage     = 'https://github.com/WayneEld/Whirl'
spec.authors      = { 'Wayne Eldridge' => 'wayne.eldridge.dev@gmail.com' }
spec.summary      = 'A variety of indicators for all apps.'
spec.source       = { :git => 'https://github.com/WayneEld/Whirl.git', :tag => 'v1.0.0' }
spec.source_files = 'Indicate/*'
spec.ios.deployment_target = '10.2'
end
