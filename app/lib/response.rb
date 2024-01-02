class Response
  def initialize(code, data = nil, status)
    @code = code
    @data = data
    @status = status
  end

  def to_json
    { status: @status, code: @code, data: @data }.to_json
  end

  def status
    @status
  end
end
