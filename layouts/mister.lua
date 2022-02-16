require "keybow"

-- Keybow MINI --

function setup()
    keybow.use_mini()
    keybow.auto_lights(false)
    keybow.clear_lights()

    keybow.set_pixel(0, 0xff, 0x00, 0x00)
    keybow.set_pixel(1, 0xff, 0x80, 0x00)
    keybow.set_pixel(2, 0xff, 0xff, 0x00)
end

-- Key mappings --

function handle_minikey_00(pressed)
    keybow.set_key(keybow.ENTER, pressed)
end

function handle_minikey_01(pressed)
    -- load menu core
    keybow.set_key(keybow.F12, pressed)
end

function handle_minikey_02(pressed)
    if pressed then
        -- reset the mister
        keybow.set_modifier(keybow.LEFT_SHIFT, keybow.KEY_DOWN)
        keybow.set_modifier(keybow.LEFT_CTRL,  keybow.KEY_DOWN)
        keybow.set_modifier(keybow.LEFT_ALT,   keybow.KEY_DOWN)
        keybow.set_modifier(keybow.RIGHT_ALT,  keybow.KEY_DOWN)
        keybow.sleep(10)
        -- let go of keys
        keybow.set_modifier(keybow.LEFT_SHIFT, keybow.KEY_UP)
        keybow.set_modifier(keybow.LEFT_CTRL,  keybow.KEY_UP)
        keybow.set_modifier(keybow.LEFT_ALT,   keybow.KEY_UP)
        keybow.set_modifier(keybow.RIGHT_ALT,  keybow.KEY_UP)
    end
end
