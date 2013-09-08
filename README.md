# mI Player

mI Player is a very basic one page app for music streaming and downloading.

The app allows the user to upload music, view a list of currently uploaded music and delete any existing music.
The music can be downloaded in one of three ways:

* stream it with HTML5 Audio
* download it via HTTP
* download it using a torrent file

The app assumes your using Amazon S3 for storing your music files and utilizes 'aws-s3' gem to handle all the interaction with Amazon servers.

## Getting started

Before you get started you'll need to got to the config/application.rb file in your application and add your Amazon S3  Access Key ID and Secret Access keys where it states.

You'll also have to add the name of the S3 bucket where your music files are stored in a constant called 'BUCKET' in the same file.

~~~ruby
require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Mp3app
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]

    AWS::S3::Base.establish_connection!(
      :access_key_id     => 'Put your Access Key ID Here',
      :secret_access_key => 'Put your Secret Access Key here'
    )

    BUCKET = 'Bucket name goes here'

  end
end
~~~


###Note

~~~
The application will attempt to create a connection to Amazon S3 as soon as the application is started (the application.rb file loads when your application starts up) and the app will load (or not) depending on whether the connection was successful.
~~~