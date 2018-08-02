; ModuleID = 'C-Programming-Examples/ex_1-15.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%d -> %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %10, %0
  %3 = load i32* %i, align 4
  %4 = icmp slt i32 %3, 300
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4
  %7 = load i32* %i, align 4
  %8 = call i32 @temp_conv(i32 %7)
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i32 %6, i32 %8)
  br label %10

; <label>:10                                      ; preds = %5
  %11 = load i32* %i, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %i, align 4
  br label %2

; <label>:13                                      ; preds = %2
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @temp_conv(i32 %c) #0 {
  %1 = alloca i32, align 4
  %answer = alloca i32, align 4
  store i32 %c, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = sub nsw i32 %2, 32
  %4 = mul nsw i32 5, %3
  %5 = sdiv i32 %4, 9
  store i32 %5, i32* %answer, align 4
  %6 = load i32* %answer, align 4
  ret i32 %6
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
