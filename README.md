# Xcode Templates

A repository of templates and code snippets to make development easier.

## Setup

    git clone https://github.com/samwize/DaXcodeTemplates

Assuming the project is cloned in ~/Workspace/DaXcodeTemplates, we need to create symbolic links to Xcode.

    cd ~/Workspace/DaXcodeTemplates
    ln -s ~/Workspace/DaXcodeTemplates/Templates ~/Library/Developer/Xcode/
    ln -s ~/Workspace/DaXcodeTemplates/CodeSnippets ~/Library/Developer/Xcode/UserData/

If there is warning "File exists" during linking, you have to delete ~/Library/Developer/Xcode/Templates and ~/Library/Developer/Xcode/UserData/CodeSnippets first.
