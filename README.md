# OBS-Source-Slideshow
An OBS Script to toggle sources in a scene like a slideshow

OBS Lua Script: Source Slideshow Toggle

This script for OBS Studio allows you to toggle sources in a specified scene, simulating a slideshow effect. Each source is displayed for a defined duration, followed by a short off-duration before the next source appears.
Features

    Automatically toggles sources in a scene like a slideshow.
    Configurable on-duration and off-duration for each source.
    Automatically starts/stops when switching to/from the configured scene.

Setup Instructions

    Download the Script:
        Save the provided Lua script to a location on your computer.

    Add the Script to OBS:
        Open OBS Studio.
        Navigate to Tools > Scripts.
        Click the + button in the Scripts window.
        Select the saved Lua script and click Open.

    Configure the Script:
        After loading the script, you'll see configurable fields in the Scripts window:
            Scene Name: The name of the scene containing the sources to toggle.
            On Duration (ms): Duration in milliseconds for which each source remains visible.
            Off Duration (ms): Duration in milliseconds before the next source is shown.

Usage

    Prepare the Scene:
        Create or select a scene in OBS with multiple sources you want to toggle.
        Ensure all sources are added as individual items in the scene.

    Configure the Script:
        Enter the scene name in the script settings.
        Adjust the on-duration and off-duration as desired.

    Start the Slideshow:
        Switch to the configured scene in OBS.
        The script will automatically start toggling sources in the specified scene.

    Stop the Slideshow:
        Switch away from the configured scene to stop the script automatically.

Notes

    The script dynamically detects sources in the specified scene when activated. Ensure all intended sources are properly configured.
    The on_duration and off_duration must be specified in milliseconds (e.g., 5000 ms = 5 seconds).
    For best results, avoid manually toggling sources while the script is active.

Troubleshooting

    Scene not toggling sources: Ensure the scene name matches exactly, including case sensitivity.
    Sources not visible or hidden incorrectly: Verify the sources in the scene are properly named and configured.
    Script not starting: Make sure the script is loaded and settings are correctly applied in the Scripts window.

Feel free to contribute or report issues via this repository! Happy streaming!
