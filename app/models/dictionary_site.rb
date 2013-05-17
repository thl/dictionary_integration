class DictionarySite
  @@url = nil
  
  def self.get_url
    Rails.cache.fetch('dictionary/domain') do
      case InterfaceUtils::Server.environment
      when InterfaceUtils::Server::DEVELOPMENT                                                              then 'http://dev.dictionary.thlib.org/'
      when InterfaceUtils::Server::STAGING                                                                  then 'http://staging.dictionary.thlib.org/'
      when InterfaceUtils::Server::PRODUCTION, InterfaceUtils::Server::LOCAL, InterfaceUtils::Server::OTHER then 'http://dictionary.thlib.org/'
      end
    end
  end
end