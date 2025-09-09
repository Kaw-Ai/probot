% File:         skills_simple.pl
% Description:  Simplified skill definitions for GitHub API and browser automation
%               functions required for the enhanced chatbot.

%% GitHub API Skills

% Repository operations
list_issues(Owner, Repo, Result) :-
    Result = ['Issues listed for', Owner, '/', Repo].

get_issue(Owner, Repo, IssueNumber, Result) :-
    Result = ['Issue', IssueNumber, 'retrieved from', Owner, '/', Repo].

list_pull_requests(Owner, Repo, Result) :-
    Result = ['Pull requests listed for', Owner, '/', Repo].

get_pull_request(Owner, Repo, PullNumber, Result) :-
    Result = ['Pull request', PullNumber, 'retrieved from', Owner, '/', Repo].

list_branches(Owner, Repo, Result) :-
    Result = ['Branches listed for', Owner, '/', Repo].

list_commits(Owner, Repo, Result) :-
    Result = ['Commits listed for', Owner, '/', Repo].

list_workflows(Owner, Repo, Result) :-
    Result = ['Workflows listed for', Owner, '/', Repo].

%% Browser Automation Skills

browser_close(Result) :-
    Result = ['Browser closed'].

browser_take_screenshot(Result) :-
    Result = ['Screenshot taken'].

browser_navigate(Url, Result) :-
    Result = ['Navigated to:', Url].

browser_click(Element, Result) :-
    Result = ['Clicked element:', Element].

browser_type(Text, Result) :-
    Result = ['Text typed:', Text].

browser_navigate_back(Result) :-
    Result = ['Navigated back'].