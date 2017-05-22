Pod::Spec.new do |spec|
  spec.name         = 'indicate'
  spec.version      = '0.0.3'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/WayneEld/Indicate'
  spec.authors      = { 'Wayne Eldridge' => 'wayne.eldridge.dev@gmail.com' }
  spec.summary      = 'A variety of indicators for all apps.'
  spec.source       = { :git => 'https://github.com/WayneEld/Indicate.git', :tag => 'v0.0.3' }
  spec.source_files = 'Indicate/LabrinthIndicator.swift'
  spec.ios.deployment_target = '10.2'
end
