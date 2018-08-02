; ModuleID = 'C-Programming-Examples/line_counter.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %c = alloca i32, align 4
  %nl = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %nl, align 4
  br label %2

; <label>:2                                       ; preds = %11, %0
  %3 = call i32 @getchar()
  store i32 %3, i32* %c, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %12

; <label>:5                                       ; preds = %2
  %6 = load i32* %c, align 4
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5
  %9 = load i32* %nl, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %nl, align 4
  br label %11

; <label>:11                                      ; preds = %8, %5
  br label %2

; <label>:12                                      ; preds = %2
  %13 = load i32* %nl, align 4
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %13)
  %15 = load i32* %1
  ret i32 %15
}

declare i32 @getchar() #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
