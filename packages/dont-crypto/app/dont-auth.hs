{-# LANGUAGE OverloadedStrings #-}
import AWSLambda.Events.APIGateway
import Control.Lens
import Data.Aeson
import Data.Aeson.Embedded
import qualified Data.ByteString as ByteString
main = apiGatewayMain handler

handler :: APIGatewayProxyRequest (Embedded Value) -> IO (APIGatewayProxyResponse (Embedded [Int]))
handler request = do
  putStrLn "This is a placeholder Authorizer lambda"
  pure $ responseOK & responseBodyEmbedded ?~ [1,2,3]

