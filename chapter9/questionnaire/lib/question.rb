class Question
  attr_reader :text, :record_answer
  attr_accessor :reply

  def initialize(text = '', record_answer = false, reply = '')
    @text            = text
    @record_answer   = record_answer
    @reply           = reply
  end

  def log_reply(reply)
    @reply = reply
  end
end