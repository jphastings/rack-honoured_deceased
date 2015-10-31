describe Rack::HonouredDeceased do
  let(:base_app) { lambda { |env| [200, {'Content-Type' => 'text/plain'}, ["Site body"]] } }
  let(:app) { described_class.new(base_app, honoured) }
  let(:response) { Rack::MockRequest.new(app).get('/') }
  let(:gnud_names) { [*honoured].map { |name| "GNU #{name}" } }

  subject { response }

  context 'with one honoured name' do
    let(:honoured) { "Terry Pratchett" }

    its(:headers) { should include 'X-Clacks-Overhead' }
    context 'the clacks header' do
      subject { response.headers['X-Clacks-Overhead'] }

      it { should eq gnud_names }
    end
  end

  context 'with many honoured names' do
    let(:honoured) { ["Terry Pratchett", "John Dearheart"] }

    its(:headers) { should include 'X-Clacks-Overhead' }
    context 'the clacks header' do
      subject { response.headers['X-Clacks-Overhead'] }

      it { should include *gnud_names }
    end
  end

  context 'with no honoured name' do
    let(:honoured) { [] }

    its(:headers) { should_not include 'X-Clacks-Overhead' }
  end  
end
