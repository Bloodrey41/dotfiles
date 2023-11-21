
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
            ["#041016", "#041016"],  # 0 - Layout section background color
            ["#eeeeee", "#eeeeee"],  # 1 - Default text color
            ["#777777", "#777777"],  # 2 - Inactive groups text color
            ["#1976d2", "#1976d2"],  # 3 - Active window label border color
            ["#eeeeee", "#eeeeee"],  # 4 - Date section text color
            ["#071450", "#071450"],  # 5 - Widget section background color
            ["#5f707a", "#5f707a"],  # 6 - Secondary monitor unfocused group background color
            ["#0b66c3", "#0b66c3"],  # 7
            ["#050027", "#050027"],  # 8 - Groups background color
            ["#3c58ac", "#3c58ac"],  # 9 - RAM section background color
            ["#34335a", "#34335a"],  # 10 - Unfocused group background color
            ["#607d8b", "#607d8b"],  # 11
            ["#1a36ab", "#1a36ab"],  # 12 - Window section background color
            ["#5e7ace", "#5e7ace"],  # 13 - GPU section background color
            ["#344964", "#344964"],  # 14 - Inactive window border color
            ["#1a368a", "#1a368a"],  # 15 - Date section background color
            ]
        }

def init_colors(colorscheme="default"):
    return colorschemes[colorscheme]


colors = init_colors("bluescheme")
