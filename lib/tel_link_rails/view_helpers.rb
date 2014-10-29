module TelLinkRails
  module ViewHelpers

    def tel_link(text)
      sets_of_numbers = []
      text.scan(/[\+\(\)0-9]+/) { |match| sets_of_numbers << match.gsub(/\([0-9]+\)/, '') }
      number = "#{sets_of_numbers.join('-')}"
      link_to text, "tel:#{number}"
    end

  end
end
