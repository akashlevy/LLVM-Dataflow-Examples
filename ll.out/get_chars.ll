; ModuleID = 'C-Programming-Examples/get_chars.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 @getchar()
  store i32 %2, i32* %c, align 4
  br label %3

; <label>:3                                       ; preds = %6, %0
  %4 = call i32 @getchar()
  store i32 %4, i32* %c, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %3
  %7 = load i32* %c, align 4
  %8 = call i32 @putchar(i32 %7)
  br label %3

; <label>:9                                       ; preds = %3
  %10 = load i32* %1
  ret i32 %10
}

declare i32 @getchar() #1

declare i32 @putchar(i32) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
