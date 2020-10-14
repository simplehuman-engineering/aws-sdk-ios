Pod::Spec.new do |s|
   s.name         = 'SimpleAWSMobileClient'
   s.version      = '2.18.0'
   s.summary      = 'Custom Amazon Web Services SDK for iOS.'
 
   s.description  = 'Custom Amazon Web Services SDK for iOS.'
 
   s.homepage     = 'https://aws.amazon.com/mobile/sdk'
   s.license      = 'Apache License, Version 2.0'
   s.author       = { 'Amazon Web Services' => 'amazonwebservices' }
   s.platform     = :ios, '9.0'
   s.source       = { :git => 'https://github.com/simplehuman-engineering/aws-sdk-ios.git',
                      :tag => s.version}
   s.requires_arc = true

   s.dependency 'AWSAuthCore', '2.17.0'
   s.dependency 'SimpleAWSCognitoIdentityProvider', '2.18.0'

   # Include transitive dependencies to help CocoaPods resolve deeply nested
   # dependency graphs; without this we get sporadic failures compiling when a
   # project relies on AWSMobileClient
   s.dependency 'AWSCore', '2.17.0'
   s.dependency 'AWSCognitoIdentityProviderASF', '2.17.0'

   s.source_files = 'AWSAuthSDK/Sources/AWSMobileClient/*.{h,m}', 'AWSAuthSDK/Sources/AWSMobileClient/Internal/*.{h,m}', 'AWSAuthSDK/Sources/AWSMobileClient/*.swift', 'AWSCognitoAuth/**/*.{h,m,c}', 'AWSAuthSDK/Sources/AWSMobileClient/Internal/*.swift'
   s.public_header_files = 'AWSAuthSDK/Sources/AWSMobileClient/AWSMobileClient.h', 'AWSAuthSDK/Sources/AWSMobileClient/Internal/_AWSMobileClient.h', 'AWSCognitoAuth/*.h', 'AWSAuthSDK/Sources/AWSMobileClient/Internal/AWSCognitoAuth+Extensions.h', 'AWSAuthSDK/Sources/AWSMobileClient/Internal/AWSCognitoCredentialsProvider+Extension.h', 'AWSAuthSDK/Sources/AWSMobileClient/Internal/AWSCognitoIdentityUserPool+Extension.h'
 end
