; ModuleID = 'C-Programming-Examples/countchar.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"digits =\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str2 = private unnamed_addr constant [32 x i8] c", white space = %d, other = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %nwhite = alloca i32, align 4
  %nother = alloca i32, align 4
  %ndigit = alloca [10 x i32], align 16
  store i32 0, i32* %1
  store i32 0, i32* %nother, align 4
  store i32 0, i32* %nwhite, align 4
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %9, %0
  %3 = load i32* %i, align 4
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %5, label %12

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10 x i32]* %ndigit, i32 0, i64 %7
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9                                       ; preds = %5
  %10 = load i32* %i, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %i, align 4
  br label %2

; <label>:12                                      ; preds = %2
  br label %13

; <label>:13                                      ; preds = %31, %12
  %14 = call i32 @getchar()
  store i32 %14, i32* %c, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %32

; <label>:16                                      ; preds = %13
  %17 = load i32* %c, align 4
  switch i32 %17, label %28 [
    i32 48, label %18
    i32 49, label %18
    i32 50, label %18
    i32 51, label %18
    i32 52, label %18
    i32 53, label %18
    i32 54, label %18
    i32 55, label %18
    i32 56, label %18
    i32 57, label %18
    i32 32, label %25
    i32 10, label %25
    i32 9, label %25
  ]

; <label>:18                                      ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  %19 = load i32* %c, align 4
  %20 = sub nsw i32 %19, 48
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x i32]* %ndigit, i32 0, i64 %21
  %23 = load i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %31

; <label>:25                                      ; preds = %16, %16, %16
  %26 = load i32* %nwhite, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %nwhite, align 4
  br label %31

; <label>:28                                      ; preds = %16
  %29 = load i32* %nother, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %nother, align 4
  br label %31

; <label>:31                                      ; preds = %28, %25, %18
  br label %13

; <label>:32                                      ; preds = %13
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %34

; <label>:34                                      ; preds = %43, %32
  %35 = load i32* %i, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %46

; <label>:37                                      ; preds = %34
  %38 = load i32* %i, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x i32]* %ndigit, i32 0, i64 %39
  %41 = load i32* %40, align 4
  %42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %41)
  br label %43

; <label>:43                                      ; preds = %37
  %44 = load i32* %i, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %i, align 4
  br label %34

; <label>:46                                      ; preds = %34
  %47 = load i32* %nwhite, align 4
  %48 = load i32* %nother, align 4
  %49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str2, i32 0, i32 0), i32 %47, i32 %48)
  ret i32 0
}

declare i32 @getchar() #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
