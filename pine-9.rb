class Questionnaire

  attr_accessor :greeting, :debrief_message, :questions
  attr_reader :result

  def initialize(greeting, debrief_message, questions)
    @greeting = greeting
    @debrief_message = debrief_message
    @questions = questions

    result = []
    @result = result
  end

  def ask_questions
    @questions.each do |question|

      while true
        puts question[:text]
        reply = gets.chomp.downcase

        if 'yes' == reply || 'no' == reply
          log_reply(question[:text], reply) if question[:log] == true
          break
        else
          puts 'Please answer yes or no'
        end
      end

    end
    @result
  end

  def log_reply(question, reply)
    @result << { :question => question, :reply => reply }
  end

  def run
    puts @greeting
    ask_questions
    puts @debrief_message
  end

end


# ==========================================================

greeting = 'Hello, and thank you for taking the time to help me with this experiment.
My experiment has to do with the way people feel about Mexican food.
Just think about Mexican food and try to answer every question honestly,
with either a "yes" or a "no". My experiment has nothing to do with bed-wetting.'

debrief_message = 'DEBRIEFING:
Thank you for taking the time to help with this experiment.
In fact, this experiment has nothing to do with Mexican food.
It is an experiment about bed-wetting.
The Mexican food was just there to catch you off guard
in the hopes that you would answer more honestly. Thanks again.
'
questions = [
  { :text => 'Do you like eating tacos?', :log => true },
  { :text => 'Do you like eating burritos?', :log => false },
  { :text => 'Do you wet the bed?', :log => true },
  { :text => 'Do you like eating chimichangas?', :log => false },
  { :text => 'Do you like eating sopapillas?', :log => false },
  { :text => 'Do you like drinking horchata?', :log => false },
  { :text => 'Do you like eating flautas?', :log => false }
]

psych_qnr = Questionnaire.new(greeting, debrief_message, questions)

puts psych_qnr.run




