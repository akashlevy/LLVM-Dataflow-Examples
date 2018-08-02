; ModuleID = 'C-Programming-Examples/digit_count.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"digits =\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str2 = private unnamed_addr constant [31 x i8] c", whitespace = %d, other = %d\0A\00", align 1

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

; <label>:13                                      ; preds = %45, %12
  %14 = call i32 @getchar()
  store i32 %14, i32* %c, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %46

; <label>:16                                      ; preds = %13
  %17 = load i32* %c, align 4
  %18 = icmp sge i32 %17, 48
  br i1 %18, label %19, label %29

; <label>:19                                      ; preds = %16
  %20 = load i32* %c, align 4
  %21 = icmp sle i32 %20, 57
  br i1 %21, label %22, label %29

; <label>:22                                      ; preds = %19
  %23 = load i32* %c, align 4
  %24 = sub nsw i32 %23, 48
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [10 x i32]* %ndigit, i32 0, i64 %25
  %27 = load i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %45

; <label>:29                                      ; preds = %19, %16
  %30 = load i32* %c, align 4
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %38, label %32

; <label>:32                                      ; preds = %29
  %33 = load i32* %c, align 4
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %38, label %35

; <label>:35                                      ; preds = %32
  %36 = load i32* %c, align 4
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %35, %32, %29
  %39 = load i32* %nwhite, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %nwhite, align 4
  br label %44

; <label>:41                                      ; preds = %35
  %42 = load i32* %nother, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %nother, align 4
  br label %44

; <label>:44                                      ; preds = %41, %38
  br label %45

; <label>:45                                      ; preds = %44, %22
  br label %13

; <label>:46                                      ; preds = %13
  %47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %48

; <label>:48                                      ; preds = %57, %46
  %49 = load i32* %i, align 4
  %50 = icmp slt i32 %49, 10
  br i1 %50, label %51, label %60

; <label>:51                                      ; preds = %48
  %52 = load i32* %i, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x i32]* %ndigit, i32 0, i64 %53
  %55 = load i32* %54, align 4
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i32 %55)
  br label %57

; <label>:57                                      ; preds = %51
  %58 = load i32* %i, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %i, align 4
  br label %48

; <label>:60                                      ; preds = %48
  %61 = load i32* %nwhite, align 4
  %62 = load i32* %nother, align 4
  %63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str2, i32 0, i32 0), i32 %61, i32 %62)
  %64 = load i32* %1
  ret i32 %64
}

declare i32 @getchar() #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
