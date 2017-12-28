# Jekyll Display Medium Posts

A Gem that fetches your RSS feed, parses and saves the request to be used within your Jekyll Site.

[![Gem Version](https://badge.fury.io/rb/jekyll-material-theme.svg)](https://badge.fury.io/rb/jekyll-material-theme)

### [Live Demo](https://jameshamann.com/blog)

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

## Further Development

• The ability to save and view each medium post seperately.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jameshamann/jekyll-display-medium-posts. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
