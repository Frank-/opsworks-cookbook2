node[:deploy].each do |application, deploy|
    default[:deploy][application][:nodejs][:port] = deploy[:ssl_support] ? 443 : 8081
end
