Question = Struct.new(:text, :record_answer, :reply)

class Questionnaire

  attr_accessor :greeting, :debrief_message, :questions

  def initialize(greeting = '', debrief_message = '', questions = [])
    @greeting = greeting
    @debrief_message = debrief_message
    @questions = questions
  end

  def valid_reply?(reply)
    'yes' == reply || 'no' == reply
  end

  def ask_questions
    @questions.each do |question|
      while true
        puts question.text
        reply = gets.chomp.downcase

        if valid_reply?(reply)
          question.reply = reply
          break
        else
          puts 'Please answer yes or no'
        end
      end
    end
  end

  def run
    puts @greeting
    puts
    ask_questions
    puts
    puts @debrief_message
  end

  def result
    result  = "\n================================\n"
    result += "RESULTS\n"
    result += "================================\n"
    @questions.each do |question|
      if question.record_answer
        result += "\n"
        result += "Q: #{question.text}\n"
        result += "A: #{question.reply}"
      end
    end
    result
  end

end