from libqtile import bar
from .widgets import *
from libqtile.config import Screen
import os

screens = [
    Screen(
        top=bar.Bar(
            [   widget.Sep(padding=3, linewidth=0, background="#2f343f"),
                widget.Image(filename='~/.config/qtile/eos-c.png', margin=3, background="#2f343f", mouse_callbacks={'Button1': lambda: qtile.cmd_spawn("rofi -show combi")}),
                widget.Sep(padding=4, linewidth=0, background="#2f343f"), 
                widget.GroupBox(
                                highlight_method='line',
                                this_screen_border="#5294e2",
                                this_current_screen_border="#5294e2",
                                active="#ffffff",
                                inactive="#848e96",
                                background="#2f343f"),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f'
                       ),    
                widget.Prompt(),
                widget.Spacer(length=5),
                widget.WindowName(foreground='#99c0de',fmt='{}'),
                widget.Chord(
                    chords_colors={
                        'launch': ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.CurrentLayoutIcon(scale=0.75),
                widget.Systray(icon_size = 20),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f'
                       ), 
                widget.KeyboardLayout(
                       configured_keyboards = ['pl'],
                       background = "#2f343f"
                       ),
                widget.TextBox(                                                                    
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f'
                       ),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f'
                       ),    
                widget.Backlight(
                        backlight_name = "intel_backlight",
                        format = "🖵 {percent:2.0%}",
                        fontsize = 14,
                        background = "#2f343f",
                        foreground = colors[5],
                       ),
                widget.TextBox(                                                                    
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f'
                       ),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f'
                       ),    
                MyVolume(
                    fontsize=14,
                    font='Font Awesome 5 Free',
                    foreground=colors[4],
                    background='#2f343f',
                    mouse_callbacks = {'Button1': lambda: qtile.cmd_spawn("pavucontrol")}
                ),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f',
                       ),   
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f'
                       ),    
                widget.Battery(
                       background = "#2f343f",
                       format = "{char} 🗲{percent:2.0%}",
                       foreground = colors[5],
                       fontsize = 14,
                        ),
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f',
                       ),   
                widget.TextBox(
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f'
                       ),    
                widget.Clock(format=' %Y-%m-%d %a %I:%M %p',
                             background="#2f343f",
                             foreground='#9bd689'),
                                                widget.TextBox(                                                
                                                
                       text = '',
                       padding = 0,
                       fontsize = 28,
                       foreground='#2f343f',
                       ),   
                widget.TextBox(
                    text='',
                    mouse_callbacks= {
                        'Button1':
                        lambda: qtile.cmd_spawn(os.path.expanduser('~/.config/rofi/powermenu.sh'))
                    },
                    foreground='#e39378'
                )
                
            ],
            30,  # height in px
            background="#404552"  # background color
        ), ),
]
