# ProBot - Enhanced Prolog Chatbot

A Prolog-based chatbot with GitHub API integration and browser automation capabilities.

## Recent Enhancements

This repository has been enhanced with multiple easy-to-implement skills that provide immediate practical value:

### ✅ Implemented Skills (18 total)

#### Utility Skills (7 functions)
- **Time**: `what time is it` - Get current date and time
- **Help**: `help` - Show all available commands  
- **Math**: `calculate 15 plus 27` - Basic arithmetic (plus, minus, times, divide)
- **Facts**: `random fact` - Share interesting random facts
- **Word Count**: `count words in hello world` - Count words in sentences
- **Reverse**: `reverse hello world` - Reverse word order in sentences
- **Calculator**: Support for `5 times 3`, `100 divided 4`, etc.

#### Simple Browser Skills (7 functions - simulated)
- **Navigate**: `navigate to github.com` - Simulate browser navigation
- **Screenshot**: `take screenshot` - Simulate taking screenshots
- **Page Title**: `get title` - Get simulated page titles
- **Current URL**: `get url` - Get simulated current URL
- **Close**: `close browser` - Simulate browser closing
- **Click**: `click button` - Simulate element clicking
- **Type**: `type hello` - Simulate text input

#### Simple GitHub Skills (4 functions - simulated)
- **Repo Search**: `search repositories for python` - Search GitHub repositories
- **User Search**: `search users for microsoft` - Search GitHub users  
- **Repo Info**: `info for microsoft/vscode` - Get repository information
- **User Repos**: `repos for octocat` - List user repositories

## Quick Start

```bash
# Install SWI-Prolog
sudo apt install swi-prolog

# Navigate to assignment directory
cd src/assignment

# Start the chatbot
swipl -t chat -s chat.pl

# Try some commands:
# - what time is it
# - help
# - calculate 25 plus 17
# - random fact
# - search repositories for javascript
# - take screenshot
# - bye
```

## Demo

Run the interactive demo:
```bash
./demo_chatbot.sh
```

## Testing

Test all implemented skills:
```bash
cd src/assignment
swipl -s test_skills.pl -t halt
```

## Architecture

- **chat.pl** - Main conversation loop and response generation
- **skills_simple.pl** - Original GitHub API and browser automation stubs (57 functions)
- **utility_skills.pl** - NEW: Basic utility functions
- **simple_browser_skills.pl** - NEW: Browser simulation skills
- **simple_github_skills.pl** - NEW: GitHub simulation skills  
- **pattern.pl** - Pattern matching for user inputs
- **database.pl** - Response databases and templates

## Next Steps

The following skills are identified as easy to implement next:
- Weather information integration
- File system operations
- More advanced mathematical operations
- Real GitHub API integration (replacing simulated responses)
- Real browser automation (replacing simulated responses)
