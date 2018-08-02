; ModuleID = 'C-Programming-Examples/primes.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Input Maximum Prime: \00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %num = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 0, i32* %1
  store i32 2, i32* %num, align 4
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0))
  %3 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %max)
  br label %4

; <label>:4                                       ; preds = %15, %0
  %5 = load i32* %num, align 4
  %6 = load i32* %max, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %4
  %9 = load i32* %num, align 4
  %10 = call i32 @isPrime(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %8
  %13 = load i32* %num, align 4
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i32 %13)
  br label %15

; <label>:15                                      ; preds = %12, %8
  %16 = load i32* %num, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %num, align 4
  br label %4

; <label>:18                                      ; preds = %4
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @isPrime(i32 %n) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %dev = alloca i32, align 4
  store i32 %n, i32* %2, align 4
  store i32 2, i32* %dev, align 4
  br label %3

; <label>:3                                       ; preds = %15, %0
  %4 = load i32* %dev, align 4
  %5 = load i32* %2, align 4
  %6 = sdiv i32 %5, 2
  %7 = icmp sle i32 %4, %6
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %3
  %9 = load i32* %2, align 4
  %10 = load i32* %dev, align 4
  %11 = srem i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %8
  store i32 0, i32* %1
  br label %19

; <label>:14                                      ; preds = %8
  br label %15

; <label>:15                                      ; preds = %14
  %16 = load i32* %dev, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %dev, align 4
  br label %3

; <label>:18                                      ; preds = %3
  store i32 1, i32* %1
  br label %19

; <label>:19                                      ; preds = %18, %13
  %20 = load i32* %1
  ret i32 %20
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
