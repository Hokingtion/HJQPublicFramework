Pod::Spec.new do |s|
  s.name = "HJQPublicFramework"
  s.version = "0.0.1" #切记要和Git提交的版本号一致
  s.summary = "Test for HJQPublicFramework."
  s.description  = "随便写点什么，这里的描述必须比上面的summary长，否则报警告，不行你可以试试" #这里的描述必须比上面的summary长，否则报警告
  s.homepage = "https://github.com/Hokingtion" #填写git主页地址
  #特别重要，这就是上面提到的新建Git项目的时候，初始化需要选择的LICENSE，没有这个提交会报错
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "HJQ" => "876508602@qq.com" }
  #平台、系统版本必填，否则会报osx相关的警告，也是提交不了，前面打包Framework的时候提到的重要性
  s.platform = :ios, "8.0"
  s.source = { :git => "https://github.com/Hokingtion/HJQPublicFramework.git", :tag => "0.0.1" }
  #特别重要，这里边的.h或者.m文件不能只是配到.framework,否则找不到，报错
  s.source_files  = "Lib/WebMonitorSDK.framework/Headers/*.{h}"
  #特别重要，这里必须配置，否则上传成功，找不到.framework,只有头文件
  s.vendored_frameworks = "Lib/WebMonitorSDK.framework"
end
