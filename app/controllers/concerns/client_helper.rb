module ClientHelper

  def compute_score(client)
    @recency = 0
    @frequency = 0
    @monetary = 0
    score = 0;

    @recency = client.transactions.last
    
    client.transactions.each do |c|
      @frequency = @frequency + 1
      @monetary = c.count + c.product.price
      score = score + @frequency + @monetary
    end

    client.update_attributes score: score
  end
end