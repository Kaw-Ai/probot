% File:         extended_utility_skills.pl
% Description:  Advanced utility skills for weather, file operations, and
%               extended mathematical operations.

% Weather Information Skills

% get_weather/2
%
% Gets simulated weather information for a location.
get_weather(Location, Result) :-
    (   Location = london ->
        Result = ['Weather in London: Cloudy, 15°C, Light rain expected']
    ;   Location = paris ->
        Result = ['Weather in Paris: Sunny, 22°C, Clear skies']
    ;   Location = newyork ->
        Result = ['Weather in New York: Partly cloudy, 18°C, Mild winds']
    ;   Location = tokyo ->
        Result = ['Weather in Tokyo: Rainy, 20°C, Heavy showers']
    ;   Location = sydney ->
        Result = ['Weather in Sydney: Sunny, 25°C, Perfect weather']
    ;   % Default response for unknown locations
        Result = ['Weather information not available for', Location, '(simulated service)']
    ).

% Extended Mathematical Operations

% advanced_math/3
%
% Performs advanced mathematical operations.
advanced_math(Operation, Num, Result) :-
    (   Operation = square ->
        R is Num * Num,
        Result = ['Square of', Num, 'is', R]
    ;   Operation = cube ->
        R is Num * Num * Num,
        Result = ['Cube of', Num, 'is', R]
    ;   Operation = sqrt ->
        (   Num >= 0 ->
            R is sqrt(Num),
            Result = ['Square root of', Num, 'is', R]
        ;   Result = ['Error: Cannot calculate square root of negative number']
        )
    ;   Operation = factorial ->
        factorial(Num, R),
        Result = ['Factorial of', Num, 'is', R]
    ;   Operation = abs ->
        R is abs(Num),
        Result = ['Absolute value of', Num, 'is', R]
    ;   Result = ['Error: Unknown advanced operation', Operation]
    ).

% advanced_math/4
%
% Performs advanced operations with two numbers.
advanced_math(Operation, Num1, Num2, Result) :-
    (   Operation = power ->
        R is Num1 ** Num2,
        Result = [Num1, 'to the power of', Num2, 'equals', R]
    ;   Operation = mod ->
        (   Num2 =\= 0 ->
            R is Num1 mod Num2,
            Result = [Num1, 'mod', Num2, 'equals', R]
        ;   Result = ['Error: Modulo by zero']
        )
    ;   Operation = max ->
        R is max(Num1, Num2),
        Result = ['Maximum of', Num1, 'and', Num2, 'is', R]
    ;   Operation = min ->
        R is min(Num1, Num2),
        Result = ['Minimum of', Num1, 'and', Num2, 'is', R]
    ;   Result = ['Error: Unknown two-number operation', Operation]
    ).

% factorial/2
%
% Helper predicate to calculate factorial.
factorial(0, 1) :- !.
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

% File System Operations

% read_file_info/2
%
% Gets information about a file (simulated).
read_file_info(FileName, Result) :-
    (   FileName = 'chat.pl' ->
        Result = ['File chat.pl: Size 15KB, Modified today, Prolog source file']
    ;   FileName = 'README.md' ->
        Result = ['File README.md: Size 3KB, Documentation file, Markdown format']
    ;   FileName = 'test.txt' ->
        Result = ['File test.txt: Size 1KB, Text file, Created yesterday']
    ;   % Simulate file not found
        Result = ['File', FileName, 'not found or access denied (simulated)']
    ).

% list_directory/2  
%
% Lists contents of a directory (simulated).
list_directory(DirName, Result) :-
    (   DirName = '.' ->
        Result = ['Directory contents: chat.pl database.pl pattern.pl skills.pl']
    ;   DirName = 'src' ->
        Result = ['Directory src contains: assignment/ worksheets/']
    ;   DirName = 'assignment' ->
        Result = ['Assignment directory: *.pl files, tests, documentation']
    ;   Result = ['Directory', DirName, 'not accessible (simulated)']
    ).

% write_note/3
%
% Simulates writing a note to a file.
write_note(FileName, Content, Result) :-
    Result = ['Note written to', FileName, ':', Content, '(simulated file write)'].

% Unit Conversions

% convert_units/4
%
% Converts between different units.
convert_units(Value, FromUnit, ToUnit, Result) :-
    (   FromUnit = celsius, ToUnit = fahrenheit ->
        F is (Value * 9/5) + 32,
        Result = [Value, 'Celsius equals', F, 'Fahrenheit']
    ;   FromUnit = fahrenheit, ToUnit = celsius ->
        C is (Value - 32) * 5/9,
        Result = [Value, 'Fahrenheit equals', C, 'Celsius']
    ;   FromUnit = meters, ToUnit = feet ->
        Feet is Value * 3.28084,
        Result = [Value, 'meters equals', Feet, 'feet']
    ;   FromUnit = feet, ToUnit = meters ->
        Meters is Value / 3.28084,
        Result = [Value, 'feet equals', Meters, 'meters']
    ;   FromUnit = kilograms, ToUnit = pounds ->
        Pounds is Value * 2.20462,
        Result = [Value, 'kilograms equals', Pounds, 'pounds']
    ;   FromUnit = pounds, ToUnit = kilograms ->
        Kg is Value / 2.20462,
        Result = [Value, 'pounds equals', Kg, 'kilograms']
    ;   Result = ['Conversion from', FromUnit, 'to', ToUnit, 'not supported']
    ).

% Text Processing

% count_characters/2
%
% Counts characters in a sentence.
count_characters(Sentence, Result) :-
    atomic_list_concat(Sentence, ' ', Text),
    atom_length(Text, Length),
    Result = ['That text has', Length, 'characters (including spaces)'].

% to_uppercase/2
%
% Converts sentence to uppercase.
to_uppercase(Sentence, Result) :-
    maplist(upcase_atom, Sentence, UpperSentence),
    append(['Uppercase version:'], UpperSentence, Result).

% to_lowercase/2
%
% Converts sentence to lowercase.
to_lowercase(Sentence, Result) :-
    maplist(downcase_atom, Sentence, LowerSentence),
    append(['Lowercase version:'], LowerSentence, Result).