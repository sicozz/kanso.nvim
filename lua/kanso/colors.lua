---@class PaletteColors
local palette = {

    -- Bg Shades
    zen0 = "#090E13",
    zen1 = "#1C1E25",
    zen2 = "#22262D",
    zen3 = "#393B44",

    -- Popup and Floats
    zenBlue1 = "#f5f5f5",
    zenBlue2 = "#ffffff",

    -- Diff and Git
    winterGreen = "#ffff88",
    winterYellow = "#49443C",
    winterRed = "#43242B",
    winterBlue = "#eeeeee",
    autumnGreen = "#ffdd00",
    autumnRed = "#C34043",
    autumnYellow = "#DCA561",

    -- Diag
    samuraiRed = "#C34043",
    roninYellow = "#DCA561",
    zenAqua1 = "#ffee44",
    inkBlue = "#ffff00",

    -- Fg and Comments
    oldWhite = "#C5C9C7",
    fujiWhite = "#f2f1ef",

    springViolet1 = "#938AA9",
    springBlue = "#ffff14",
    zenAqua2 = "#fff000",

    springGreen = "#ffff00",
    carpYellow = "#E6C384",

    zenRed = "#E46876",
    katanaGray = "#717C7C",

    inkBlack0 = "#14171d",
    inkBlack1 = "#1f1f26",
    inkBlack2 = "#22262D",
    inkBlack3 = "#393B44",
    inkBlack4 = "#4b4e57",

    inkWhite = "#C5C9C7",
    inkGreen = "#ffee44",
    inkGreen2 = "#ffdd00",
    inkPink = "#a292a3",
    inkOrange = "#b6927b",
    inkOrange2 = "#b98d7b",
    inkGray = "#A4A7A4",
    inkGray1 = "#909398",
    inkGray2 = "#75797f",
    inkGray3 = "#5C6066",
    inkBlue2 = "#ffffff",
    inkViolet = "#8992a7",
    inkRed = "#c4746e",
    inkAqua = "#ffffcc",
    inkAsh = "#5C6066",
    inkTeal = "#f5f5f5",
    inkYellow = "#c4b28a", --"#a99c8b",
    -- "#8a9aa3",

    -- Mist Shades
    mist0 = "#22262D",
    mist1 = "#2a2c35",
    mist2 = "#393B44",
    mist3 = "#5C6066",

    mistWhite = "#C5C9C7",
    mistGreen = "#ffee44",
    mistGreen2 = "#ffdd00",
    mistPink = "#a292a3",
    mistOrange = "#b6927b",
    mistOrange2 = "#b98d7b",
    mistGray = "#A4A7A4",
    mistGray1 = "#909398",
    mistGray2 = "#75797f",
    mistGray3 = "#5C6066",
    mistBlue2 = "#ffffff",
    mistViolet = "#8992a7",
    mistRed = "#c4746e",
    mistAqua = "#ffffcc",
    mistAsh = "#5C6066",
    mistTeal = "#f5f5f5",
    mistYellow = "#c4b28a",

    pearlInk0 = "#22262D",
    pearlInk1 = "#545464",
    pearlInk2 = "#eeeeee",
    pearlGray = "#e2e1df",
    pearlGray2 = "#5C6068",
    pearlGray3 = "#6D6D69",
    pearlGray4 = "#9F9F99",

    pearlWhite0 = "#f2f1ef",
    pearlWhite1 = "#e2e1df",
    pearlWhite2 = "#dddddb",
    pearlWhite3 = "#cacac7",
    pearlViolet1 = "#a09cac",
    pearlViolet2 = "#766b90",
    pearlViolet3 = "#c9cbd1",
    pearlViolet4 = "#624c83",
    pearlBlue1 = "#ffffff",
    pearlBlue2 = "#f5f5f5",
    pearlBlue3 = "#eeeeee",
    pearlBlue4 = "#ffffff",
    pearlBlue5 = "#f5f5f5",
    pearlGreen = "#ffdd00",
    pearlGreen2 = "#ffee44",
    pearlGreen3 = "#ffff88",
    pearlPink = "#b35b79",
    pearlOrange = "#cc6d00",
    pearlOrange2 = "#e98a00",
    pearlYellow = "#77713f",
    pearlYellow2 = "#836f4a",
    pearlYellow3 = "#de9800",
    pearlYellow4 = "#f9d791",
    pearlRed = "#c84053",
    pearlRed2 = "#d7474b",
    pearlRed3 = "#e82424",
    pearlRed4 = "#d9a594",
    pearlAqua = "#ffffcc",
    pearlAqua2 = "#fff000",
    pearlTeal1 = "#f5f5f5",
    pearlTeal2 = "#ffffff",
    pearlTeal3 = "#eeeeee",
    pearlCyan = "#ffffcc",
}

local M = {}
--- Generate colors table:
--- * opts:
---   - colors: Table of personalized colors and/or overrides of existing ones.
---     Defaults to KansoConfig.colors.
---   - theme: Use selected theme. Defaults to KansoConfig.theme
---     according to the value of 'background' option.
---@param opts? { colors?: table, theme?: string }
---@return { theme: ThemeColors, palette: PaletteColors}
function M.setup(opts)
    opts = opts or {}
    local override_colors = opts.colors or require("kanso").config.colors
    local theme = opts.theme or require("kanso")._CURRENT_THEME -- WARN: this fails if called before kanso.load()

    if not theme then
        error(
            "kanso.colors.setup(): Unable to infer `theme`. Either specify a theme or call this function after ':colorscheme kanso'"
        )
    end

    -- Add to and/or override palette_colors
    local updated_palette_colors = vim.tbl_extend("force", palette, override_colors.palette or {})

    -- Generate the theme according to the updated palette colors
    local theme_colors = require("kanso.themes")[theme](updated_palette_colors)

    -- Add to and/or override theme_colors
    local theme_overrides =
        vim.tbl_deep_extend("force", override_colors.theme["all"] or {}, override_colors.theme[theme] or {})
    local updated_theme_colors = vim.tbl_deep_extend("force", theme_colors, theme_overrides)
    -- return palette_colors AND theme_colors

    return {
        theme = updated_theme_colors,
        palette = updated_palette_colors,
    }
end

return M
