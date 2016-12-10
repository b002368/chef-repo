require 'chefspec'
describe 'my_cookbook::default' do
   let(:chef_run){
      ChefSpec::ServerRunner.new(  # Notice we don't converge here
          platform:'ubuntu', version:'12.04'
      )
  }
# it 'creates a greetings file, containing the platform name' do
#     expect(chef_run).to render_file('/tmp/greeting.txt').with_content('Hello!ubuntu!')
#    end

 it 'uses a node attribute as greeting text' do
    chef_run.node.normal['my_cookbook']['greeting']= "Go! ubuntu!"
    chef_run.converge(described_recipe)  # The converge happens inside the test
    expect(chef_run).to render_file('/tmp/greeting.txt').with_content('Go! ubuntu!')
  end
end
