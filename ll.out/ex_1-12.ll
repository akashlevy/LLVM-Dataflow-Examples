; ModuleID = 'C-Programming-Examples/ex_1-12.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %c = alloca i8, align 1
  %spacefound = alloca i32, align 4
  store i32 0, i32* %1
  br label %2

; <label>:2                                       ; preds = %29, %0
  %3 = call i32 @getchar()
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* %c, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %30

; <label>:7                                       ; preds = %2
  %8 = load i8* %c, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %19, label %11

; <label>:11                                      ; preds = %7
  %12 = load i8* %c, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %19, label %15

; <label>:15                                      ; preds = %11
  %16 = load i8* %c, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %25

; <label>:19                                      ; preds = %15, %11, %7
  %20 = load i32* %spacefound, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %19
  %23 = call i32 @putchar(i32 10)
  store i32 1, i32* %spacefound, align 4
  br label %24

; <label>:24                                      ; preds = %22, %19
  br label %29

; <label>:25                                      ; preds = %15
  %26 = load i8* %c, align 1
  %27 = sext i8 %26 to i32
  %28 = call i32 @putchar(i32 %27)
  store i32 0, i32* %spacefound, align 4
  br label %29

; <label>:29                                      ; preds = %25, %24
  br label %2

; <label>:30                                      ; preds = %2
  %31 = load i32* %1
  ret i32 %31
}

declare i32 @getchar() #1

declare i32 @putchar(i32) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
