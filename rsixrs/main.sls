#!r6rs
;;; This program is free software. It comes without any warranty, to
;;; the extent permitted by applicable law. You can redistribute it
;;; and/or modify it under the terms of the Do What The Fuck You Want
;;; To Public License, Version 2, as published by Sam Hocevar. See
;;; http://sam.zoy.org/wtfpl/COPYING for more details.
(library (rsixrs)
(export
 
; (rnrs base)

define
define-syntax
quote
lambda
if
set!
cond
case
and
or
let
let*
letrec
letrec*
let-values
let*-values
begin
eqv?
eq?
equal?
procedure?
+
-
*
abs
numerator
denominator
gcd
lcm
floor
ceiling
truncate
round
rationalize
real-part
imag-part
make-rectangular
/
div
mod
div-and-mod
div0
mod0
div0-and-mod0
number?
complex?
real?
rational?
integer?
real-valued?
rational-valued?
integer-valued?
exact?
inexact?
inexact
exact
=
<
>
<=
>=
zero?
positive?
negative?
odd?
even?
finite?
infinite?
nan?
max
min
exp
log
sin
cos
tan
asin
acos
atan
sqrt
exact-integer-sqrt
expt
make-polar
magnitude
angle
number->string
string->number
not
boolean?
boolean=?

; 11.9 Pairs and lists

pair?
cons
car
cdr
caar
cadr
cdar
cddr
caaar
caadr
cadar
caddr
cdaar
cdadr
cddar
cdddr
caaaar
caaadr
caadar
caaddr
cadaar
cadadr
caddar
cadddr
cdaaar
cdaadr
cdadar
cdaddr
cddaar
cddadr
cdddar
cddddr
null?
list?
list
length
append
reverse
list-tail
list-ref
map
for-each

; 11.10 Symbols

symbol?
symbol->string
symbol=?
string->symbol

; 11.11 Characters

char?
char->integer
integer->char
char=?
char<?
char>?
char<=?
char>=?

; 11.12 Strings

string?
make-string
string
string-length
string-ref
string=?
string<?
string>?
string<=?
string>=?
substring
string-append
string->list
list->string
string-for-each
string-copy

; 11.13 Vectors

vector?
make-vector
vector
vector-length
vector-ref
vector-set!
vector->list
list->vector
vector-fill!
vector-map
vector-for-each

;; 11.14 Errors and violations

error
assertion-violation
assert

;; 11.15 Control features

apply
call-with-current-continuation
call/cc
values
call-with-values
dynamic-wind

;; 11.16 Iteration

; let  ; already listed

;; 11.17 Quasiquotation

quasiquote

;; 11.18 Binding constructs for syntactic keywords

let-syntax
letrec-syntax

;; 11.19 Macro Transformers

syntax-rules
identifier-syntax

;;; (rnrs unicode)

char-upcase
char-downcase
char-titlecase
char-foldcase

string-upcase
string-downcase
string-titlecase
string-foldcase
string-ci=?
string-ci<?
string-ci>?
string-ci<=?
string-ci>=?
string-normalize-nfd
string-normalize-nfkd
string-normalize-nfc
string-normalize-nfkc

;;; (rnrs bytevectors)

endianness
native-endianness

bytevector?
make-bytevector
bytevector-length
bytevector=?
bytevector-fill!
bytevector-copy!
bytevector-copy

bytevector-u8-ref
bytevector-s8-ref
bytevector-u8-set!
bytevector-s8-set!
bytevector->u8-list
u8-list->bytevector

bytevector-uint-ref
bytevector-sint-ref
bytevector-uint-set!
bytevector-sint-set!
bytevector->uint-list
bytevector->sint-list
uint-list->bytevector
sint-list->bytevector

bytevector-u16-ref
bytevector-s16-ref
bytevector-u16-native-ref
bytevector-s16-native-ref
bytevector-u16-set!
bytevector-s16-set!
bytevector-u16-native-set!
bytevector-s16-native-set!

bytevector-u32-ref
bytevector-s32-ref
bytevector-u32-native-ref
bytevector-s32-native-ref
bytevector-u32-set!
bytevector-s32-set!
bytevector-u32-native-set!
bytevector-s32-native-set!

bytevector-u64-ref
bytevector-s64-ref
bytevector-u64-native-ref
bytevector-s64-native-ref
bytevector-u64-set!
bytevector-s64-set!
bytevector-u64-native-set!
bytevector-s64-native-set!

bytevector-ieee-single-native-ref
bytevector-ieee-single-ref
bytevector-ieee-double-native-ref
bytevector-ieee-double-ref
bytevector-ieee-single-native-set!
bytevector-ieee-single-set!
bytevector-ieee-double-native-set!
bytevector-ieee-double-set!

string->utf8
string->utf16
string->utf32
utf8->string
utf16->string
utf32->string

;;; (rnrs lists)

find

for-all
exists

filter
partition

fold-left
fold-right

remp
remove
remv
remq

memp
member
memv
memq

assp
assoc
assv
assq

cons*

;;; (rnrs sorting)

list-sort
vector-sort
vector-sort!

;;; (rnrs control)

when
unless
do
case-lambda

;;; (rnrs records syntactic)

define-record-type
record-type-descriptor
record-constructor-descriptor

;;; (rnrs records procedural)

make-record-type-descriptor
record-type-descriptor?
make-record-constructor-descriptor
record-constructor
record-predicate
record-accessor
record-mutator

;;; (rnrs records inspection)

record?
record-rtd
record-type-name
record-type-parent
record-type-uid
record-type-generative?
record-type-sealed?
record-type-opaque?
record-type-field-names
record-field-mutable?

;;; (rnrs exceptions)

with-exception-handler
guard
raise
raise-continuable

;;; (rnrs conditions)

condition
simple-conditions
condition?
condition-predicate
condition-accessor
define-condition-type

make-message-condition
message-condition?
condition-message

make-warning
warning?

make-serious-condition
serious-condition?

make-error
error?

make-violation
violation?

make-assertion-violation
assertion-violation?

make-irritants-condition
irritants-condition?
condition-irritants

make-who-condition
who-condition?
condition-who

make-non-continuable-violation
non-continuable-violation?

make-implementation-restriction-violation
implementation-restriction-violation?

make-lexical-violation
lexical-violation?

make-syntax-violation
syntax-violation?
syntax-violation-form
syntax-violation-subform

make-undefined-violation
undefined-violation?

;;; (rnrs io ports)

; the following condition types are also exported by (rnrs io simple)
; and (rnrs files)
make-i/o-error
i/o-error?

make-i/o-read-error
i/o-read-error?

make-i/o-write-error
i/o-write-error?

make-i/o-invalid-position-error
i/o-invalid-position-error?
i/o-error-position

make-i/o-filename-error
i/o-filename-error?
i/o-error-filename

make-i/o-file-protection-error
i/o-file-protection-error?

make-i/o-file-is-read-only-error
i/o-file-is-read-only-error?

make-i/o-file-already-exists-error
i/o-file-already-exists-error?

make-i/o-file-does-not-exist-error
i/o-file-does-not-exist-error?

make-i/o-port-error
i/o-port-error?
i/o-error-port

;; port io
file-options

buffer-mode
buffer-mode?

latin-1-codec
utf-8-codec
utf-16-codec

eol-style
native-eol-style

make-i/o-decoding-error
i/o-decoding-error?

make-i/o-encoding-error
i/o-encoding-error?
i/o-encoding-error-char

error-handling-mode

make-transcoder
native-transcoder
transcoder-codec
transcoder-eol-style
transcoder-error-handling-mode

bytevector->string
string->bytevector

eof-object
eof-object?

port?
port-transcoder
textual-port?
binary-port?
transcoded-port

port-has-port-position?
port-position
port-has-set-port-position!?
set-port-position!

close-port
call-with-port

input-port?
port-eof?
open-file-input-port
open-bytevector-input-port
open-string-input-port
standard-input-port
current-input-port
make-custom-binary-input-port
make-custom-textual-input-port

get-u8
lookahead-u8
get-bytevector-n
get-bytevector-n!
get-bytevector-some
get-bytevector-all

get-char
lookahead-char
get-string-n
get-string-n!
get-string-all
get-line
get-datum

output-port?
flush-output-port
output-port-buffer-mode

open-file-output-port
open-bytevector-output-port
call-with-bytevector-output-port
open-string-output-port
call-with-string-output-port

standard-output-port
standard-error-port
current-output-port
current-error-port

make-custom-binary-output-port
make-custom-textual-output-port

put-u8
put-bytevector

put-char
put-string
put-datum

open-file-input/output-port
make-custom-binary-input/output-port
make-custom-textual-input/output-port

;;; (rnrs io simple)
;eof-object
;eof-object?

call-with-input-file
call-with-output-file

;input-port?
;output-port?

;current-input-port
;current-output-port
;current-error-port

with-input-from-file
with-output-to-file

open-input-file
open-output-file

close-input-port
close-output-port

read-char
peek-char
read
write-char
newline
display
write

;;; (rnrs files)

file-exists?
delete-file

;;; (rnrs programs)

command-line
exit

;;; (rnrs arithmetic fixnums)

fixnum?
fixnum-width
least-fixnum
greatest-fixnum

fx=?
fx>?
fx<?
fx>=?
fx<=?

fxzero?
fxpositive?
fxnegative?
fxodd?
fxeven?

fxmax
fxmin

fx+
fx*
fx-

fxdiv-and-mod
fxdiv
fxmod
fxdiv0-and-mod0
fxdiv0
fxmod0

fx+/carry
fx-/carry
fx*/carry

fxnot
fxand
fxior
fxxor

fxif
fxlength

fxfirst-bit-set
fxbit-set?
fxcopy-bit
fxbit-field
fxcopy-bit-field

fxarithmetic-shift
fxarithmetic-shift-left
fxarithmetic-shift-right

fxrotate-bit-field
fxreverse-bit-field

;;; (rnrs arithmetic flonums)

flonum?
real->flonum

fl=?
fl<?
fl>?
fl<=?
fl>=?

flinteger?
flzero?
flpositive?
flnegative?
flodd?
fleven?
flfinite?
flinfinite?
flnan?

flmax
flmin

fl+
fl*
fl-
fl/

flabs

fldiv-and-mod
fldiv
flmod
fldiv0-and-mod0
fldiv0
flmod0

flnumerator
fldenominator

flfloor
flceiling
fltruncate
flround

flexp
fllog
flsin
flcos
fltan
flasin
flacos
flatan

flsqrt
flexpt

make-no-infinities-violation
no-infinities-violation?
make-no-nans-violation
no-nans-violation?

fixnum->flonum

;;; (rnrs arithmetic bitwise)

bitwise-not

bitwise-and
bitwise-ior
bitwise-xor

bitwise-if
bitwise-bit-count
bitwise-length

bitwise-first-bit-set
bitwise-bit-set?
bitwise-copy-bit
bitwise-bit-field
bitwise-copy-bit-field

bitwise-arithmetic-shift
bitwise-arithmetic-shift-left
bitwise-arithmetic-shift-right

bitwise-rotate-bit-field
bitwise-reverse-bit-field

;;; (rnrs syntax-case)

make-variable-transformer
syntax-case
syntax

identifier?
bound-identifier=?
free-identifier=?

syntax->datum
datum->syntax

generate-temporaries

with-syntax
quasisyntax

syntax-violation

;;; (rnrs hashtables)

make-eq-hashtable
make-eqv-hashtable
make-hashtable

hashtable?
hashtable-size
hashtable-ref
hashtable-set!
hashtable-delete!
hashtable-contains?
hashtable-update!

hashtable-copy
hashtable-clear!

hashtable-keys
hashtable-entries

hashtable-equivalence-function
hashtable-hash-function
hashtable-mutable?

equal-hash
string-hash
string-ci-hash
symbol-hash

;;; (rnrs enums)

make-enumeration
enum-set-universe
enum-set-indexer
enum-set-constructor
enum-set->list

enum-set-member?
enum-set-subset?
enum-set=?

enum-set-union
enum-set-intersection
enum-set-difference
enum-set-complement

define-enumeration

;;;; The following libraries are not exported by (rnrs) but are
;;;; provided by the R6RS

;;; (rnrs eval)

eval
environment

;;; (rnrs mutable-pairs)

set-car!
set-cdr!

;;; (rnrs mutable-strings)

string-set!
string-fill!

;;; (rnrs r5rs)

exact->inexact
inexact->exact

quotient
remainder
modulo

delay
force

null-environment
scheme-report-environment
)

(import (rnrs) (rnrs eval) (rnrs mutable-pairs)
        (rnrs mutable-strings) (rnrs r5rs))

)
