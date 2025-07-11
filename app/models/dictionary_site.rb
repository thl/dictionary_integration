class DictionarySite
  @@url = nil
  
  def self.get_url
    Rails.cache.fetch('dictionary/domain', :expires_in => 1.day) do
      case InterfaceUtils::Server.environment
      when InterfaceUtils::Server::DEVELOPMENT                                                              then 'http://dev-terms.kmaps.virginia.edu/'
      when InterfaceUtils::Server::STAGING                                                                  then 'http://staging-terms.kmaps.virginia.edu/'
      when InterfaceUtils::Server::PRODUCTION, InterfaceUtils::Server::LOCAL, InterfaceUtils::Server::OTHER then 'http://terms.kmaps.virginia.edu/'
      end
    end
  end
end