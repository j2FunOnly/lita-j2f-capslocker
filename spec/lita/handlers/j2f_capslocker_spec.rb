require "spec_helper"

describe Lita::Handlers::J2fCapslocker, lita_handler: true do
  describe 'routes' do
    it { is_expected.to route('Lita caps some') }
    it { is_expected.to route('Lita cAps some') }
  end

  it 'uppercase words when asked' do
    send_message 'Lita caps test'
    expect(replies.last).to eq('TEST')
  end
end
