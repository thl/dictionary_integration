class DictionaryResource < ActiveResource::Base
  case InterfaceUtils::Server.environment
  when InterfaceUtils::Server::DEVELOPMENT
    self.site = 'http://127.0.0.1/'
    headers['Host'] = 'dev.dictionary.thlib.org'
  when InterfaceUtils::Server::STAGING
    self.site = 'http://127.0.0.1/' 
    headers['Host'] = 'staging-dictionary.thlib.org'
  when InterfaceUtils::Server::PRODUCTION
    self.site = 'http://127.0.0.1/'
    headers['Host'] = 'dictionary.thlib.org' 
  else
    self.site = 'http://dictionary.thlib.org/'
  end

  self.timeout = 100
  self.format = :xml
end