# ProBot - Enhanced Prolog Chatbot

A Prolog-based chatbot with GitHub API integration and browser automation capabilities.

## Recent Enhancements

This repository has been enhanced with multiple easy-to-implement skills that provide immediate practical value:

### ✅ Implemented Skills (43 total)

#### Utility Skills (7 functions)
- **Time**: `what time is it` - Get current date and time
- **Help**: `help` - Show all available commands  
- **Math**: `calculate 15 plus 27` - Basic arithmetic (plus, minus, times, divide)
- **Facts**: `random fact` - Share interesting random facts
- **Word Count**: `count words in hello world` - Count words in sentences
- **Reverse**: `reverse hello world` - Reverse word order in sentences
- **Calculator**: Support for `5 times 3`, `100 divided 4`, etc.

#### Extended Utility Skills (18 functions - NEW!)
- **Weather**: `weather in london` - Weather information for major cities
- **Advanced Math**: `square of 4`, `cube of 3`, `2 power 8` - Advanced mathematical operations
- **Mathematical Functions**: `factorial 5`, `sqrt 16`, `abs -10` - Scientific calculations
- **Number Operations**: `max 10 5`, `min 20 15`, `15 mod 4` - Number comparisons and operations
- **File Operations**: `file info chat.pl` - Get file information (simulated)
- **Directory Listing**: `list directory src` - List directory contents (simulated)  
- **Note Writing**: `write note test.txt hello world` - Create notes (simulated)
- **Unit Conversions**: `convert 32 fahrenheit to celsius` - Temperature, distance, weight conversions
- **Distance**: `convert 10 meters to feet` - Metric/Imperial distance conversion
- **Weight**: `convert 70 kilograms to pounds` - Weight unit conversion
- **Text Processing**: `count characters in hello` - Character counting
- **Case Conversion**: `uppercase hello world`, `lowercase HELLO` - Text case transformation

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
# Basic Skills:
# - what time is it
# - help
# - calculate 25 plus 17
# - random fact

# NEW Extended Skills:
# - weather in london
# - square of 9
# - cube of 4  
# - 2 power 10
# - factorial 5
# - convert 100 celsius to fahrenheit
# - convert 10 meters to feet
# - file info chat.pl
# - list directory src

# Browser & GitHub (simulated):
# - search repositories for javascript
# - take screenshot
# - navigate to github.com

# Exit:
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

# Test original skills
swipl -s test_skills.pl -t halt

# Test new extended skills
swipl -s test_extended_skills.pl -t halt
```

## Architecture

- **chat.pl** - Main conversation loop and response generation
- **skills_simple.pl** - Original GitHub API and browser automation stubs (57 functions)
- **utility_skills.pl** - Basic utility functions (time, math, facts, text utils)
- **extended_utility_skills.pl** - NEW: Advanced skills (weather, advanced math, file ops, conversions)
- **simple_browser_skills.pl** - Browser simulation skills
- **simple_github_skills.pl** - GitHub simulation skills  
- **pattern.pl** - Pattern matching for user inputs (now with 43 skill patterns)
- **database.pl** - Response databases and templates

## Next Steps

The following skills have been implemented from the original roadmap:
- ✅ Weather information integration (5 major cities)
- ✅ More advanced mathematical operations (9 new operations)
- ✅ File system operations (3 basic operations)

Remaining future enhancements:
- Real GitHub API integration (replacing simulated responses)
- Real browser automation (replacing simulated responses)  
- Enhanced natural language processing
- Persistent data storage
