class NSDictionary
  def to_query
    collect do |k, v|
      [k, Array(v).collect(&:to_s).join(' ').escape_url].join('=')
    end.join('&')
  end
end