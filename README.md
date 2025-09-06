# Color Name to Hex – Alfred Workflow

A simple Alfred workflow that lets you search CSS color names and copy their HEX values, complete with a circular color preview icon.

## Preview

<img src="screenshots/screenshot-color-blue.png" style="width:500px">

## Quick Start (One-liner Install)

Run this in your terminal:

```sh
curl -fsSL https://raw.githubusercontent.com/jenna-studio/alfred-colortohex/main/install.sh | sh
```

This will:

* Download the repo into a temporary folder
* Package it as a `.alfredworkflow` file
* Open it so Alfred imports it automatically

After that, just type `color pink` in Alfred and press **Enter** to copy the HEX code.

## Features

* Type `color pink`, `color blue`, etc. to search for a named CSS color
* Displays a circular thumbnail preview for each color
* Press Enter to copy the HEX code to your clipboard

## Requirements

* Alfred 5 with Powerpack
* macOS 12 or later (recommended)

## Installation (manual)

If you prefer manual setup:

1. Clone this repository:

   ```sh
   git clone https://github.com/jenna-studio/alfred-colortohex.git
   cd alfred-colortohex
   ```

2. In Alfred Preferences, go to **Workflows → + → Blank Workflow**.

3. Add a **Script Filter**:

   * Set the keyword to `color`
   * Drag in `colorname.py` as the script

4. Connect the Script Filter to a **Copy to Clipboard** output.

You can also export this workflow locally on your machine as a `.alfredworkflow` file for reuse, but please don’t commit that file to the repo.

## Usage

* Open Alfred and type:

  ```
  color <name>
  ```

  Examples:

  * `color pink`
  * `color cornflowerblue`
  * `color lightseagreen`

* Each result shows a circular swatch preview.

* Press **Enter** to copy the HEX code of the selected color to your clipboard.

## Supported Colors

This workflow supports all standard CSS named colors (e.g., `rebeccapurple`, `lightseagreen`, etc.), as defined in the CSS Color specification.

## Troubleshooting

* **No results appear**
  Make sure you typed a valid CSS color name. See [MDN’s list of named colors](https://developer.mozilla.org/en-US/docs/Web/CSS/named-color) for reference.

* **Workflow doesn’t run**
  Verify you set up the Script Filter with the correct Python script.

* **Clipboard doesn’t update**
  Check Alfred’s macOS permissions (System Settings → Privacy & Security → Accessibility / Automation).

## Development

* Main logic: `colorname.py`
* To modify or extend functionality, edit the script and re-export the workflow from Alfred.

## License

MIT
