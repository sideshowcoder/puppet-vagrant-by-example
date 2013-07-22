group { "puppet":
  ensure => "present"
}

# this is required by phantomjs
# https://github.com/ariya/phantomjs/issues/10904
package { "libfontconfig1":
  ensure => installed
}

# Setup phantomjs via netinstall
netinstall { "phantomjs":
  url => "http://phantomjs.googlecode.com/files/phantomjs-1.8.1-linux-i686.tar.bz2",
  extracted_dir => "phantomjs-1.8.1-linux-i686",
  destination_dir => "/tmp",
  postextract_command => "sudo cp /tmp/phantomjs-1.8.1-linux-i686/bin/phantomjs /usr/local/bin/"
}

