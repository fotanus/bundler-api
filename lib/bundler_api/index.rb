require 'bundler_api'

class BundlerApi::Index
  def initialize(db)
    @db = db
  end

  def names
    dataset = @db["select name from rubygems"].all
    dataset.map { |d| d[:name] }.join("\n")
  end

end
