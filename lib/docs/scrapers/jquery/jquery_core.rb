module Docs
  class JqueryCore < Jquery
    self.name = 'jQuery'
    self.version = 'up to 2.0.3'
    self.base_url = 'http://local.api.jquery.com'

    html_filters.insert_before 'jquery/clean_html', 'jquery_core/entries'

    options[:root_title] = 'jQuery'

    # Duplicates
    options[:skip] = %w(/selectors/odd /selectors/even /selectors/event
      /selected /checked)

    options[:fix_urls] = ->(url) do
      url.sub! '.com/index/', '.com/index/index'
      url
    end
  end
end
