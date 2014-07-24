require './questionnaire'

greeting = 'Hello, and thank you for taking the time to help me with this experiment.
My experiment has to do with the way people feel about Mexican food.
Just think about Mexican food and try to answer every question honestly,
with either a "yes" or a "no". My experiment has nothing to do with bed-wetting.'

debrief_message = 'DEBRIEFING:
Thank you for taking the time to help with this experiment.
In fact, this experiment has nothing to do with Mexican food.
It is an experiment about bed-wetting.
The Mexican food was just there to catch you off guard
in the hopes that you would answer more honestly. Thanks again.'

questions = [
  Question.new(text = 'Do you like eating tacos?', record_answer = true),
  Question.new(text = 'Do you like eating burritos?'),
  Question.new(text = 'Do you wet the bed?', record_answer = true),
  Question.new(text = 'Do you like eating chimichangas?')
]

psych_qnr = Questionnaire.new(greeting, debrief_message, questions)

puts
psych_qnr.run
puts psych_qnr.result