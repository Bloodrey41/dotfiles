
from defaults import colorscheme

colorschemes = {
        "default": [["#ff5555", "#ff5555"],  # 0
                    ["#ffffff", "#ffffff"],  # 1
                    ["#ffd47e", "#ffd47e"],  # 2
                    ["#62FF00", "#62FF00"],  # 3
                    ["#c40234", "#c40234"],  # 4
                    ["#6790eb", "#6790eb"],  # 5
                    ["#282c34", "#282c34"],  # 6
                    ["#212121", "#212121"],  # 7
                    ["#e75480", "#e75480"],  # 8
                    ["#2aa899", "#2aa899"],  # 9
                    ["#abb2bf", "#abb2bf"],  # 10
                    ["#56b6c2", "#56b6c2"],  # 11
                    ["#b48ead", "#b48ead"],  # 12
                    ["#ff79c6", "#ff79c6"],  # 13
                    ["#e06c75", "#e06c75"],  # 14
                    ["#ffb86c", "#ffb86c"]],  # 15

        "bluescheme": [["#0d47a1", "#0d47a1"],  # 0 - Dark Blue
                       ["#1565c0", "#1565c0"],  # 1 - Medium Blue
                       ["#1976d2", "#1976d2"],  # 2 - Blue
                       ["#1e88e5", "#1e88e5"],  # 3 - Bright Blue
                       ["#2196f3", "#2196f3"],  # 4 - Sky Blue
                       ["#64b5f6", "#64b5f6"],  # 5 - Light Blue
                       ["#bbdefb", "#bbdefb"],  # 6 - Pale Blue
                       ["#ffffff", "#ffffff"],  # 7 - White
                       ["#cfd8dc", "#cfd8dc"],  # 8 - Light Gray
                       ["#90a4ae", "#90a4ae"],  # 9 - Gray
                       ["#607d8b", "#607d8b"],  # 10 - Dark Gray
                       ["#455a64", "#455a64"],  # 11 - Very Dark Gray
                       ["#263238", "#263238"],  # 12 - Blue Black
                       ["#000000", "#000000"],  # 13 - Black
                       ["#80d8ff", "#80d8ff"],  # 14 - Pastel Blue
                       ["#00b0ff", "#00b0ff"]   # 15 - Electric Blue
                       ] 
        }

def init_colors(colorscheme="bluescheme"):
    return colorschemes[colorscheme]


colors = init_colors("tokyonight")
