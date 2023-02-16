if fs.is_dir("csgo\\materials\\skybox") == false then -- Checks for custom skybox folder 
    fs.create_dir("csgo\\materials\\skybox")
end

local skyboxes = {
    "--",
    "sky_lunacy",
  --"skybox name here" put skybox files in csgo\\materials\\skybox (if directory dosent exist, simply run the lua once then check the directory)
}

local skybox_combolist = gui.add_combo("Custom skybox", "lua>tab b", skyboxes)
function on_paint()
     cvar.sv_skyname:set_string(skyboxes[skybox_combolist:get_int() + 1]) -- Grabs current listbox index
end
