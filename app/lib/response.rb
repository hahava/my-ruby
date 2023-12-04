class Response
  def initialize(code, message = nil, data = nil, status = 200)
    @code = code
    @message = message
    @data = data
    @status = status
  end

  def to_json
    { success: @success, code: @code, data: @data }.to_json
  end

  def status
    @status
  end
end
