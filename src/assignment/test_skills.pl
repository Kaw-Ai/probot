% File:         test_skills.pl  
% Description:  Test script to demonstrate all implemented skills

:- [chat].

% Test all implemented skills
test_all_skills :-
    write('=== Testing All Implemented Skills ==='), nl, nl,
    
    % Test Utility Skills
    write('1. Testing Utility Skills:'), nl,
    get_current_time(TimeResult),
    write('Current time: '), write_list(TimeResult), nl,
    
    help(HelpResult),
    write('Help: '), write_list(HelpResult), nl,
    
    basic_math(10, plus, 5, MathResult),
    write('Math: '), write_list(MathResult), nl,
    
    get_random_fact(FactResult),
    write('Random fact: '), write_list(FactResult), nl,
    
    count_words([hello, world, from, prolog], CountResult),
    write('Word count: '), write_list(CountResult), nl,
    
    reverse_sentence([hello, world, goodbye], ReverseResult),
    write('Reverse: '), write_list(ReverseResult), nl, nl,
    
    % Test Simple Browser Skills
    write('2. Testing Simple Browser Skills:'), nl,
    simple_navigate('https://github.com', NavResult),
    write('Navigate: '), write_list(NavResult), nl,
    
    simple_screenshot(ScreenResult),
    write('Screenshot: '), write_list(ScreenResult), nl,
    
    simple_get_title(TitleResult),
    write('Title: '), write_list(TitleResult), nl,
    
    simple_get_url(UrlResult),
    write('URL: '), write_list(UrlResult), nl,
    
    simple_browser_close(CloseResult),
    write('Close: '), write_list(CloseResult), nl, nl,
    
    % Test Simple GitHub Skills
    write('3. Testing Simple GitHub Skills:'), nl,
    simple_search_repositories(python, RepoSearchResult),
    write('Repo search: '), write_list(RepoSearchResult), nl,
    
    simple_search_users(github, UserSearchResult),
    write('User search: '), write_list(UserSearchResult), nl,
    
    simple_get_repository_info(microsoft, vscode, RepoInfoResult),
    write('Repo info: '), write_list(RepoInfoResult), nl,
    
    simple_list_user_repos(octocat, UserReposResult),
    write('User repos: '), write_list(UserReposResult), nl, nl,
    
    write('=== All Skills Tested Successfully! ==='), nl.

% Helper predicate to write lists nicely
write_list([]).
write_list([H|T]) :-
    write(H), write(' '),
    write_list(T).

% Run the test
:- test_all_skills.