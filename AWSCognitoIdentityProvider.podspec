Pod::Spec.new do |s|
  s.name         = 'SimpleAWSCognitoIdentityProvider'
  s.version      = '2.17.0'
  s.summary      = 'Custom Amazon Cognito Identity Provider SDK for Simplehuman'

  s.description  = 'Custom Amazon Cognito Identity Provider SDK for Simplehuman'

  s.homepage     = 'http://aws.amazon.com/mobile/sdk'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Amazon Web Services' => 'amazonwebservices' }
  s.platform     = :ios, '9.0'
  s.source       = { :git => 'https://github.com/simplehuman-engineering/aws-sdk-ios.git',
                     :tag => s.version}
  s.requires_arc = true
  s.frameworks   = 'Security', 'UIKit'

  s.dependency 'AWSCore', '2.17.0'
  s.dependency 'AWSCognitoIdentityProviderASF', '2.17.0'

  s.source_files = 'AWSCognitoIdentityProvider/**/*.{h,m,c}'
  s.public_header_files = 'AWSCognitoIdentityProvider/*.h'
  s.private_header_files = 'AWSCognitoIdentityProvider/Internal/*.h'
end
