{-# LANGUAGE NoImplicitPrelude #-}

{- |
   Identity.hs -- The Fundamental Identity Type for the Computational Commons.

   In the OMI system, identity is not a hash, checksum, or digest.
   Identity is the addressed place-value Relation: a 12-field record
   (8 x Word16 + 4 x Word32) that derives from the byte table structure.

   This module defines the core identity types that any implementation
   of the computational commons must provide. The types are pure,
   imported from no external library, and built from first principles.

   Source: adapted from omi-canvas/src/OMI/Kernel.hs, Core.hs, Relation.hs
-}

module Identity
  ( -- * Fundamental Types
    Null(..)
  , Bit(..)
  , Pair(..)
  , Nibble(..)
  , Byte(..)
  , Word16(..)
  , Word32(..)
    -- * The Identity Type
  , Relation(..)
  , nullRel
    -- * Core Wrappers
  , Atom(..)
  , Path(..)
  , Receipt(..)
  , Envelope(..)
    -- * Field Access
  , relW16a, relW16b, relW16c, relW16d
  , relW16e, relW16f, relW16g, relW16h
  , relW32a, relW32b, relW32c, relW32d
    -- * Equality
  , eqRelation
  ) where

-- | The empty type -- the absence of value.
data Null = Null

-- | A single bit.
data Bit = O | I

-- | A pair -- the fundamental constructor.
data Pair a b = Pair a b

cons :: a -> b -> Pair a b
cons a b = Pair a b

car :: Pair a b -> a
car (Pair a _) = a

cdr :: Pair a b -> b
cdr (Pair _ b) = b

-- | Four bits compose a nibble.
data Nibble = N Bit Bit Bit Bit

-- | Two nibbles compose a byte.
data Byte = B Nibble Nibble

-- | Two bytes compose a 16-bit word.
data Word16 = W16 Byte Byte

-- | Two 16-bit words compose a 32-bit word.
data Word32 = W32 Word16 Word16

-- | The Relation: the fundamental identity type.
--
-- A 12-field record: 8 x Word16 + 4 x Word32.
-- This is the addressed place-value structure that serves as identity
-- throughout the computational commons. It is NOT a hash, checksum,
-- or digest. It is an address derived from the byte table.
data Relation = Relation
  Word16 Word16 Word16 Word16   -- fields a-d
  Word16 Word16 Word16 Word16   -- fields e-h
  Word32 Word32 Word32 Word32   -- fields i-l

-- | The null relation: all fields zero.
nullRel :: Relation
nullRel = Relation null16 null16 null16 null16
                   null16 null16 null16 null16
                   null32 null32 null32 null32

null16 :: Word16
null16 = W16 (B (N O O O O) (N O O O O)) (B (N O O O O) (N O O O O))

null32 :: Word32
null32 = W32 null16 null16

-- | An Atom: a Relation that encodes a byte sequence.
newtype Atom = Atom Relation

-- | A Path: a Relation that denotes a traversal.
newtype Path = Path Relation

-- | A Receipt: a Relation that records acceptance.
newtype Receipt = Receipt Relation

-- | An Envelope: a Relation that wraps a payload.
newtype Envelope = Envelope Relation

-- Field accessors

relW16a :: Relation -> Word16
relW16a (Relation a _ _ _ _ _ _ _ _ _ _ _) = a

relW16b :: Relation -> Word16
relW16b (Relation _ b _ _ _ _ _ _ _ _ _ _) = b

relW16c :: Relation -> Word16
relW16c (Relation _ _ c _ _ _ _ _ _ _ _ _) = c

relW16d :: Relation -> Word16
relW16d (Relation _ _ _ d _ _ _ _ _ _ _ _) = d

relW16e :: Relation -> Word16
relW16e (Relation _ _ _ _ e _ _ _ _ _ _ _) = e

relW16f :: Relation -> Word16
relW16f (Relation _ _ _ _ _ f _ _ _ _ _ _) = f

relW16g :: Relation -> Word16
relW16g (Relation _ _ _ _ _ _ g _ _ _ _ _) = g

relW16h :: Relation -> Word16
relW16h (Relation _ _ _ _ _ _ _ h _ _ _ _) = h

relW32a :: Relation -> Word32
relW32a (Relation _ _ _ _ _ _ _ _ a _ _ _) = a

relW32b :: Relation -> Word32
relW32b (Relation _ _ _ _ _ _ _ _ _ b _ _) = b

relW32c :: Relation -> Word32
relW32c (Relation _ _ _ _ _ _ _ _ _ _ c _) = c

relW32d :: Relation -> Word32
relW32d (Relation _ _ _ _ _ _ _ _ _ _ _ d) = d

-- Equality

data Bool = Fls | Tru

andB :: Bool -> Bool -> Bool
andB Tru Tru = Tru
andB _ _ = Fls

eqBit :: Bit -> Bit -> Bool
eqBit O O = Tru
eqBit I I = Tru
eqBit _ _ = Fls

eqNibble :: Nibble -> Nibble -> Bool
eqNibble (N a b c d) (N e f g h) =
  andB (andB (eqBit a e) (eqBit b f))
       (andB (eqBit c g) (eqBit d h))

eqByte :: Byte -> Byte -> Bool
eqByte (B a b) (B c d) = andB (eqNibble a c) (eqNibble b d)

eqWord16 :: Word16 -> Word16 -> Bool
eqWord16 (W16 a b) (W16 c d) = andB (eqByte a c) (eqByte b d)

eqWord32 :: Word32 -> Word32 -> Bool
eqWord32 (W32 a b) (W32 c d) = andB (eqWord16 a c) (eqWord16 b d)

-- | Structural equality of Relations.
-- Two Relations are equal iff all 12 fields are equal.
eqRelation :: Relation -> Relation -> Bool
eqRelation
  (Relation a1 b1 c1 d1 e1 f1 g1 h1 i1 j1 k1 l1)
  (Relation a2 b2 c2 d2 e2 f2 g2 h2 i2 j2 k2 l2) =
    andB (andB (eqWord16 a1 a2) (eqWord16 b1 b2))
    (andB (andB (eqWord16 c1 c2) (eqWord16 d1 d2))
    (andB (andB (eqWord16 e1 e2) (eqWord16 f1 f2))
    (andB (andB (eqWord16 g1 g2) (eqWord16 h1 h2))
    (andB (andB (eqWord32 i1 i2) (eqWord32 j1 j2))
          (andB (eqWord32 k1 k2) (eqWord32 l1 l2))))))
