# Compiles example haskell web app, from scratch using ghc.
# Assumes all dependencies already got downloaded and are accessible.
#
# Requires:
# - GHC 8.8.3 or newer.

ghc --make -package wai -package wai-extra -package wai-log -package warp -package warp-tls -package http-types -package bytestring -package blaze-builder -package utf-8-string -package text -O2 -o ./bin/app ./Main.hs
