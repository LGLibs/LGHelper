Pod::Spec.new do |s|
    s.name = 'LGHelper'
    s.version = '1.1.3'
    s.platform = :ios, '6.0'
    s.license = 'MIT'
    s.homepage = 'https://github.com/LGLibs/LGHelper'
    s.author = { 'Grigorii Lutkov' => 'grigorii@lutkov.dev' }
    s.source = { :git => 'https://github.com/LGLibs/LGHelper.git', :tag => s.version }
    s.summary = 'iOS helper contains a lot of useful macrosses, methods and hints for every day'
    s.library = 'z'
    s.requires_arc = true
    s.source_files = 'LGHelper/*.{h,m}'
    s.source_files = 'LGHelper/**/*.{h,m}'
end
