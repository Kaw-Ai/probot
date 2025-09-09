% File:         test_extended_skills.pl  
% Description:  Test script for all new extended utility skills

:- [chat].

% Test all extended skills
test_extended_skills :-
    write('=== Testing Extended Utility Skills ==='), nl, nl,
    
    % Test Weather Skills
    write('1. Testing Weather Skills:'), nl,
    get_weather(london, WeatherResult1),
    write('London weather: '), write_list(WeatherResult1), nl,
    
    get_weather(paris, WeatherResult2),
    write('Paris weather: '), write_list(WeatherResult2), nl,
    
    get_weather(unknown_city, WeatherResult3),
    write('Unknown city weather: '), write_list(WeatherResult3), nl, nl,
    
    % Test Advanced Math Skills
    write('2. Testing Advanced Math Skills:'), nl,
    advanced_math(square, 5, SquareResult),
    write('Square: '), write_list(SquareResult), nl,
    
    advanced_math(cube, 3, CubeResult),
    write('Cube: '), write_list(CubeResult), nl,
    
    advanced_math(sqrt, 16, SqrtResult),
    write('Square root: '), write_list(SqrtResult), nl,
    
    advanced_math(factorial, 5, FactorialResult),
    write('Factorial: '), write_list(FactorialResult), nl,
    
    advanced_math(power, 2, 8, PowerResult),
    write('Power: '), write_list(PowerResult), nl,
    
    advanced_math(max, 10, 5, MaxResult),
    write('Maximum: '), write_list(MaxResult), nl, nl,
    
    % Test File System Skills
    write('3. Testing File System Skills:'), nl,
    read_file_info('chat.pl', FileInfoResult),
    write('File info: '), write_list(FileInfoResult), nl,
    
    list_directory('.', DirResult),
    write('Directory listing: '), write_list(DirResult), nl,
    
    write_note('test.txt', [hello, world], NoteResult),
    write('Write note: '), write_list(NoteResult), nl, nl,
    
    % Test Unit Conversion Skills
    write('4. Testing Unit Conversion Skills:'), nl,
    convert_units(32, fahrenheit, celsius, TempResult),
    write('Temperature: '), write_list(TempResult), nl,
    
    convert_units(10, meters, feet, DistanceResult),
    write('Distance: '), write_list(DistanceResult), nl,
    
    convert_units(70, kilograms, pounds, WeightResult),
    write('Weight: '), write_list(WeightResult), nl, nl,
    
    % Test Text Processing Skills
    write('5. Testing Text Processing Skills:'), nl,
    count_characters([hello, world], CharCountResult),
    write('Character count: '), write_list(CharCountResult), nl,
    
    to_uppercase([hello, world], UpperResult),
    write('Uppercase: '), write_list(UpperResult), nl,
    
    to_lowercase(['HELLO', 'WORLD'], LowerResult),
    write('Lowercase: '), write_list(LowerResult), nl, nl,
    
    write('=== All Extended Skills Tested Successfully! ==='), nl.

% Helper predicate to write lists nicely
write_list([]).
write_list([H|T]) :-
    write(H), write(' '),
    write_list(T).

% Run the test
:- test_extended_skills.