% File:         simple_github_skills.pl
% Description:  Simple GitHub skills that simulate GitHub API operations
%               without requiring actual API calls.

% simple_search_repositories/2
%
% Simulates GitHub repository search.
simple_search_repositories(Query, Result) :-
    SampleRepos = [
        'microsoft/vscode', 'facebook/react', 'angular/angular',
        'nodejs/node', 'python/cpython', 'rails/rails',
        'tensorflow/tensorflow', 'kubernetes/kubernetes'
    ],
    length(SampleRepos, Len),
    NumResults is min(3, Len),
    random_sample(SampleRepos, NumResults, Sample),
    append(['Found repositories for', Query, ':'], Sample, TempResult),
    append(TempResult, ['(simulated search)'], Result).

% simple_search_users/2  
%
% Simulates GitHub user search.
simple_search_users(Query, Result) :-
    SampleUsers = [
        'torvalds', 'gvanrossum', 'mojombo', 'defunkt',
        'octocat', 'github', 'microsoft', 'google'
    ],
    length(SampleUsers, Len),
    NumResults is min(3, Len),
    random_sample(SampleUsers, NumResults, Sample),
    append(['Found users for', Query, ':'], Sample, TempResult),
    append(TempResult, ['(simulated search)'], Result).

% simple_get_repository_info/3
%
% Simulates getting repository information.
simple_get_repository_info(Owner, Repo, Result) :-
    Languages = [javascript, python, java, 'c++', ruby, go, typescript],
    length(Languages, Len),
    random(0, Len, Index),
    nth0(Index, Languages, Language),
    random(1, 10000, Stars),
    random(0, 1000, Forks),
    Result = ['Repository', Owner/Repo, 'info:', 'Language:', Language, 
              'Stars:', Stars, 'Forks:', Forks, '(simulated)'].

% simple_list_user_repos/2
%
% Simulates listing user repositories.
simple_list_user_repos(User, Result) :-
    RepoSuffixes = ['-app', '-lib', '-tools', '-api', '-cli', '-web'],
    length(RepoSuffixes, Len),
    NumRepos is min(4, Len),
    findall(RepoName, 
            (between(1, NumRepos, _), 
             random(0, Len, Index),
             nth0(Index, RepoSuffixes, Suffix),
             atom_concat(User, Suffix, RepoName)),
            RepoList),
    append(['Repositories for user', User, ':'], RepoList, TempResult),
    append(TempResult, ['(simulated)'], Result).

% Helper predicate to get random sample from list
random_sample(_, 0, []) :- !.
random_sample([], _, []) :- !.
random_sample(List, N, [H|Sample]) :-
    length(List, Len),
    random(0, Len, Index),
    nth0(Index, List, H),
    select(H, List, Rest),
    N1 is N - 1,
    random_sample(Rest, N1, Sample).