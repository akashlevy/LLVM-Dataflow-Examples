; ModuleID = 'C-Programming-Examples/bit_print.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @bit_print(i32 %a) #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %mask = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 32, i32* %n, align 4
  %2 = load i32* %n, align 4
  %3 = sub nsw i32 %2, 1
  %4 = shl i32 1, %3
  store i32 %4, i32* %mask, align 4
  store i32 1, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %28, %0
  %6 = load i32* %i, align 4
  %7 = load i32* %n, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %31

; <label>:9                                       ; preds = %5
  %10 = load i32* %1, align 4
  %11 = load i32* %mask, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 48, i32 49
  %15 = call i32 @putchar(i32 %14)
  %16 = load i32* %1, align 4
  %17 = shl i32 %16, 1
  store i32 %17, i32* %1, align 4
  %18 = load i32* %i, align 4
  %19 = srem i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

; <label>:21                                      ; preds = %9
  %22 = load i32* %i, align 4
  %23 = load i32* %n, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %27

; <label>:25                                      ; preds = %21
  %26 = call i32 @putchar(i32 32)
  br label %27

; <label>:27                                      ; preds = %25, %21, %9
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %5

; <label>:31                                      ; preds = %5
  %32 = call i32 @putchar(i32 10)
  ret void
}

declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %number = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %number, align 4
  br label %2

; <label>:2                                       ; preds = %7, %0
  %3 = load i32* %number, align 4
  %4 = icmp sle i32 %3, 16
  br i1 %4, label %5, label %10

; <label>:5                                       ; preds = %2
  %6 = load i32* %number, align 4
  call void @bit_print(i32 %6)
  br label %7

; <label>:7                                       ; preds = %5
  %8 = load i32* %number, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %number, align 4
  br label %2

; <label>:10                                      ; preds = %2
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
