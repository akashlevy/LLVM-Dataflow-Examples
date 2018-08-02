; ModuleID = 'C-Programming-Examples/ex_1-13.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d\09|\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"\09 0123456789\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nwhite = alloca i32, align 4
  %nother = alloca i32, align 4
  %maxnum = alloca i32, align 4
  %ndigit = alloca [10 x i32], align 16
  store i32 0, i32* %1
  store i32 0, i32* %maxnum, align 4
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
  store i32 0, i32* %i, align 4
  br label %47

; <label>:47                                      ; preds = %63, %46
  %48 = load i32* %i, align 4
  %49 = icmp sle i32 %48, 10
  br i1 %49, label %50, label %66

; <label>:50                                      ; preds = %47
  %51 = load i32* %i, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [10 x i32]* %ndigit, i32 0, i64 %52
  %54 = load i32* %53, align 4
  %55 = load i32* %maxnum, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %62

; <label>:57                                      ; preds = %50
  %58 = load i32* %i, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [10 x i32]* %ndigit, i32 0, i64 %59
  %61 = load i32* %60, align 4
  store i32 %61, i32* %maxnum, align 4
  br label %62

; <label>:62                                      ; preds = %57, %50
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i32* %i, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %i, align 4
  br label %47

; <label>:66                                      ; preds = %47
  store i32 0, i32* %i, align 4
  br label %67

; <label>:67                                      ; preds = %98, %66
  %68 = load i32* %i, align 4
  %69 = load i32* %maxnum, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %101

; <label>:71                                      ; preds = %67
  %72 = load i32* %maxnum, align 4
  %73 = load i32* %i, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 %74)
  store i32 0, i32* %j, align 4
  br label %76

; <label>:76                                      ; preds = %93, %71
  %77 = load i32* %j, align 4
  %78 = icmp sle i32 %77, 10
  br i1 %78, label %79, label %96

; <label>:79                                      ; preds = %76
  %80 = load i32* %j, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x i32]* %ndigit, i32 0, i64 %81
  %83 = load i32* %82, align 4
  %84 = load i32* %maxnum, align 4
  %85 = load i32* %i, align 4
  %86 = sub nsw i32 %84, %85
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %90

; <label>:88                                      ; preds = %79
  %89 = call i32 @putchar(i32 42)
  br label %92

; <label>:90                                      ; preds = %79
  %91 = call i32 @putchar(i32 32)
  br label %92

; <label>:92                                      ; preds = %90, %88
  br label %93

; <label>:93                                      ; preds = %92
  %94 = load i32* %j, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %j, align 4
  br label %76

; <label>:96                                      ; preds = %76
  %97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  br label %98

; <label>:98                                      ; preds = %96
  %99 = load i32* %i, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %i, align 4
  br label %67

; <label>:101                                     ; preds = %67
  %102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str2, i32 0, i32 0))
  %103 = load i32* %1
  ret i32 %103
}

declare i32 @getchar() #1

declare i32 @printf(i8*, ...) #1

declare i32 @putchar(i32) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
