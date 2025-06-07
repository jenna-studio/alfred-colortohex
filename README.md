# Color Name to Hex – Alfred Workflow

A simple Alfred workflow that allows you to search CSS color names and copy their HEX values with a circular color preview icon.

## Features

-   Type `color pink`, `color red`, etc. to search for a named CSS color
-   Displays a circular thumbnail preview for each color
-   Press Enter to copy the HEX code to clipboard

<img width="571" alt="alfred-readme-img" src="https://github.com/user-attachments/assets/839f635a-efdd-4f63-a1bc-fa6c37759956" />


## Setup

1. Install Pillow:
   `pip3 install pillow`
   `brew install pillow`

2. In your Script Filter:

    - Language: /bin/bash - with input as {query}
    - Script:
      /opt/homebrew/bin/python3 "$PWD/colorname.py" "{query}"

3. In your Copy to Clipboard
    - Type: Plain Text - Match destination formatting on paste
        - {query}

## How it works

-   All valid CSS color names and their HEX codes are stored in a dictionary in `colorname.py`
-   When you search, the script filters for matching names and dynamically generates a circular PNG thumbnail for each result
-   The thumbnail is stored in the `icons/` folder in the same directory as your script
-   Alfred displays the color name and HEX code, and copies the HEX value on selection

## Example

Typing: `color pink`

Will display: `#ffc0cb – copy HEX for 'pink'` With a pink circular thumbnail.
By selecting, the HEX value will be copied to your clipboard.

## Notes

-   Only relative icon paths work in Alfred (e.g., icons/pink.png)
-   Make sure `{query}` is enclosed in double quotes and passed correctly from the Script Filter
-   If no result is shown, check if the query is being passed (log `sys.argv` inside the script)
