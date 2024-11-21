# OBS Lua Script: Source Toggle Slideshow

This script for OBS Studio toggles sources in a specified scene, simulating a slideshow effect. Each source is displayed for a configurable duration, followed by a brief off-duration before the next source appears.

Credit is appreciated but not required, feel free to use however you like.

Türkçe için [buraya](./Kılavuz.md) tıklayın.

---

## Features

- Automatically toggles sources in a scene like a slideshow.
- Configurable **on-duration** and **off-duration** for each source.
- Automatically starts/stops when switching to/from the specified scene.

---

## Setup Instructions

1. **Download the Script**  
   Save the provided [obsslideshow.lua](./obsslideshow.lua) script to your computer.

2. **Add the Script to OBS**  
   - Open OBS Studio.  
   - Navigate to `Tools > Scripts`.  
   - Click the `+` button in the Scripts window.  
   - Select the saved Lua script and click `Open`.

3. **Configure the Script**  
   After loading the script, you'll see configurable fields in the Scripts window:
   - **Scene Name**: The name of the scene containing the sources to toggle.
   - **On Duration (ms)**: Duration in milliseconds for which each source remains visible.
   - **Off Duration (ms)**: Duration in milliseconds before the next source is shown.

---

## Usage

1. **Prepare the Scene**  
   - Create or select a scene in OBS with multiple sources you want to toggle.  
   - Ensure all sources are added as individual items in the scene.

2. **Configure the Script**  
   - Enter the scene name in the script settings.  
   - Adjust the `on-duration` and `off-duration` values as desired.

3. **Start the Slideshow**  
   - Switch to the configured scene in OBS.  
   - The script will automatically start toggling sources in the specified scene.

4. **Stop the Slideshow**  
   - Switch away from the configured scene to stop the script automatically.

---

## Notes

- The script dynamically detects sources in the specified scene when activated. Ensure all intended sources are properly configured.
- The **on-duration** and **off-duration** must be specified in milliseconds (e.g., `5000` ms = 5 seconds).
- For best results, avoid manually toggling sources while the script is active.

---

## Troubleshooting

- **Scene not toggling sources:**  
  Ensure the scene name matches exactly, including case sensitivity.

- **Sources not visible or hidden incorrectly:**  
  Verify the sources in the scene are properly named and configured.

- **Script not starting:**  
  Make sure the script is loaded and settings are correctly applied in the Scripts window.

---

Feel free to contribute or report issues via this repository! Happy streaming!
