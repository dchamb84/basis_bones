class Time
  def self.unix_gmt
    now.strftime "%Y-%m-%dT%H:%M:%S+00:00Z"
  end
end

