module ProfilesHelper
  def username_converter(content)
    content.gsub(/@(?<username>(\w+))/, '<a href="/\k<username>">@\k<username></a>'()
  end
end
