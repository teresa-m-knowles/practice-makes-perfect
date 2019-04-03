class HogwartsService
  def conn
    url ='http://hogwarts-it.herokuapp.com/api/v1/house/'
    Faraday.new(url: url) do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body)
  end

  def get_students(house)
    url = "#{house}?api_key=#{ENV['HOGWARTS_KEY']}"
    get_json(url)
  end
end
