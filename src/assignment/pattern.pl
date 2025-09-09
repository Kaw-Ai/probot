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