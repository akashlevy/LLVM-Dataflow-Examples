; ModuleID = 'C-Programming-Examples/ex_1-9.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %first = alloca i8, align 1
  %second = alloca i8, align 1
  store i32 0, i32* %1
  store i8 -1, i8* %second, align 1
  br label %2

; <label>:2                                       ; preds = %26, %0
  %3 = call i32 @getchar()
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* %first, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %28

; <label>:7                                       ; preds = %2
  %8 = load i8* %first, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %7
  %12 = load i8* %second, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 32
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %11
  %16 = call i32 @putchar(i32 10)
  br label %17

; <label>:17                                      ; preds = %15, %11
  br label %18

; <label>:18                                      ; preds = %17, %7
  %19 = load i8* %second, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 32
  br i1 %21, label %22, label %26

; <label>:22                                      ; preds = %18
  %23 = load i8* %first, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @putchar(i32 %24)
  br label %26

; <label>:26                                      ; preds = %22, %18
  %27 = load i8* %first, align 1
  store i8 %27, i8* %second, align 1
  br label %2

; <label>:28                                      ; preds = %2
  %29 = load i32* %1
  ret i32 %29
}

declare i32 @getchar() #1

declare i32 @putchar(i32) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
