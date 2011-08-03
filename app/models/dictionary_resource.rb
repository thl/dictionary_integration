class DictionaryResource < ActiveResource::Base
  hostname = Socket.gethostname.downcase
  if hostname == 'sds6.itc.virginia.edu'
    self.site = 'http://127.0.0.1/'
    headers['Host'] = 'staging.dictionary.thlib.org'
  elsif hostname == 'dev.thlib.org'
    self.site = 'http://127.0.0.1/'
    headers['Host'] = 'dev.dictionary.thlib.org'
#  elsif hostname.ends_with? 'local'
#    self.site = 'http://localhost/master/places/'
  elsif hostname =~ /sds[3-8].itc.virginia.edu/
    self.site = 'http://127.0.0.1/'
    headers['Host'] = 'dictionary.thlib.org'
  else
    self.site = 'http://dictionary.thlib.org/'
  end  
  self.timeout = 100
end