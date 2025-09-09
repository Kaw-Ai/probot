# Chatbot Skills Documentation

This document describes all the skills that have been added to the chatbot for GitHub API and browser automation functionality.

## GitHub API Skills (36 functions)

### Workflow and Artifact Functions
- `download_workflow_run_artifact/4` - Download artifacts from workflow runs
- `get_workflow_run/3` - Get details of a specific workflow run
- `get_workflow_run_logs/3` - Get logs from a workflow run
- `get_workflow_run_usage/3` - Get usage metrics for a workflow run
- `get_job_logs/3` - Get logs from a specific job
- `list_workflow_jobs/3` - List jobs for a workflow run
- `list_workflow_run_artifacts/3` - List artifacts for a workflow run
- `list_workflow_runs/2` - List workflow runs for a repository
- `list_workflows/2` - List workflows in a repository

### Security Scanning Functions
- `get_code_scanning_alert/3` - Get details of a code scanning alert
- `list_code_scanning_alerts/2` - List code scanning alerts for a repository
- `get_secret_scanning_alert/3` - Get details of a secret scanning alert
- `list_secret_scanning_alerts/2` - List secret scanning alerts for a repository

### Repository Content Functions
- `get_file_contents/3` - Get contents of a file from a repository
- `get_commit/3` - Get details of a specific commit
- `list_commits/2` - List commits in a repository
- `list_branches/2` - List branches in a repository
- `get_tag/3` - Get details of a specific tag
- `list_tags/2` - List tags in a repository

### Release Functions
- `get_latest_release/2` - Get the latest release for a repository
- `get_release_by_tag/3` - Get a specific release by tag
- `list_releases/2` - List all releases for a repository

### Issue Functions
- `get_issue/3` - Get details of a specific issue
- `get_issue_comments/3` - Get comments for an issue
- `list_issues/2` - List issues in a repository
- `list_issue_types/1` - List issue types for an organization
- `list_sub_issues/3` - List sub-issues for a specific issue

### Pull Request Functions
- `get_pull_request/3` - Get details of a specific pull request
- `get_pull_request_comments/3` - Get comments for a pull request
- `get_pull_request_diff/3` - Get the diff for a pull request
- `get_pull_request_files/3` - Get files changed in a pull request
- `get_pull_request_reviews/3` - Get reviews for a pull request
- `get_pull_request_status/3` - Get status of a pull request
- `list_pull_requests/2` - List pull requests in a repository

### Search Functions
- `search_code/1` - Search for code across repositories
- `search_issues/1` - Search for issues across repositories
- `search_pull_requests/1` - Search for pull requests across repositories
- `search_repositories/1` - Search for repositories
- `search_users/1` - Search for users

## Browser Automation Skills (21 functions)

### Browser Management
- `browser_close/0` - Close the browser
- `browser_resize/2` - Resize the browser window
- `browser_install/0` - Install browser dependencies

### Browser Information
- `browser_console_messages/0` - Get console messages from the browser
- `browser_network_requests/0` - Get network requests made by the browser

### Browser Interactions
- `browser_handle_dialog/1` - Handle browser dialogs (accept/dismiss)
- `browser_evaluate/1` - Evaluate JavaScript in the browser
- `browser_file_upload/1` - Upload files through the browser
- `browser_fill_form/1` - Fill out forms in the browser

### Browser Actions
- `browser_press_key/1` - Press a key in the browser
- `browser_type/1` - Type text in the browser
- `browser_navigate/1` - Navigate to a URL
- `browser_navigate_back/0` - Navigate back in browser history
- `browser_take_screenshot/0` - Take a screenshot of the current page
- `browser_snapshot/0` - Take a snapshot of the page accessibility tree
- `browser_click/1` - Click on an element
- `browser_drag/2` - Drag and drop between elements
- `browser_hover/1` - Hover over an element
- `browser_select_option/2` - Select an option from a dropdown
- `browser_tabs/1` - Manage browser tabs (create, close, switch)
- `browser_wait_for/1` - Wait for a condition to be met

## Usage Examples

### GitHub Commands
- "list issues from microsoft repo vscode"
- "get pull request 123 from facebook repo react"
- "list branches from google repo tensorflow"
- "search repositories for machine learning"

### Browser Commands
- "take screenshot"
- "navigate to google.com"
- "click button"
- "close browser"

## Implementation Notes

The skills are implemented as Prolog predicates that:
1. Parse user input to extract relevant parameters (owner, repo, numbers, etc.)
2. Call appropriate functions with those parameters
3. Return formatted response messages
4. Handle errors gracefully with informative messages

All skills are currently implemented as stub functions that return success messages. In a production system, these would make actual API calls to GitHub and control real browser instances.