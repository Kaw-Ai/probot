:- [pattern, extended_utility_skills, readin].

test_patterns :-
    % Test what readin produces for "max of 10 5"
    write('Testing input parsing...'), nl,
    
    % Simulate parsing "max of 10 5"
    TestInput = [max, of, nb(10), nb(5)],
    write('Simulated input: '), write(TestInput), nl,
    
    % Test the pattern
    (pattern_advanced_math(TestInput, Op, N1, N2) ->
        write('Max pattern worked: '), write(Op), write(' '), write(N1), write(' '), write(N2), nl
    ;   write('Max pattern failed'), nl
    ),
    
    % Try different variations
    TestInput2 = [max, nb(10), nb(5)],
    write('Alternative input: '), write(TestInput2), nl,
    (pattern_advanced_math(TestInput2, Op2, N12, N22) ->
        write('Alt pattern worked: '), write(Op2), write(' '), write(N12), write(' '), write(N22), nl
    ;   write('Alt pattern failed'), nl
    ),
    
    halt.

:- test_patterns.