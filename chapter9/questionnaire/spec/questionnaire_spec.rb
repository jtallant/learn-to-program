require 'questionnaire'

describe Questionnaire do

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
    Question.new(text = 'Do you like eating tacos?', record_answer = true),
    Question.new(text = 'Do you like eating burritos?'),
    Question.new(text = 'Do you wet the bed?', record_answer = true),
    Question.new(text = 'Do you like eating chimichangas?')
  ]

  let(:psych_qnr) { @psych_qnr = Questionnaire.new(greeting, debrief_message, questions) }

  it 'takes three paramaters and returns a Questionnaire object' do

    psych_qnr.should be_an_instance_of Questionnaire
  end

  it 'only accepts valid replies' do

    expect(psych_qnr.valid_reply?('yes')).to be_true
    expect(psych_qnr.valid_reply?('no')).to be_true
    expect(psych_qnr.valid_reply?('  ')).to be_false
  end

  it 'only prints the response of questions with a record_answer value of true' do

    psych_qnr.stub!(:gets) { "yes" }
    psych_qnr.should_receive(:puts).with("Do you like eating tacos?")
    psych_qnr.should_receive(:puts).with("Do you like eating burritos?")
    psych_qnr.should_receive(:puts).with("Do you wet the bed?")
    psych_qnr.should_receive(:puts).with("Do you like eating chimichangas?")
    psych_qnr.ask_questions
    expect(psych_qnr.result).to include("Do you like eating tacos?")
    expect(psych_qnr.result).to_not include("Do you like eating burritos?")
  end

end