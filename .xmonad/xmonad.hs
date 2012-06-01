--
-- Xmonad.hs
-- Main configuration file for Xmonad
--

-- Import statements
import XMonad
import XMonad.Hooks.DynamicLog
import qualified Data.Map as M

-- Main Function
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

-- Xmobar
myBar = "xmobar"
myPP = xmobarPP 
     { 
       ppOrder           = \(ws:_:t:_) -> [ws,t]
     , ppCurrent         = xmobarColor "#ffffff" "#0055ee"
     , ppHiddenNoWindows = xmobarColor "#000000" ""
     , ppHidden          = xmobarColor "#ffffff" ""
     , ppTitle           = xmobarColor "#00ddff" ""
     , ppWsSep             = ""
     }

toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

-- Configuration
myConfig = defaultConfig 
     {
       terminal           = myTerm
     , modMask            = myModMask
     , borderWidth        = myBorderWidth
     , focusedBorderColor = myFocusedBorderColor
     , workspaces         = myWorkspaces
     , focusFollowsMouse  = False
     , manageHook         = myManageHook <+> manageHook defaultConfig
     , keys               = \c -> myKeys c `M.union` keys defaultConfig c
     }
     where
        myKeys (XConfig {modMask = modm}) = M.fromList $
               [ 
                 ((modm, xK_f),  spawn "google-chrome")
               , ((modm, xK_s),  spawn "skype") 
               , ((0, xK_Print), spawn "scrot -e 'mv $f ~/personal/pictures/screenshots/'")
               ]
               
myTerm = "urxvtc"
myModMask = mod4Mask
myBorderWidth = 1
myFocusedBorderColor = "#0055ee"
myWorkspaces = [" 1 "," 2 "," 3 "," 4 "," 5 "," 6 "," 7 "," 8 "," 9 "]

myManageHook = composeAll 
     [ 
       className =? "skype" --> doShift "4"
     , className =? "skype" --> doFloat
     , className =? "google-chrome" --> doShift "1" 
     ]
