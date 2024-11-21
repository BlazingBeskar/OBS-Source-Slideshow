obs = obslua

-- Made by BlazingBeskar, Credit is appreciated but not required, feel free to use however you like.

-- Settings
settings = {
    scene_name = "",    -- Scene containing the sources to be toggled
    on_duration = 5000, -- Duration each source is shown (in milliseconds)
    off_duration = 1000 -- Duration each source is off before the next one is shown (in milliseconds)
}

-- State
current_source_index = 1
timer_started = false
sources = {}
showing_source = false

-- Script description
function script_description()
    return "Toggles sources in a scene like a slideshow, showing each source for a specified on-duration and off-duration."
end

-- Script properties
function script_properties()
    local props = obs.obs_properties_create()

    obs.obs_properties_add_text(props, "scene_name", "Scene Name", obs.OBS_TEXT_DEFAULT)
    obs.obs_properties_add_int(props, "on_duration", "On Duration (ms)", 100, 10000, 100)
    obs.obs_properties_add_int(props, "off_duration", "Off Duration (ms)", 100, 10000, 100)

    return props
end

-- Script update
function script_update(data)
    settings.scene_name = obs.obs_data_get_string(data, "scene_name")
    settings.on_duration = obs.obs_data_get_int(data, "on_duration")
    settings.off_duration = obs.obs_data_get_int(data, "off_duration")
    print("Script updated: Scene Name = " .. settings.scene_name .. ", On Duration = " .. settings.on_duration .. " ms, Off Duration = " .. settings.off_duration .. " ms")
end

-- Script load
function script_load(data)
    obs.obs_frontend_add_event_callback(handle_event)
    print("Script loaded")
end

-- Handle events
function handle_event(event)
    if event == obs.OBS_FRONTEND_EVENT_SCENE_CHANGED then
        local scene = obs.obs_frontend_get_current_scene()
        if scene then
            local scene_name = obs.obs_source_get_name(scene)
            print("Scene changed: " .. scene_name)
            if scene_name == settings.scene_name then
                start_timer()
            else
                stop_timer()
            end
            obs.obs_source_release(scene)
        end
    end
end

-- Start the timer
function start_timer()
    if not timer_started then
        print("Starting timer")
        update_sources()
        obs.timer_add(toggle_sources, settings.on_duration)
        timer_started = true
    end
end

-- Stop the timer
function stop_timer()
    if timer_started then
        print("Stopping timer")
        obs.timer_remove(toggle_sources)
        timer_started = false
    end
end

-- Update the sources list
function update_sources()
    local scene = obs.obs_get_source_by_name(settings.scene_name)
    if scene then
        local scene_items = obs.obs_scene_enum_items(obs.obs_scene_from_source(scene))
        sources = {}

        for _, item in ipairs(scene_items) do
            table.insert(sources, item)
        end

        obs.sceneitem_list_release(scene_items)
        obs.obs_source_release(scene)
        print("Sources updated: " .. #sources .. " sources found")
    else
        print("Scene not found: " .. settings.scene_name)
    end
end

-- Toggle sources
function toggle_sources()
    if #sources == 0 then
        print("No sources to toggle")
        return
    end

    if showing_source then
        -- Hide the current source
        local current_source = sources[current_source_index]
        obs.obs_sceneitem_set_visible(current_source, false)
        print("Hiding source: " .. obs.obs_source_get_name(obs.obs_sceneitem_get_source(current_source)))

        -- Schedule to show the next source
        showing_source = false
        obs.timer_remove(toggle_sources)
        obs.timer_add(toggle_sources, settings.off_duration)

        -- Move to the next source
        current_source_index = current_source_index + 1
        if current_source_index > #sources then
            current_source_index = 1
        end
    else
        -- Show the current source
        local current_source = sources[current_source_index]
        obs.obs_sceneitem_set_visible(current_source, true)
        print("Showing source: " .. obs.obs_source_get_name(obs.obs_sceneitem_get_source(current_source)))

        -- Schedule to hide the current source
        showing_source = true
        obs.timer_remove(toggle_sources)
        obs.timer_add(toggle_sources, settings.on_duration)
    end
end
