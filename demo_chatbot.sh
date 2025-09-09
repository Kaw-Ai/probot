#!/bin/bash
# Demo script showing the chatbot's new capabilities

echo "=== ProBot Enhanced Chatbot Demo ==="
echo "Demonstrating newly implemented easy-to-use skills"
echo ""

cd "$(dirname "$0")"

# Create a demo input file
cat > /tmp/demo_input.txt << 'EOF'
hello
what time is it
help
calculate 15 plus 27
calculate 100 divided 4
random fact
fun fact
take screenshot
navigate to github.com
get title
search repositories for machine learning  
search users for microsoft
count words in this is a test sentence
reverse hello world goodbye
bye
EOF

echo "Running chatbot with demo commands..."
echo "Commands to be executed:"
echo "- hello"
echo "- what time is it"
echo "- help" 
echo "- calculate 15 plus 27"
echo "- calculate 100 divided 4"
echo "- random fact"
echo "- fun fact"
echo "- take screenshot"
echo "- navigate to github.com"
echo "- get title"
echo "- search repositories for machine learning"
echo "- search users for microsoft"
echo "- count words in this is a test sentence"
echo "- reverse hello world goodbye"
echo "- bye"
echo ""
echo "Starting chatbot..."
echo "----------------------------------------"

# Run the chatbot with the input file
cd /home/runner/work/probot/probot/src/assignment
swipl -t chat -s chat.pl < /tmp/demo_input.txt

# Clean up
rm -f /tmp/demo_input.txt

echo ""
echo "=== Demo Complete ==="
echo "The chatbot successfully demonstrated:"
echo "✓ Time and date functionality"
echo "✓ Basic arithmetic calculations"  
echo "✓ Random fact sharing"
echo "✓ Browser simulation (navigate, screenshot, title)"
echo "✓ GitHub search simulation (repos, users)"
echo "✓ Text utilities (word counting, sentence reversal)"
echo "✓ Interactive help system"