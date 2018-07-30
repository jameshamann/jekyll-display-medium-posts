# Jekyll Display Medium Posts

A Gem that fetches your RSS feed, parses and saves the request to be used within your Jekyll Site.

[![Build Status](https://travis-ci.org/jameshamann/jekyll-display-medium-posts.svg?branch=master)](https://travis-ci.org/jameshamann/jekyll-display-medium-posts)

[![Gem Version](https://badge.fury.io/rb/jekyll-display-medium-posts.svg)](https://badge.fury.io/rb/jekyll-display-medium-posts)

### [Live Demo](https://jameshamann.com/blog/index.html)

## Installation

Add this line to your Jekyll site's `Gemfile` within the <b>:jekyll_plugins</b> section.

```ruby
group :jekyll_plugins do
  gem "jekyll-display-medium-posts"
end
```
And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-display-medium-posts

## Usage

And add the following line to your Jekyll site's `_config.yml`:

```yaml

collections:
  - medium_posts
```

This is where your parsed Blog Feed will be stored. From here you're able to access it in whatever page you wish.

Lastly, you'll need to set an Environment Variable for your Medium Username. For example, if your medium profile is https://medium.com/@jameshamann, your username would be <b> jameshamann </b>. The quickest way to set this would be to run the following command in your shell.

```bash

$ export MEDIUM_USERNAME=jameshamann

```

You could also set this variable in your bash profile or, if you're using [dotenv](https://github.com/bkeepers/dotenv), you can add this to your <b> .env </b> file.

For example, you could create a ```blog.html``` page with the following code.

```html
<h2> Latest Blog Posts </h2>

{% for e in site.medium_posts %}

<div class="row">
  <h3>{{e.title}}</h3>
  <p>{{e.feed_content}}</p>

  {% endfor %}

</div>

```
This will create an endless scroll of your latest blog posts.

You can test if this works by running ```jekyll serve``` and monitoring the output on your terminal. You should notice a list of your latest posts, along with their titles, like this.

```
→ jekyll serve
Configuration file: yourpath/_config.yml
            Source: /yourpath
       Destination: /yourpath/_site
 Incremental build: disabled. Enable with --incremental
      Generating...
W, [2017-12-29T14:12:28.986083 #20647]  WARN -- Feedjira: Failed to parse last modified ''
"Title: React with CircleCI, AWS S3 and AWS CloudFront, published on Medium https://blog.cloudboost.io/react-with-circleci-aws-s3-and-aws-cloudfront-844a1b2c75c9?source=rss-1a0f244d9caf------2 #<Feedjira::Parser::RSSEntry:0x00007ff9a34e0300>"
"Title: Net Neutrality, published on Medium https://medium.com/@jameshamann/net-neutrality-61c6b0c4bd26?source=rss-1a0f244d9caf------2 #<Feedjira::Parser::RSSEntry:0x00007ff9a42ab7c8>"
"Title: Ethereum and Blockchain Technology, published on Medium https://cryptocurrencyhub.io/ethereum-and-blockchain-technology-261d9342caf8?source=rss-1a0f244d9caf------2 #<Feedjira::Parser::RSSEntry:0x00007ff9a3667458>"
"Title: Creating your own Jekyll Theme Gem, published on Medium https://medium.com/@jameshamann/creating-your-own-jekyll-theme-gem-1f8180a0e4b8?source=rss-1a0f244d9caf------2 #<Feedjira::Parser::RSSEntry:0x00007ff9a390ebe8>"
"Title: Cloud Computing Service Types, published on Medium https://medium.com/@jameshamann/cloud-computing-service-types-3da6998a7a11?source=rss-1a0f244d9caf------2 #<Feedjira::Parser::RSSEntry:0x00007ff9a4c3a8e8>"
"Title: Rails 5 API, React, Bitbucket Pipelines and AWS Elastic Beanstalk — Part One, published on Medium https://blog.cloudboost.io/rails-5-api-react-bitbucket-pipelines-and-aws-elastic-beanstalk-part-one-f0f0bb67112f?source=rss-1a0f244d9caf------2 #<Feedjira::Parser::RSSEntry:0x00007ff9a4c72d60>"
"Title: Hi Martin Raskovsky, thanks for getting in touch!, published on Medium https://medium.com/@jameshamann/hi-martin-raskovsky-thanks-for-getting-in-touch-66b113c77b03?source=rss-1a0f244d9caf------2 #<Feedjira::Parser::RSSEntry:0x00007ff9a366e3c0>"
"Title: Provisioning SSL certificates on your Server, published on Medium https://medium.com/@jameshamann/provisioning-ssl-certificates-on-your-server-7597ec17a66?source=rss-1a0f244d9caf------2 #<Feedjira::Parser::RSSEntry:0x00007ff9a368b790>"
"Title: React-Native and Firebase — Part One Simple Authentication, published on Medium https://blog.cloudboost.io/react-native-and-firebase-part-one-simple-authentication-3b233fff5b3f?source=rss-1a0f244d9caf------2 #<Feedjira::Parser::RSSEntry:0x00007ff9a3673a50>"
"Title: Setting up an Ubuntu EC2 instance, published on Medium https://medium.com/@jameshamann/setting-up-an-ubuntu-ec2-instance-from-scratch-78a166167a22?source=rss-1a0f244d9caf------2 #<Feedjira::Parser::RSSEntry:0x00007ff9a34b04c0>"
                    done in 5.193 seconds.
 Auto-regeneration: enabled for '/yourpath'
    Server address: http://127.0.0.1:4000//
  Server running... press ctrl-c to stop.
```

## Further Development

• The ability to save and view each medium post seperately.
• The ability to automate updating the "Latest Blog Posts" feed.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jameshamann/jekyll-display-medium-posts. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## ToDo

• Add proper tests.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
