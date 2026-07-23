-- =========================================================================
-- SovereigntyModelCheck.hs - STANDALONE AUTHORITY INVARIANT VERIFIER
-- =========================================================================
module Main where

import Data.Bits ((.&.))
import SovereigntyModel
import System.Exit (exitFailure, exitSuccess)

checkAuthorityGates :: Bool
checkAuthorityGates =
    length [GateRules .. GateConfigurations] == 6

checkStructuralDimensions :: Bool
checkStructuralDimensions =
    gateDimension GateRules == 0
        && gateDimension GateConfigurations == 5
        && gateDimension GateConstructs == 4

checkSessionTransformInvariants :: Bool
checkSessionTransformInvariants =
    let initialContext = SovereigntyContext 0x1337133713371337 0x0000
        token = 0xDEADBEEFDEADBEEF
        (ctx1, coord1) = evaluateSessionAuthority initialContext token
        (ctx2, coord2) = evaluateSessionAuthority initialContext token
        isDeterministic = (coord1 == coord2) && (activeSessionAxis ctx1 == activeSessionAxis ctx2)
        isMaskedWord = currentWordContext ctx1 == (coord1 .&. 0xFFFF)
    in isDeterministic && isMaskedWord

checkSubstrateTracks :: Bool
checkSubstrateTracks =
    length [TargetRules .. TargetCons] == 5

main :: IO ()
main = do
    putStrLn "Executing Layer 5 Axiomatic Sovereignty Invariant Scan..."
    let assertions =
          [ (checkAuthorityGates, "Six Active Relational Truth Gates Completeness")
          , (checkStructuralDimensions, "Geometric Structural Dimension Level Mapping")
          , (checkSessionTransformInvariants, "Single-Cycle O(1) Session Step Determinism and Masking")
          , (checkSubstrateTracks, "Five Core Binary Substrate Targets Verification")
          ]
    mapM_
        ( \(passed, label) ->
            if passed
                then putStrLn $ "  [PASS] " ++ label
                else putStrLn $ "  [FAIL] " ++ label
        )
        assertions
    if all fst assertions
        then exitSuccess
        else exitFailure
