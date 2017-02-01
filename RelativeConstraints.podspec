Pod::Spec.new do |s|
  s.name = 'RelativeConstraints'
  s.version = '0.1.0'
  s.summary = 'Constraints relative to constraints and views - usable from IB'
  s.homepage = 'https://github.com/mathiasnagler'
  s.authors = { 'Mathias Nagler' => 'mathias.nagler@kupferwerk.com' }
  s.source = { :git => 'https://github.com/mathiasnagler/RelativeConstraints.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'RelativeConstraints/*.{h,m}'
  s.private_header_files = 'RelativeConstraints/*+Internal.{h,m}'

  s.dependency 'Aspects', '~> 1.4'

  s.requires_arc = true
end
