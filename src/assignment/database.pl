% File:         database.pl
% Author:       Justin Lewis Salmon
% Student ID:   10000937
%
% Description:  Contains databases for general use throughout the chatbot
%               program.

:- discontiguous responses_db/2.

responses_db(bye, [
        ['Bye!'], 
        ['Hope to see you again.'], 
        ['Have a nice day!']
        ]).

responses_db(greeting, [
        ['Hello!'], 
        ['Hello, nice to meet you.'], 
        ['Hi there!'],
        ['Welcome!'],
        ['Good afternoon!'],
        ['Hi.']
        ]).

responses_db(change_topic, [
        ['Do you mind if I ask you some questions?']
        ]).

responses_db(location, [
        ['Where are you at the moment?'],
        ['What room are you in?'],
        ['Where are you?']
        ]).

responses_db(get_location, [
        ['Sorry, I don\'t know where that is.'],
        ['Are you sure that\'s in Q block?'],
        ['That\'s not in Q block...'],
        ['Can you try that again?'],
        ['I don\'t know that room, where is it?']
        ]).

responses_db(get_alevels, [
        ['Haven\'t heard of that one before!'],
        ['That\'s not a real subject...'],
        ['Are you sure?'],
        ['Hold on, I need to know about your A-levels!'],
        ['Don\'t you want to tell me your A-levels?']
        ]).

responses_db(get_name, [
        ['Is that your real name?'],
        ['That\'s not your real name...'],
        ['That can\'t be your name.'],
        ['Just tell me your name...'],
        ['I need to know your name!'],
        ['Come on, what are you called?']
        ]).
            
responses_db(my_name, [
        ['My name is Frank, nice to meet you.'],
        ['I\'m Frank!'],
        ['My name isn\'t important right now.'],
        ['Frank, at your service, how may I help?']
        ]).

responses_db(my_subjects, [
        ['I\'m studying Computer Science!'],
        ['Computer Science - it\'s great.'],
        ['Never mind about my subjects...'],
        ['Computer Science.'],
        ['Why do you want to know what I\'m studying?'],
        ['Never mind that, what do you want?']
        ]).

responses_db(thanks, [
        ['Thanks for the info!'],
        ['Thanks, that\'s helpful.'],
        ['Ok, thanks.'],
        ['Cheers for that.'],
        ['Nice one.'],
        ['Great!'],
        ['Awesome']
        ]).

responses_db(thanked, [
        ['You\'re welcome!'],
        ['Any time.'],
        ['Glad to be of service.'],
        ['No worries.'],
        ['No problem.']
        ]).

responses_db(me, [
        ['I\'m great, thanks for asking.'],
        ['Can\'t complain!'],
        ['Not too bad, yourself?'],
        ['I\'m okay, I suppose...'],
        ['Yep, I\'m fine, how are you?']
        ]).

responses_db(random_q, [
        ['Isn\'t it a nice day?'],
        ['Oh... ok.'],
        ['Do you like UWE?'],
        ['Can we be friends?'],
        ['Have you talked to me before?'],
        ['...what do you mean?'],
        ['How impertinent.'],
        ['You\'re quite rude, aren\'t you?'],
        ['Don\'t be silly.'],
        ['This is silly.'],
        ['Lol'],
        [':)'],
        ['Umm.. what?'],
        ['Excuse me?']
        ]).

responses_db(random_s, [
        ['I dunno...'],
        ['Sorry, I can\'t answer that one.'],
        ['Not sure!'],
        ['Can I get a different question?'],
        ['Oh, you\'ll have to ask someone else that.'],
        ['Sorry, I\'m only a simple Frank.'],
        ['Sorry, I can\'t remember everything you said...'],
        ['Can you say that again?'],
        ['Now, there\'s a question.'],
        ['Who knows!'],
        ['No. Just no.'],
        ['Yes, I agree.']
        ]).

questions_db(feedback, [
        ['Okay. Did you find any of the talks interesting?'],
        ['Hmm. Do you think the open day has been well organised?'],
        ['Ok, thanks. Have the student ambassadors been helpful?'],
        ['So, what are your thoughts on the open day overall?']
        ]).

questions_db(info, [
        ['Okay, so where are you from?'],
        ['Haha, fair enough. Which universities have you applied to (except UWE)?'],
        ['Nice to meet you. So what A-level subjects are you taking?'],
        ['What\'s your name?']
        ]).

greeting_db([
        hello, 
        hi, 
        hey
        ]).

thanks_db([
        thanks,
        thankyou,
        thank,
        cheers
        ]).

alevel_db([maths,
        physics,
        chemistry,
        geography,
        biology,
        history,
        psychology,
        english,
        french,
        spanish,
        german,
        music,
        computing
        ]).

% Skill-related responses
responses_db(github_help, [
        ['I can help you with GitHub operations like getting issues, pull requests, workflows, and more!'],
        ['I have GitHub skills! Try asking me to list issues, get pull requests, or search repositories.'],
        ['I can work with GitHub APIs - just tell me what repository you want to explore.']
        ]).

responses_db(browser_help, [
        ['I can help you with browser automation - taking screenshots, clicking elements, navigating pages!'],
        ['I have browser skills! I can navigate, click, type, and take screenshots.'],
        ['I can automate web browsers for you - just tell me what you need to do.']
        ]).

responses_db(skill_demo, [
        ['Try saying "list issues from owner/repo" or "take screenshot"'],
        ['You can ask me to "get pull request 123 from owner/repo"'],
        ['Try "search repositories for keyword" or "navigate to google.com"'],
        ['I understand commands like "click button" or "list branches from owner/repo"'],
        ['Ask me "what time is it" or "calculate 2 plus 3"'],
        ['Try "help" to see all available commands']
        ]).

% Utility skill responses
responses_db(utility_help, [
        ['I can tell you the time, do basic math, share random facts, and more!'],
        ['Ask me for help, the current time, to calculate something, or for a fun fact!'],
        ['I can count words, reverse sentences, and perform basic calculations.']
        ]).
