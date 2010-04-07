import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

myManageHook = composeAll $
     [ 
       className =? "Iceweasel"       --> doShift "3 web" 
     , className =? "Thunderbird-bin" --> doShift "2 mail"
     , className =? "Thunderbird"     --> doShift "2 mail"
     , className =? "Navigator"       --> doShift "3 web" 
     , className =? "Mail"            --> doShift "2 mail"
     , className =? "Namoroka"        --> doShift "3 web" 
     , className =? "Shredder"        --> doShift "2 mail"
     , className =? "ktorrent"        --> doShift "9 misc"
     , composeOne [ isFullscreen      -?> doFullFloat ]
     , manageDocks
     ]

main :: IO ()
main = do
       xmobar <- spawnPipe "xmobar /home/antti/.xmonad/xmobar"
       xmonad defaultConfig
        { modMask = mod4Mask
        , workspaces = ["1 sys","2 mail","3 web","4 irc","5 news","6 games","7 misc","8 misc","9 misc"]
        , manageHook = myManageHook <+> manageHook defaultConfig
        , terminal   = "uxterm"
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , logHook = dynamicLogWithPP $ xmobarPP
              { ppOutput = hPutStrLn xmobar
              , ppTitle = xmobarColor "green" "" . shorten 50
              }
        }
 
