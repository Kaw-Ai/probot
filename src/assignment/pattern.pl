% File:         pattern.pl
% Author:       Justin Lewis Salmon
% Student ID:   10000937
%
% Description:  Contains functions for matching sentences input by the
%               user with specific patterns.


% pattern_to_from/2
%
% Matches to-from, from-X-to-Y patterns.
pattern_to_from([to, X, from, Y |_], Y, X):-!.
pattern_to_from([from, X, to, Y |_], X, Y):-!.
pattern_to_from([at, X, how, do, i, get, to, Y |_], Y, X):-!.
pattern_to_from([from, X, how, do, i, get, to, Y |_], X, Y):-!.
pattern_to_from([_|T], X, Y):-
        pattern_to_from(T, X, Y).

% pattern_where_is/2
%
% Matches where-is, how-do-i-find patterns.
pattern_where_is([where, is, the, X |_], X):-!.
pattern_where_is([where, is, a, X |_], X):-!.
pattern_where_is([where, is, X |_], X):-!.
pattern_where_is([where, can, i, find, the, X |_], X):-!.
pattern_where_is([where, can, i, find, a, X |_], X):-!.
pattern_where_is([where, can, i, find, X |_], X):-!.
pattern_where_is([how, do, i, find, X |_], X):-!.
pattern_where_is([how, do, i, get, X |_], X):-!.
pattern_where_is([how, do, i, get, to, X |_], X):-!.
pattern_where_is([is, there, a, X |_], X):-!.
pattern_where_is([_|T], X):-
        pattern_where_is(T, X).

% pattern_name/2
%
% Matches questions about the chatbot's name.
pattern_name([what, is, your, name, X |_], X):-!.
pattern_name(['what\'s', your, name, X |_], X):-!.
pattern_name([whats, your, name, X |_], X):-!.
pattern_name([what, are, you, called, X |_], X):-!.
pattern_name([who, are, you, X |_], X):-!.
pattern_name([_|T], X):-
        pattern_name(T, X).

% pattern_my_subjects/2
%
% Matches questions about the chatbot's subjects.
pattern_my_subjects([what, are, you, studying, X |_], X):-!.
pattern_my_subjects([what, do, you, study, X |_], X):-!.
pattern_my_subjects([what, course, are, you, on, X |_], X):-!.
pattern_my_subjects([what, is, your, degree, X |_], X):-!.
pattern_my_subjects([_|T], X):-
        pattern_my_subjects(T, X).

% pattern_me/2
%
% Matches questions about how the chatbot is feeling.
pattern_me([how, are, you, X |_], X):-!.
pattern_me([are, you, ok, X |_], X):-!.
pattern_me([you, ok, X |_], X):-!.
pattern_me([you, okay, X |_], X):-!.
pattern_me([_|T], X):-
        pattern_me(T, X).

% GitHub Skills Pattern Matching

% pattern_github_workflow/4
%
% Matches GitHub workflow-related commands.
pattern_github_workflow([get, workflow, run, RunId, from, Owner, repo, Repo |_], Owner, Repo, RunId):-!.
pattern_github_workflow([download, artifact, ArtifactId, from, Owner, repo, Repo |_], Owner, Repo, ArtifactId):-!.
pattern_github_workflow([list, workflows, from, Owner, repo, Repo |_], Owner, Repo, _):-!.
pattern_github_workflow([_|T], Owner, Repo, Id):-
        pattern_github_workflow(T, Owner, Repo, Id).

% pattern_github_issue/4  
%
% Matches GitHub issue-related commands.
pattern_github_issue([get, issue, Number, from, Owner, repo, Repo |_], Owner, Repo, Number):-!.
pattern_github_issue([list, issues, from, Owner, repo, Repo |_], Owner, Repo, _):-!.
pattern_github_issue([show, issue, Number, from, Owner, repo, Repo |_], Owner, Repo, Number):-!.
pattern_github_issue([_|T], Owner, Repo, Number):-
        pattern_github_issue(T, Owner, Repo, Number).

% pattern_github_pr/4
%
% Matches GitHub pull request-related commands.
pattern_github_pr([get, pull, request, Number, from, Owner, repo, Repo |_], Owner, Repo, Number):-!.
pattern_github_pr([get, pr, Number, from, Owner, repo, Repo |_], Owner, Repo, Number):-!.
pattern_github_pr([list, pull, requests, from, Owner, repo, Repo |_], Owner, Repo, _):-!.
pattern_github_pr([show, pr, Number, from, Owner, repo, Repo |_], Owner, Repo, Number):-!.
pattern_github_pr([_|T], Owner, Repo, Number):-
        pattern_github_pr(T, Owner, Repo, Number).

% pattern_github_repo/3
%
% Matches GitHub repository-related commands.
pattern_github_repo([list, branches, from, Owner, repo, Repo |_], Owner, Repo):-!.
pattern_github_repo([list, commits, from, Owner, repo, Repo |_], Owner, Repo):-!.
pattern_github_repo([list, tags, from, Owner, repo, Repo |_], Owner, Repo):-!.
pattern_github_repo([get, file, _, from, Owner, repo, Repo |_], Owner, Repo):-!.
pattern_github_repo([_|T], Owner, Repo):-
        pattern_github_repo(T, Owner, Repo).

% pattern_github_search/2
%
% Matches GitHub search commands.
pattern_github_search([search, code, for, Query |_], Query):-!.
pattern_github_search([search, issues, for, Query |_], Query):-!.
pattern_github_search([search, repositories, for, Query |_], Query):-!.
pattern_github_search([search, users, for, Query |_], Query):-!.
pattern_github_search([_|T], Query):-
        pattern_github_search(T, Query).

% Browser Skills Pattern Matching

% pattern_browser_action/2
%
% Matches browser action commands.
pattern_browser_action([close, browser |_], close):-!.
pattern_browser_action([browser, close |_], close):-!.
pattern_browser_action([take, screenshot |_], screenshot):-!.
pattern_browser_action([browser, screenshot |_], screenshot):-!.
pattern_browser_action([navigate, to, Url |_], navigate(Url)):-!.
pattern_browser_action([go, to, Url |_], navigate(Url)):-!.
pattern_browser_action([browser, back |_], back):-!.
pattern_browser_action([go, back |_], back):-!.
pattern_browser_action([_|T], Action):-
        pattern_browser_action(T, Action).

% pattern_browser_click/2
%
% Matches browser click commands.
pattern_browser_click([click, on, Element |_], Element):-!.
pattern_browser_click([click, Element |_], Element):-!.
pattern_browser_click([browser, click, Element |_], Element):-!.
pattern_browser_click([_|T], Element):-
        pattern_browser_click(T, Element).

% pattern_browser_type/2
%
% Matches browser text input commands.
pattern_browser_type([type, Text |_], Text):-!.
pattern_browser_type([browser, type, Text |_], Text):-!.
pattern_browser_type([enter, text, Text |_], Text):-!.
pattern_browser_type([_|T], Text):-
        pattern_browser_type(T, Text).

% Utility Skills Pattern Matching

% pattern_time/1
%
% Matches time-related queries.
pattern_time([what, time, is, it |_]):-!.
pattern_time([what, is, the, time |_]):-!.
pattern_time([current, time |_]):-!.
pattern_time([time |_]):-!.
pattern_time([_|T]):-
        pattern_time(T).

% pattern_help/1
%
% Matches help requests.
pattern_help([help |_]):-!.
pattern_help([what, can, you, do |_]):-!.
pattern_help([commands |_]):-!.
pattern_help([skills |_]):-!.
pattern_help([_|T]):-
        pattern_help(T).

% pattern_math/4
%
% Matches basic arithmetic expressions.
pattern_math([calculate, nb(Num1), Op, nb(Num2) |_], Num1, Op, Num2):-!.
pattern_math([nb(Num1), Op, nb(Num2) |_], Num1, Op, Num2):-
        member(Op, [plus, minus, times, multiply, divided, divide]), !.
pattern_math([_|T], Num1, Op, Num2):-
        pattern_math(T, Num1, Op, Num2).

% pattern_fact/1
%
% Matches requests for random facts.
pattern_fact([random, fact |_]):-!.
pattern_fact([fun, fact |_]):-!.
pattern_fact([interesting, fact |_]):-!.
pattern_fact([tell, me, a, fact |_]):-!.
pattern_fact([_|T]):-
        pattern_fact(T).

% pattern_count_words/2
%
% Matches word counting requests.
pattern_count_words([count, words, in |Rest], Rest):-!.
pattern_count_words([how, many, words, in |Rest], Rest):-!.
pattern_count_words([_|T], Words):-
        pattern_count_words(T, Words).

% pattern_reverse/2
%
% Matches sentence reversal requests.
pattern_reverse([reverse |Rest], Rest):-!.
pattern_reverse([reverse, sentence |Rest], Rest):-!.
pattern_reverse([_|T], Words):-
        pattern_reverse(T, Words).

% Simple Browser Skills Pattern Matching

% pattern_simple_navigate/2
%
% Matches simple navigation commands.
pattern_simple_navigate([navigate, to, Url |_], Url):-!.
pattern_simple_navigate([go, to, Url |_], Url):-!.
pattern_simple_navigate([visit, Url |_], Url):-!.
pattern_simple_navigate([_|T], Url):-
        pattern_simple_navigate(T, Url).

% pattern_simple_screenshot/1
%
% Matches screenshot commands.
pattern_simple_screenshot([screenshot |_]):-!.
pattern_simple_screenshot([take, screenshot |_]):-!.
pattern_simple_screenshot([capture, screen |_]):-!.
pattern_simple_screenshot([_|T]):-
        pattern_simple_screenshot(T).

% pattern_simple_browser_info/1
%
% Matches requests for browser information.
pattern_simple_browser_info([get, title |_], title):-!.
pattern_simple_browser_info([page, title |_], title):-!.
pattern_simple_browser_info([current, url |_], url):-!.
pattern_simple_browser_info([get, url |_], url):-!.
pattern_simple_browser_info([_|T], Type):-
        pattern_simple_browser_info(T, Type).

% Simple GitHub Skills Pattern Matching

% pattern_simple_github_search/3
%
% Matches GitHub search commands.
pattern_simple_github_search([search, repositories, for, Query |_], repositories, Query):-!.
pattern_simple_github_search([search, repos, for, Query |_], repositories, Query):-!.
pattern_simple_github_search([search, users, for, Query |_], users, Query):-!.
pattern_simple_github_search([find, repositories, Query |_], repositories, Query):-!.
pattern_simple_github_search([find, users, Query |_], users, Query):-!.
pattern_simple_github_search([_|T], Type, Query):-
        pattern_simple_github_search(T, Type, Query).

% pattern_repo_info/3
%
% Matches repository information requests.
pattern_repo_info([info, for, Owner, '/', Repo |_], Owner, Repo):-!.
pattern_repo_info([repository, info, Owner, '/', Repo |_], Owner, Repo):-!.
pattern_repo_info([get, info, Owner, '/', Repo |_], Owner, Repo):-!.
pattern_repo_info([info, for, Repo, from, Owner |_], Owner, Repo):-!.
pattern_repo_info([_|T], Owner, Repo):-
        pattern_repo_info(T, Owner, Repo).

% pattern_user_repos/2
%
% Matches user repository listing requests.  
pattern_user_repos([list, repos, for, User |_], User):-!.
pattern_user_repos([repos, for, User |_], User):-!.
pattern_user_repos([User, repositories |_], User):-!.
pattern_user_repos([_|T], User):-
        pattern_user_repos(T, User).