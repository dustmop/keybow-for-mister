require "keybow"

-- Keybow MINI --

function setup()
    keybow.auto_lights(false)
    keybow.clear_lights()

    -- 0th column
    keybow.set_pixel(11, 0xc0, 0x00, 0x00); -- RED
    keybow.set_pixel(10, 0x10, 0x10, 0x10);
    keybow.set_pixel( 9, 0x10, 0x10, 0x10);

    -- 1st column
    keybow.set_pixel( 8, 0x10, 0x10, 0x10);
    keybow.set_pixel( 7, 0xa0, 0x40, 0x00); -- yellow
    keybow.set_pixel( 6, 0x20, 0x20, 0xc0); -- blue

    -- 2nd column
    keybow.set_pixel( 5, 0x10, 0x10, 0x10);
    keybow.set_pixel( 4, 0x20, 0x20, 0xc0); -- blue
    keybow.set_pixel( 3, 0x20, 0x20, 0xc0); -- blue

    -- 3rd column
    keybow.set_pixel( 2, 0x40, 0xc0, 0x40); -- green
    keybow.set_pixel( 1, 0xa0, 0x40, 0x00); -- yellow
    keybow.set_pixel( 0, 0x20, 0x20, 0xc0); -- blue
end

-- Key mappings --

function handle_key_11(pressed)
    -- RESET
    if pressed then
        -- magic key combination
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

function handle_key_07(pressed)
    -- ESCAPE
    keybow.set_key(keybow.ESC, pressed)
end

function handle_key_06(pressed)
    -- LEFT_ARROW
    keybow.set_key(keybow.LEFT_ARROW, pressed)
end

function handle_key_04(pressed)
    -- UP_ARROW
    keybow.set_key(keybow.UP_ARROW, pressed)
end

function handle_key_03(pressed)
    -- DOWN_ARROW
    keybow.set_key(keybow.DOWN_ARROW, pressed)
end

function handle_key_02(pressed)
    -- F12 / on-screen-display
    keybow.set_key(keybow.F12, pressed)
end

function handle_key_01(pressed)
    -- ENTER
    keybow.set_key(keybow.ENTER, pressed)
end

function handle_key_00(pressed)
    -- RIGHT_ARROW
    keybow.set_key(keybow.RIGHT_ARROW, pressed)
end
