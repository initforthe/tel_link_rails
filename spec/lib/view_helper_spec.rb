require 'spec_helper'

describe TelLinkRails::ViewHelper, type: :helper do
  include ActionView::Helpers
  include ActionView::Context
  include TelLinkRails::ViewHelper

  describe "#tel_link" do
    context 'with country code' do
      subject { tel_link('+44 (208) 123 4567') }

      it { is_expected.to eq('<a href="tel:+44-208-123-4567">+44 (208) 123 4567</a>') }
    end

    context 'with a local number' do
      subject { tel_link('0208 123 4567') }

      it { is_expected.to eq('<a href="tel:0208-123-4567">0208 123 4567</a>') }

      context 'with a different name' do
        subject { tel_link('0208 123 4567', 'Telephone') }
        it { is_expected.to eq('<a href="tel:0208-123-4567">Telephone</a>') }
      end

      context 'with a class' do
        subject { tel_link('0208 123 4567', nil, { class: 'some-class' }) }
        it { is_expected.to eq('<a class="some-class" href="tel:0208-123-4567">0208 123 4567</a>') }
      end

      context 'with a content block' do
        subject { tel_link('0208 123 4567') { 'Telephone' } }
        it { is_expected.to eq('<a href="tel:0208-123-4567">Telephone</a>') }
      end
    end
  end
end
