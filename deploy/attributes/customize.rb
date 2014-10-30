file 'motd' do
    content 'A wise cow once said. You got beef mate!?'
end
node[:deploy].each do |application, deploy|
    default[:deploy][application][:nodejs][:port] = deploy[:ssl_support] ? 443 : 8081
end
