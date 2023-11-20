
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
            ["#111111", "#111111"],  # 0 - Layout section background color
            ["#eeeeee", "#eeeeee"],  # 1 - Default text color
            ["#aaaaaa", "#aaaaaa"],  # 2 - Inactive groups text color
            ["#1976d2", "#1976d2"],  # 3 - Active window label border color
            ["#eeeeee", "#eeeeee"],  # 4 - Date section text color
            ["#0d47a1", "#0d47a1"],  # 5 - Widget section background color
            ["#80d8ff", "#80d8ff"],  # 6
            ["#1e88e5", "#1e88e5"],  # 7
            ["#263238", "#263238"],  # 8 - Groups background color
            ["#2196f3", "#2196f3"],  # 9 - RAM section background color
            ["#90a4ae", "#90a4ae"],  # 10 - Unfocused monitor group background color
            ["#607d8b", "#607d8b"],  # 11
            ["#64b5f6", "#64b5f6"],  # 12 - Window section background color
            ["#00b0ff", "#00b0ff"],  # 13 - GPU section background color
            ["#455a64", "#455a64"],  # 14 - Inactive window border color
            ["#1565c0", "#1565c0"],  # 15 - Date section background color
            ]
        }

def init_colors(colorscheme="default"):
    return colorschemes[colorscheme]


colors = init_colors("bluescheme")
