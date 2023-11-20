
from defaults import colorscheme

colorschemes = {
        "default": [
            ["#ff5555", "#ff5555"],  # 0
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
            ["#ffb86c", "#ffb86c"]   # 15
            ],
        "bluescheme": [
            ["#000000", "#000000"],   # 0 - Layout section background color
            ["#cfd8dc", "#cfd8dc"],  # 1 - Default text color
            ["#bbdefb", "#bbdefb"],  # 2 - Inactive groups text color
            ["#1976d2", "#1976d2"],  # 3 - Active window border color
            ["#ffffff", "#ffffff"],  # 4 - Date section text color
            ["#1e88e5", "#1e88e5"],  # 5 - Widget section background color
            ["#64b5f6", "#64b5f6"],  # 6
            ["#80d8ff", "#80d8ff"],  # 7
            ["#00b0ff", "#00b0ff"],  # 8 - Groups background color
            ["#1565c0", "#1565c0"],  # 9 - RAM section background color
            ["#90a4ae", "#90a4ae"],  # 10 - Unfocused monitor group background color
            ["#607d8b", "#607d8b"],  # 11
            ["#455a64", "#455a64"],  # 12 - Window section background color
            ["#2196f3", "#2196f3"],  # 13 - GPU section background color
            ["#263238", "#263238"],  # 14
            ["#0d47a1", "#0d47a1"],  # 15 - Date section background color
            ]
        }

def init_colors(colorscheme="default"):
    return colorschemes[colorscheme]


colors = init_colors("bluescheme")
