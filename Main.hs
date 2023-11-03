{-# LANGUAGE OverloadedStrings #-}
{- | Sample Haskell Web Application 
 -   Based on WAI, implemented with the WARP web server.
 -   See https://www.yesodweb.com/book/web-application-interface
 -   See https://www.stackage.org/package/wai
 -} 
import Network.Wai
import Network.Wai.Handler.Warp (run)
import Network.Wai.Middleware.RequestLogger
import Network.Wai.Application.Static


{- | Entry point of the application. Defines and logs on which 
 -   port to listen, and starts the web server. 
 -}
main :: IO ()
main = do
    -- Probably a good idea later on to read the port from input.
    let port = 8181 
    -- Determine the root folder of the website:
    -- if relative, starts at the webserver executable.
    let webroot = "public"
    putStrLn $ "Listening on port " ++ show port
    -- Choice 1: run over http, no encryption.
    run port $ logStdout $ staticApp $ defaultFileServerSettings webroot

