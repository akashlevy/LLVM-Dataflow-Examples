; ModuleID = 'C-Programming-Examples/temp_conv.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d\09%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %fahr = alloca i32, align 4
  %celsius = alloca i32, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %step = alloca i32, align 4
  store i32 0, i32* %1
  store i32 0, i32* %lower, align 4
  store i32 300, i32* %upper, align 4
  store i32 20, i32* %step, align 4
  %2 = load i32* %lower, align 4
  store i32 %2, i32* %fahr, align 4
  br label %3

; <label>:3                                       ; preds = %7, %0
  %4 = load i32* %fahr, align 4
  %5 = load i32* %upper, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %18

; <label>:7                                       ; preds = %3
  %8 = load i32* %fahr, align 4
  %9 = sub nsw i32 %8, 32
  %10 = mul nsw i32 5, %9
  %11 = sdiv i32 %10, 9
  store i32 %11, i32* %celsius, align 4
  %12 = load i32* %fahr, align 4
  %13 = load i32* %celsius, align 4
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 %12, i32 %13)
  %15 = load i32* %fahr, align 4
  %16 = load i32* %step, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %fahr, align 4
  br label %3

; <label>:18                                      ; preds = %3
  %19 = load i32* %1
  ret i32 %19
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
