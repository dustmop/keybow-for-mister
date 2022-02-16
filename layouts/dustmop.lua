require "keybow"

-- Keybow MINI --

colorseq = {
  16711680, 16713984, 16716032, 16718336, 16720384,
  16722688, 16724736, 16727040, 16729088, 16731392,
  16733440, 16735744, 16737792, 16740096, 16742144,
  16744448, 16746496, 16748288, 16750336, 16752128,
  16754176, 16755968, 16758016, 16759808, 16761856,
  16763648, 16765440, 16767488, 16769280, 16771328,
  16773120, 16775168, 16776960, 16318208, 15793920,
  15335168, 14810880, 14352128, 13827840, 13369088,
  12910336, 12386048, 11927296, 11403008, 10944256,
  10419968,  9961216,  9436928,  8978176,  8974080,
   8969984,  8965888,  8961792,  8957696,  8953600,
   8949504,  8945664,  8941568,  8937472,  8933376,
   8929280,  8925184,  8921088,  8916992
}

function setup()
    keybow.use_mini()
    keybow.auto_lights(false)
    keybow.clear_lights()

    for i=1,64 do
       r, g, b = get_color(i+0)
       keybow.set_pixel(0, r, g, b)
       r, g, b = get_color(i+1)
       keybow.set_pixel(1, r, g, b)
       r, g, b = get_color(i+2)
       keybow.set_pixel(2, r, g, b)
       keybow.sleep(200)
    end
end


function get_color(n)
    n = math.fmod(n, #colorseq)
    c = colorseq[n+1]
    r = math.floor(math.fmod(c / 0x10000, 0x100))
    g = math.floor(math.fmod(c / 0x100,   0x100))
    b = math.floor(math.fmod(c / 0x1,     0x100))
    return r, g, b
end

-- Key mappings --

function handle_minikey_00(pressed)
    keybow.set_key("0", pressed)
    if pressed then
        keybow.set_pixel(0, 255, 0, 0)
    else
        keybow.set_pixel(0, 0, 0, 0)
    end
end

function handle_minikey_01(pressed)
    keybow.set_key("1", pressed)
    if pressed then
        keybow.set_pixel(1, 0, 255, 0)
    else
        keybow.set_pixel(1, 0, 0, 0)
    end
end

function handle_minikey_02(pressed)
    keybow.set_key("2", pressed)
    if pressed then
        keybow.set_pixel(2, 0, 0, 255)
    else
        keybow.set_pixel(2, 0, 0, 0)
    end
end
