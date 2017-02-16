
Pod::Spec.new do |s|
  s.name             = 'RBUtils'
  s.version          = '1.0.8'
  s.summary          = 'A collection of common tools for ios development'
  s.homepage         = 'https://github.com/baxiang/RBUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baxiang' => 'baxiang1989@163.com' }
  s.source           = { :git => 'https://github.com/baxiang/RBUtils.git', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.source_files = 'RBUtils/Classes/**/*'
  
end
