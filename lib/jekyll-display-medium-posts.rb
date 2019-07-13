require 'feedjira'
require 'jekyll'
require 'httparty'
module Jekyll
  class JekyllDisplayMediumPosts < Generator
    safe true
    priority :high
def generate(site)
      jekyll_coll = Jekyll::Collection.new(site, 'medium_posts')
      site.collections['medium_posts'] = jekyll_coll
      xml = HTTParty.get("https://medium.com/feed/@" + ENV["MEDIUM_USERNAME"]).body
      feed = Feedjira.parse(xml)
      feed.entries.each do |e|
        p "Title: #{e.title}, published on Medium #{e.url} #{e}"
        title = e[:title]
        content = e[:content]
        guid = e[:url]
        path = "./medium_posts/" + title + ".md"
        path = site.in_source_dir(path)
        doc = Jekyll::Document.new(path, { :site => site, :collection => jekyll_coll })
        doc.data['title'] = title;
        doc.data['feed_content'] = content;
        doc.data['medium_link'] = e.url;
        jekyll_coll.docs << doc
      end
    end
  end
end
