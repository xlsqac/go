// Code generated by command: go run asm.go -out complex.s -stubs stub.go. DO NOT EDIT.

#include "textflag.h"

// func Real(z complex128) float64
// Requires: SSE2
TEXT ·Real(SB), NOSPLIT, $0-24
	MOVSD z_real+0(FP), X0
	MOVSD X0, ret+16(FP)
	RET

// func Imag(z complex128) float64
// Requires: SSE2
TEXT ·Imag(SB), NOSPLIT, $0-24
	MOVSD z_imag+8(FP), X0
	MOVSD X0, ret+16(FP)
	RET

// func Norm(z complex128) float64
// Requires: SSE2
TEXT ·Norm(SB), NOSPLIT, $0-24
	MOVSD  z_real+0(FP), X0
	MOVSD  z_imag+8(FP), X1
	MULSD  X0, X0
	MULSD  X1, X1
	ADDSD  X1, X0
	SQRTSD X0, X2
	MOVSD  X2, ret+16(FP)
	RET
