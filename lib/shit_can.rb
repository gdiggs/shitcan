module ShitCan
  require 'memcached'

  def self.load(con_path='localhost:11211')
    @cache = Memcached.new(con_path)
  end

  def self.cache
    if @cache
      return @cache
    else
      raise ShitCan, 'NO CAN HERE!'
    end
  end

  def self.set *args
    cache.set *args
  end

  def self.get *args
    cache.get *args
  end

  def self.get_if_exists *args
    get *args if exists?
  end

  def self.skip_if_exists key
    yield unless exists? key
  end

  def self.exists? key
    begin
      get key
      return true
    rescue
      return false
    end
  end
end