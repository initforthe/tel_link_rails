module TelLinkRails
  module ViewHelper

    def tel_link(number, name = nil, html_options = {}, &block)
      sets_of_numbers = []
      sets_of_numbers = number.scan(/[\+0-9]+/)
      num = "#{sets_of_numbers.join('-')}"

      html_options['href'] = "tel:#{num}"

      content_tag(:a, name || number, html_options, &block)
    end

  end
end
