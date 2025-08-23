local c = require("kanso.lib.color")

--TODO:
--PreProc needs its own color
--parameter and field should be different
---@class SyntaxElements
---@field string ColorSpec
---@field variable ColorSpec
---@field number ColorSpec
---@field constant ColorSpec
---@field identifier ColorSpec
---@field parameter ColorSpec
---@field fun ColorSpec
---@field statement ColorSpec
---@field keyword ColorSpec
---@field operator ColorSpec
---@field preproc ColorSpec
---@field type ColorSpec
---@field regex ColorSpec
---@field deprecated ColorSpec
---@field comment ColorSpec
---@field punct ColorSpec
---@field special1 ColorSpec
---@field special2 ColorSpec
---@field special3 ColorSpec

---@class DiagnosticsElements
---@field error ColorSpec
---@field ok ColorSpec
---@field warning ColorSpec
---@field info ColorSpec
---@field hint ColorSpec
--
---@class DiffElements
---@field add ColorSpec
---@field delete ColorSpec
---@field change ColorSpec
---@field text ColorSpec

---@class VCSElements
---@field added ColorSpec
---@field removed ColorSpec
---@field changed ColorSpec
---@field untracked ColorSpec

---@class UiElements
---@field none ColorSpec
---@field fg ColorSpec Default foreground
---@field fg_dim ColorSpec Dimmed foreground
---@field fg_reverse ColorSpec
---@field bg_dim ColorSpec Dimmed background
---@field bg_m3 ColorSpec
---@field bg_m2 ColorSpec
---@field bg_m1 ColorSpec
---@field bg ColorSpec Default background
---@field bg_p1 ColorSpec Lighter background ColorColumn, Folded, Gutter
---@field bg_p2 ColorSpec Lighter background Cursor{Line,Column}, TabLineSel (Selected Items)
---@field bg_gutter ColorSpec {Sign,Fold}Column, LineNr
---@field special ColorSpec SpecialKey
---@field indent_line ColorSpec IndentLine
---@field active_indent_line ColorSpec IndentLine
---@field nontext ColorSpec LineNr, NonText
---@field whitespace ColorSpec Whitespace
---@field bg_search ColorSpec
---@field bg_visual ColorSpec
---@field cursor_line_nr_foreground ColorSpec
---@field cursor_line_nr_active_foreground ColorSpec
---@field cursor_bg ColorSpec
---@field cursor_fg ColorSpec
---@field pmenu MenuElements
---@field float FloatElements

---@class FloatElements
---@field fg ColorSpec
---@field bg ColorSpec
---@field fg_border ColorSpec
---@field bg_border ColorSpec

---@class MenuElements
---@field bg ColorSpec
---@field fg ColorSpec
---@field fg_sel ColorSpec
---@field bg_sel ColorSpec
---@field bg_sbar ColorSpec
---@field bg_thumb ColorSpec

---@class ThemeColors
---@field syn SyntaxElements
---@field diag DiagnosticsElements
---@field vcs VCSElements
---@field diff DiffElements
---@field ui UiElements
---@field term ColorSpec[]

return {
    ---@param palette PaletteColors
    ---@return ThemeColors
    zen = function(palette)
        return {
            ui = {
                none = "NONE",
                fg = palette.inkWhite,
                fg_dim = palette.inkGray,
                fg_reverse = palette.zenBlue1,

                bg_dim = palette.zen0,

                bg_m3 = palette.zen0,
                bg_m2 = palette.zen0,
                bg_m1 = palette.zen0,
                bg = palette.zen0,
                bg_p1 = palette.zen1,
                bg_p2 = palette.zen2,

                special = palette.inkGray3,
                indent_line = palette.inkBlack2,
                active_indent_line = palette.inkBlack3,
                whitespace = palette.inkBlack3,
                nontext = palette.inkAsh,

                bg_visual = palette.inkBlack3,
                bg_search = palette.zenBlue2,

                cursor_line_nr_foreground = palette.inkGray3,
                cursor_line_nr_active_foreground = palette.fujiWhite,
                cursor_bg = palette.fujiWhite,
                cursor_fg = palette.zen0,

                pmenu = {
                    fg = palette.fujiWhite,
                    fg_sel = "NONE",
                    bg = palette.zen0,
                    bg_sel = palette.inkBlack3,
                    bg_thumb = palette.inkBlack3,
                    bg_sbar = palette.zen0,
                },

                float = {
                    fg = palette.inkGray,
                    bg = palette.zen0,
                    fg_border = palette.zen2,
                    bg_border = palette.zen0,
                },
            },
            syn = {
                string = palette.inkGreen2,
                variable = "NONE",
                number = palette.inkPink,
                constant = palette.inkOrange,
                identifier = palette.inkViolet,
                parameter = palette.inkGray1,
                fun = palette.inkBlue2,
                statement = palette.inkViolet,
                keyword = palette.inkViolet,
                operator = palette.inkGray1,
                preproc = palette.inkGray1,
                type = palette.inkAqua,
                regex = palette.inkRed,
                deprecated = palette.katanaGray,
                punct = palette.inkGray1,
                comment = palette.inkGray2,
                special1 = palette.inkYellow,
                special2 = palette.inkViolet,
                special3 = palette.inkViolet,
            },
            diag = {
                error = palette.samuraiRed,
                ok = palette.springGreen,
                warning = palette.roninYellow,
                info = palette.inkBlue,
                hint = palette.zenAqua1,
            },
            diff = {
                add = palette.winterGreen,
                delete = palette.winterRed,
                change = palette.winterBlue,
                text = palette.winterYellow,
            },
            vcs = {
                added = palette.autumnGreen,
                removed = palette.autumnRed,
                changed = palette.autumnYellow,
                untracked = palette.inkGray2,
            },
            term = {
                palette.zen0, -- black
                palette.inkRed, -- red
                palette.inkGreen2, -- green
                palette.inkYellow, -- yellow
                palette.inkBlue2, -- blue
                palette.inkPink, -- magenta
                palette.inkWhite, -- cyan
                palette.inkGray, -- white
                palette.inkGray1, -- bright black
                palette.zenRed, -- bright red
                palette.inkGreen, -- bright green
                palette.carpYellow, -- bright yellow
                palette.springBlue, -- bright blue
                palette.springViolet1, -- bright magenta
                palette.zenAqua2, -- bright cyan
                palette.inkWhite, -- bright white
                palette.inkOrange, -- extended color 1
                palette.inkOrange2, -- extended color 2
            },
        }
    end,
    ---@param palette PaletteColors
    ---@return ThemeColors
    ink = function(palette)
        return {
            ui = {
                none = "NONE",
                fg = palette.inkWhite,
                fg_dim = palette.inkGray,
                fg_reverse = palette.zenBlue1,

                bg_dim = palette.inkBlack0,

                bg_m3 = palette.inkBlack0,
                bg_m2 = palette.inkBlack0,
                bg_m1 = palette.inkBlack0,
                bg = palette.inkBlack0,
                bg_p1 = palette.inkBlack1,
                bg_p2 = palette.inkBlack2,

                special = palette.inkGray3,
                indent_line = palette.inkBlack2,
                active_indent_line = palette.inkBlack3,
                whitespace = palette.inkBlack4,
                nontext = palette.inkAsh,

                bg_visual = palette.inkBlack3,
                bg_search = palette.zenBlue2,

                cursor_line_nr_foreground = palette.inkGray3,
                cursor_line_nr_active_foreground = palette.fujiWhite,
                cursor_bg = palette.fujiWhite,
                cursor_fg = palette.inkBlack0,

                pmenu = {
                    fg = palette.fujiWhite,
                    fg_sel = "NONE",
                    bg = palette.inkBlack0,
                    bg_sel = palette.inkBlack3,
                    bg_thumb = palette.inkBlack3,
                    bg_sbar = palette.inkBlack0,
                },

                float = {
                    fg = palette.inkGray,
                    bg = palette.inkBlack0,
                    fg_border = palette.inkBlack2,
                    bg_border = palette.inkBlack0,
                },
            },
            syn = {
                string = palette.inkGreen2,
                variable = "NONE",
                number = palette.inkPink,
                constant = palette.inkOrange,
                identifier = palette.inkViolet,
                parameter = palette.inkGray1,
                fun = palette.inkBlue2,
                statement = palette.inkViolet,
                keyword = palette.inkViolet,
                operator = palette.inkGray1,
                preproc = palette.inkGray1,
                type = palette.inkAqua,
                regex = palette.inkRed,
                deprecated = palette.katanaGray,
                punct = palette.inkGray1,
                comment = palette.inkGray2,
                special1 = palette.inkYellow,
                special2 = palette.inkViolet,
                special3 = palette.inkViolet,
            },
            diag = {
                error = palette.samuraiRed,
                ok = palette.springGreen,
                warning = palette.roninYellow,
                info = palette.inkBlue,
                hint = palette.zenAqua1,
            },
            diff = {
                add = palette.winterGreen,
                delete = palette.winterRed,
                change = palette.winterBlue,
                text = palette.winterYellow,
            },
            vcs = {
                added = palette.autumnGreen,
                removed = palette.autumnRed,
                changed = palette.autumnYellow,
                untracked = palette.inkGray2,
            },
            term = {
                palette.inkBlack0, -- black
                palette.inkRed, -- red
                palette.inkGreen2, -- green
                palette.inkYellow, -- yellow
                palette.inkBlue2, -- blue
                palette.inkPink, -- magenta
                palette.inkWhite, -- cyan
                palette.inkGray, -- white
                palette.inkGray1, -- bright black
                palette.zenRed, -- bright red
                palette.inkGreen, -- bright green
                palette.carpYellow, -- bright yellow
                palette.springBlue, -- bright blue
                palette.springViolet1, -- bright magenta
                palette.zenAqua2, -- bright cyan
                palette.inkWhite, -- bright white
                palette.inkOrange, -- extended color 1
                palette.inkOrange2, -- extended color 2
            },
        }
    end,
    ---@param palette PaletteColors
    ---@return ThemeColors
    pearl = function(palette)
        return {
            ui = {
                none = "NONE",
                fg = palette.pearlInk0,
                fg_dim = palette.pearlInk1,
                fg_reverse = palette.pearlGray,

                bg_dim = palette.pearlWhite0,

                bg_m3 = palette.pearlWhite0,
                bg_m2 = palette.pearlWhite0,
                bg_m1 = palette.pearlWhite0,
                bg = palette.pearlWhite0,
                bg_p1 = palette.pearlWhite1,
                bg_p2 = palette.pearlWhite1,

                nontext = palette.pearlViolet1,
                whitespace = palette.pearlWhite3,
                special = palette.pearlViolet2,
                indent_line = palette.pearlWhite2,
                active_indent_line = palette.pearlWhite2,

                bg_visual = palette.pearlWhite2,
                bg_search = palette.pearlBlue2,

                cursor_line_nr_foreground = palette.pearlGray4,
                cursor_line_nr_active_foreground = palette.inkBlack2,
                cursor_bg = palette.fujiWhite,
                cursor_fg = palette.inkBlack2,

                pmenu = {
                    fg = palette.pearlInk2,
                    fg_sel = "NONE", -- This is important to make highlights pass-through
                    bg = palette.pearlWhite0,
                    bg_sel = palette.pearlWhite2,
                    bg_thumb = palette.pearlWhite2,
                    bg_sbar = palette.pearlWhite0,
                },
                float = {
                    fg = palette.pearlInk2,
                    bg = palette.pearlWhite0,
                    fg_border = palette.pearlWhite2,
                    bg_border = palette.pearlWhite0,
                },
            },
            syn = {
                string = palette.pearlGreen,
                variable = "NONE",
                number = palette.pearlPink,
                constant = palette.pearlOrange,
                identifier = palette.pearlViolet4,
                parameter = palette.pearlBlue5,
                fun = palette.pearlBlue4,
                statement = palette.pearlViolet4,
                keyword = palette.pearlViolet4,
                operator = palette.pearlGray3,
                preproc = palette.pearlGray2,
                type = palette.pearlAqua,
                regex = palette.pearlYellow2,
                deprecated = palette.pearlGray3,
                comment = palette.pearlGray3,
                punct = palette.pearlGray3,
                special1 = palette.pearlYellow2,
                special2 = palette.pearlViolet4,
                special3 = palette.pearlViolet4,
            },
            vcs = {
                added = palette.pearlGreen2,
                removed = palette.pearlRed2,
                changed = palette.pearlYellow3,
                untracked = palette.pearlGray4,
            },
            diff = {
                add = palette.pearlGreen3,
                delete = palette.pearlRed4,
                change = palette.pearlCyan,
                text = palette.pearlYellow4,
            },
            diag = {
                error = palette.pearlRed3,
                ok = palette.pearlGreen,
                warning = palette.pearlOrange2,
                info = palette.pearlTeal3,
                hint = palette.pearlAqua2,
            },
            term = {
                palette.inkBlack2, -- black
                palette.pearlRed, -- red
                palette.pearlGreen, -- green
                palette.pearlYellow, -- yellow
                palette.pearlBlue4, -- blue
                palette.pearlPink, -- magenta
                palette.pearlAqua, -- cyan
                palette.pearlInk0, -- white
                palette.pearlGray3, -- bright black
                palette.pearlRed2, -- bright red
                palette.pearlGreen2, -- bright green
                palette.pearlYellow2, -- bright yellow
                palette.pearlTeal2, -- bright blue
                palette.pearlViolet4, -- bright magenta
                palette.pearlAqua2, -- bright cyan
                palette.pearlInk2, -- bright white
                palette.pearlOrange2, -- extended color 1
                palette.pearlRed3, -- extended color 2
            },
        }
    end,
    ---@param palette PaletteColors
    ---@return ThemeColors
    mist = function(palette)
        return {
            ui = {
                none = "NONE",
                fg = palette.mistWhite,
                fg_dim = palette.mistGray,
                fg_reverse = palette.zenBlue1,

                bg_dim = palette.mist0,

                bg_m3 = palette.mist0,
                bg_m2 = palette.mist0,
                bg_m1 = palette.mist0,
                bg = palette.mist0,
                bg_p1 = palette.mist2,
                bg_p2 = palette.mist2,

                special = palette.mistGray3,
                indent_line = palette.mistGray3,
                active_indent_line = palette.mistGray3,
                whitespace = palette.mist3,
                nontext = palette.mistAsh,

                bg_visual = palette.mist2,
                bg_search = palette.zenBlue2,

                cursor_line_nr_foreground = palette.mistGray2,
                cursor_line_nr_active_foreground = palette.fujiWhite,
                cursor_bg = palette.fujiWhite,
                cursor_fg = palette.mist0,

                pmenu = {
                    fg = palette.fujiWhite,
                    fg_sel = "NONE",
                    bg = palette.mist0,
                    bg_sel = palette.mist2,
                    bg_thumb = palette.mist2,
                    bg_sbar = palette.mist0,
                },

                float = {
                    fg = palette.mistGray,
                    bg = palette.mist0,
                    fg_border = palette.mist2,
                    bg_border = palette.mist0,
                },
            },
            syn = {
                string = palette.mistGreen2,
                variable = "NONE",
                number = palette.mistPink,
                constant = palette.mistOrange,
                identifier = palette.mistViolet,
                parameter = palette.mistGray1,
                fun = palette.mistBlue2,
                statement = palette.mistViolet,
                keyword = palette.mistViolet,
                operator = palette.mistGray1,
                preproc = palette.mistGray1,
                type = palette.mistAqua,
                regex = palette.mistRed,
                deprecated = palette.katanaGray,
                punct = palette.mistGray1,
                comment = palette.mistGray2,
                special1 = palette.mistYellow,
                special2 = palette.mistViolet,
                special3 = palette.mistViolet,
            },
            diag = {
                error = palette.samuraiRed,
                ok = palette.springGreen,
                warning = palette.roninYellow,
                info = palette.inkBlue,
                hint = palette.zenAqua1,
            },
            diff = {
                add = palette.winterGreen,
                delete = palette.winterRed,
                change = palette.winterBlue,
                text = palette.winterYellow,
            },
            vcs = {
                added = palette.autumnGreen,
                removed = palette.autumnRed,
                changed = palette.autumnYellow,
                untracked = palette.mistGray2,
            },
            term = {
                palette.mist0, -- black
                palette.mistRed, -- red
                palette.mistGreen2, -- green
                palette.mistYellow, -- yellow
                palette.mistBlue2, -- blue
                palette.mistPink, -- magenta
                palette.mistWhite, -- cyan
                palette.mistGray, -- white
                palette.mistGray1, -- bright black
                palette.zenRed, -- bright red
                palette.mistGreen, -- bright green
                palette.carpYellow, -- bright yellow
                palette.springBlue, -- bright blue
                palette.springViolet1, -- bright magenta
                palette.zenAqua2, -- bright cyan
                palette.mistWhite, -- bright white
                palette.mistOrange, -- extended color 1
                palette.mistOrange2, -- extended color 2
            },
        }
    end,
    ---@param palette PaletteColors
    ---@return ThemeColors
    goprime = function(palette)
        return {
            ui = {
                none = "NONE",
                fg = palette.goprimeWhite,
                fg_dim = palette.goprimeWhite1,
                fg_reverse = palette.goprimeBlack,

                bg_dim = palette.goprimeBlack,
                bg_m3 = palette.goprimeBlack,
                bg_m2 = palette.goprimeBlack,
                bg_m1 = palette.goprimeBlack,
                bg = palette.goprimeBlack,
                bg_p1 = palette.goprimeBlack1,
                bg_p2 = palette.goprimeBlack2,

                bg_gutter = palette.goprimeBlack1,
                special = palette.goprimeYellow,
                indent_line = palette.goprimeBlack3,
                active_indent_line = palette.goprimeYellow3,
                whitespace = palette.goprimeBlack3,
                nontext = palette.goprimeWhite3,

                bg_visual = palette.goprimeBlack3,
                bg_search = palette.goprimeYellow2,

                cursor_line_nr_foreground = palette.goprimeBlack4,
                cursor_line_nr_active_foreground = palette.goprimeYellow,
                cursor_bg = palette.goprimeYellow,
                cursor_fg = palette.goprimeBlack,

                pmenu = {
                    fg = palette.goprimeWhite,
                    fg_sel = palette.goprimeBlack,
                    bg = palette.goprimeBlack2,
                    bg_sel = palette.goprimeYellow,
                    bg_thumb = palette.goprimeBlack4,
                    bg_sbar = palette.goprimeBlack1,
                },

                float = {
                    fg = palette.goprimeWhite,
                    bg = palette.goprimeBlack1,
                    fg_border = palette.goprimeYellow,
                    bg_border = palette.goprimeBlack,
                },
            },
            syn = {
                string = palette.goprimeYellow1,
                variable = palette.goprimeWhite,
                number = palette.goprimeYellow1,
                constant = palette.goprimeYellow3,
                identifier = palette.goprimeYellow1,
                parameter = palette.goprimeWhite2,
                fun = palette.goprimeWhite,
                statement = palette.goprimeYellow3,
                keyword = palette.goprimeYellow3,
                operator = palette.goprimeYellow,
                preproc = palette.goprimeWhite3,
                type = palette.goprimeWhite1,
                regex = palette.pearlCyan,
                deprecated = palette.goprimeWhite4,
                punct = palette.goprimeWhite3,
                comment = palette.goprimeWhite4,
                special1 = palette.goprimeYellow,
                special2 = palette.goprimeYellow1,
                special3 = palette.goprimeYellow2,
            },
            diag = {
                error = palette.goprimeRed,
                ok = palette.goprimeGreen,
                warning = palette.goprimeOrange,
                info = palette.goprimeYellow3,
                hint = palette.goprimeYellow4,
            },
            diff = {
                add = palette.goprimeYellow5,
                delete = palette.goprimeYellow5,
                change = palette.goprimeYellow5,
                text = palette.goprimeYellow2,
            },
            vcs = {
                added = palette.goprimeGreen,
                removed = palette.goprimeRed,
                changed = palette.goprimeOrange,
                untracked = palette.goprimeWhite3,
            },
            term = {
                palette.goprimeBlack, -- black
                palette.goprimeRed, -- red
                palette.goprimeGreen, -- green
                palette.goprimeYellow, -- yellow
                palette.goprimeYellow3, -- blue (using yellow variant)
                palette.goprimeYellow2, -- magenta (using yellow variant)
                palette.goprimeYellow1, -- cyan (using yellow variant)
                palette.goprimeWhite, -- white
                palette.goprimeBlack4, -- bright black
                palette.goprimeRed, -- bright red
                palette.goprimeGreen, -- bright green
                palette.goprimeYellow1, -- bright yellow
                palette.goprimeYellow2, -- bright blue (using yellow variant)
                palette.goprimeYellow3, -- bright magenta (using yellow variant)
                palette.goprimeYellow4, -- bright cyan (using yellow variant)
                palette.goprimeWhite1, -- bright white
                palette.goprimeOrange, -- extended color 1
                palette.goprimeYellow4, -- extended color 2
            },
        }
    end,
    ---@param palette PaletteColors
    ---@return ThemeColors
    goultra = function(palette)
        return {
            ui = {
                none = "NONE",
                fg = palette.goultraWhite,
                fg_dim = palette.goultraWhite1,
                fg_reverse = palette.goultraBlack,

                bg_dim = palette.goultraBlack,
                bg_m3 = palette.goultraBlack,
                bg_m2 = palette.goultraBlack,
                bg_m1 = palette.goultraBlack,
                bg = palette.goultraBlack,
                bg_p1 = palette.goultraBlack1,
                bg_p2 = palette.goultraBlack2,

                bg_gutter = palette.goultraBlack1,
                special = palette.goultraCyan,
                indent_line = palette.goultraBlack3,
                active_indent_line = palette.goultraCyan3,
                whitespace = palette.goultraBlack3,
                nontext = palette.goultraWhite3,

                bg_visual = palette.goultraBlack3,
                bg_search = palette.goultraCyan2,

                cursor_line_nr_foreground = palette.goultraBlack4,
                cursor_line_nr_active_foreground = palette.goultraCyan,
                cursor_bg = palette.goultraCyan,
                cursor_fg = palette.goultraBlack,

                pmenu = {
                    fg = palette.goultraWhite,
                    fg_sel = palette.goultraBlack,
                    bg = palette.goultraBlack2,
                    bg_sel = palette.goultraCyan,
                    bg_thumb = palette.goultraBlack4,
                    bg_sbar = palette.goultraBlack1,
                },

                float = {
                    fg = palette.goultraWhite,
                    bg = palette.goultraBlack1,
                    fg_border = palette.goultraCyan,
                    bg_border = palette.goultraBlack,
                },
            },
            syn = {
                string = palette.goultraCyan1,
                variable = palette.goultraWhite,
                number = palette.goultraCyan1,
                constant = palette.goultraCyan3,
                identifier = palette.goultraCyan1,
                parameter = palette.goultraWhite2,
                fun = palette.goultraWhite,
                statement = palette.goultraCyan3,
                keyword = palette.goultraCyan3,
                operator = palette.goultraCyan,
                preproc = palette.goultraWhite3,
                type = palette.goultraWhite1,
                regex = palette.pearlCyan,
                deprecated = palette.goultraWhite4,
                punct = palette.goultraWhite3,
                comment = palette.goultraWhite4,
                special1 = palette.goultraCyan,
                special2 = palette.goultraCyan1,
                special3 = palette.goultraCyan2,
            },
            diag = {
                error = palette.goultraRed,
                ok = palette.goultraGreen,
                warning = palette.goultraOrange,
                info = palette.goultraCyan3,
                hint = palette.goultraCyan4,
            },
            diff = {
                add = palette.goultraCyan5,
                delete = palette.goultraCyan5,
                change = palette.goultraCyan5,
                text = palette.goultraCyan2,
            },
            vcs = {
                added = palette.goultraGreen,
                removed = palette.goultraRed,
                changed = palette.goultraOrange,
                untracked = palette.goultraWhite3,
            },
            term = {
                palette.goultraBlack, -- black
                palette.goultraRed, -- red
                palette.goultraGreen, -- green
                palette.goultraCyan, -- yellow (using cyan)
                palette.goultraCyan3, -- blue (using cyan variant)
                palette.goultraCyan2, -- magenta (using cyan variant)
                palette.goultraCyan1, -- cyan (using cyan variant)
                palette.goultraWhite, -- white
                palette.goultraBlack4, -- bright black
                palette.goultraRed, -- bright red
                palette.goultraGreen, -- bright green
                palette.goultraCyan1, -- bright yellow (using cyan variant)
                palette.goultraCyan2, -- bright blue (using cyan variant)
                palette.goultraCyan3, -- bright magenta (using cyan variant)
                palette.goultraCyan4, -- bright cyan (using cyan variant)
                palette.goultraWhite1, -- bright white
                palette.goultraOrange, -- extended color 1
                palette.goultraCyan4, -- extended color 2
            },
        }
    end,
}
