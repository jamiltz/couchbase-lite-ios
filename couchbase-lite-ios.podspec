Pod::Spec.new do |s|
  s.name         = "couchbase-lite-ios"
  s.version      = "1.1.0"
  s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE.txt" }

  s.summary      = "Couchbase Lite is an embedded lightweight, document-oriented (NoSQL), syncable database engine."
  s.description = "**Couchbase Lite** is an embedded lightweight, document-oriented (NoSQL), syncable database engine.\\n\\n  Get more info and downloads of Couchbase Lite (for iOS and Android) via [the Couchbase mobile portal](http://mobile.couchbase.com)\\n\\n  [Click here for **official documentation for Couchbase Lite**](http://developer.couchbase.com)\\n\\n  Latency matters a lot to users, so a local database takes frustration out of the equation. It’s got JSON documents, and the same map/reduce as Couchbase Server, in a pint-sized edition.\\n\\n  Couchbase Lite compiles natively for iOS and Android. Half a megabyte optimized, for quick launch and snappy user experience on occasionally connected devices when data matters."

  s.homepage     = "http://mobile.couchbase.com"
  s.authors             = { "Jens Alfke" => "jens@couchbase.com" }
  s.platform     = :ios, "7.0"
  s.source = { :http => "http://packages.couchbase.com/builds/mobile/ios/1.1.0/1.1.0-18/couchbase-lite-ios-community_1.1.0-18.zip" }
  
  s.preserve_paths = "CouchbaseLite.framework", "LICENSE.txt"
  s.vendored_frameworks = "CouchbaseLite.framework"
  s.public_header_files = "CouchbaseLite.framework/Headers/*.h"

  s.frameworks = "CFNetwork", "Security", "SystemConfiguration"
  s.libraries = "sqlite3", "z"

  s.requires_arc = true
  s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC", "FRAMEWORK_SEARCH_PATHS" => "$\"(PODS_ROOT)/couchbase-lite-ios/**\"" }

  s.default_subspec = "Lite"

  s.subspec "Lite" do |lite|
  # default subspec, contains the CouchbaseLite.framework
  end

  s.subspec "Listener" do |listener|
  	listener.preserve_paths = "CouchbaseLiteListener.framework",
  	listener.vendored_frameworks = "CouchbaseLiteListener.framework",
  	listener.public_header_files = "CouchbaseLiteListener.framework/Headers/*.h"
  end

  
  s.frameworks = "CFNetwork", "Security", "SystemConfiguration"
  s.libraries = "sqlite3", "z"
  s.requires_arc = true
  s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC", "FRAMEWORK_SEARCH_PATHS" => "$\"(PODS_ROOT)/couchbase-lite-ios/**\"" }
end
