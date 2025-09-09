% File:         utility_skills.pl
% Description:  Basic utility skills that are easy to implement and provide
%               immediate practical value.

% get_current_time/1
%
% Gets the current time and date.
get_current_time(Result) :-
    get_time(Timestamp),
    format_time(atom(TimeString), '%Y-%m-%d %H:%M:%S', Timestamp),
    Result = ['Current time is', TimeString].

% help/1
%
% Provides help information about available skills.
help(Result) :-
    Result = ['Available commands:', 
              'Time: "what time is it"',
              'Math: "calculate 2 plus 3", "5 minus 2"', 
              'Facts: "random fact", "fun fact"',
              'GitHub: "search repositories for python", "search users for github"',
              'Browser: "navigate to google.com", "take screenshot", "get title"',
              'Utils: "count words in hello world", "reverse hello world"',
              'General: "hello", "help", "bye"'].

% basic_math/3
%
% Performs basic arithmetic operations.
basic_math(Num1, Op, Num2, Result) :-
    (   Op = plus ->
        R is Num1 + Num2
    ;   Op = minus ->
        R is Num1 - Num2
    ;   (Op = times; Op = multiply) ->
        R is Num1 * Num2
    ;   (Op = divided; Op = divide) ->
        (   Num2 =\= 0 ->
            R is Num1 / Num2
        ;   R = 'Error: Division by zero'
        )
    ;   R = 'Error: Unknown operation'
    ),
    Result = [Num1, Op, Num2, 'equals', R].

% get_random_fact/1
%
% Returns a random interesting fact.
get_random_fact(Result) :-
    Facts = [
        ['Did you know? Octopuses have three hearts!'],
        ['Fun fact: Honey never spoils!'], 
        ['Amazing: Bananas are berries, but strawberries are not!'],
        ['Interesting: A group of flamingos is called a flamboyance!'],
        ['Cool fact: The shortest war in history lasted only 38-45 minutes!']
    ],
    length(Facts, Len),
    random(0, Len, Index),
    nth0(Index, Facts, Result).

% count_words/2
%
% Counts the number of words in a sentence.
count_words(Sentence, Result) :-
    length(Sentence, Count),
    Result = ['That sentence has', Count, 'words'].

% reverse_sentence/2
%
% Reverses the order of words in a sentence.
reverse_sentence(Sentence, Result) :-
    reverse(Sentence, Reversed),
    append(['Reversed sentence:'], Reversed, Result).