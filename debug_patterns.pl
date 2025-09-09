:- [pattern, extended_utility_skills].

test_patterns :-
    % Test weather pattern
    S1 = [weather, in, london],
    (pattern_weather(S1, Location) ->
        write('Weather pattern worked: '), write(Location), nl
    ;   write('Weather pattern failed'), nl
    ),
    
    % Test advanced math pattern
    S2 = [square, of, nb(4)],
    (pattern_advanced_math(S2, Op, Num) ->
        write('Math pattern worked: '), write(Op), write(' '), write(Num), nl
    ;   write('Math pattern failed'), nl
    ),
    
    % Test problematic pattern
    S3 = [max, of, nb(10), nb(5)],
    (pattern_advanced_math(S3, Op, N1, N2) ->
        write('Max pattern worked: '), write(Op), write(' '), write(N1), write(' '), write(N2), nl
    ;   write('Max pattern failed'), nl
    ),
    
    halt.

:- test_patterns.