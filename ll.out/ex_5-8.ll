; ModuleID = 'C-Programming-Examples/ex_5-8.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@daytab = internal global [2 x [13 x i8]] [[13 x i8] c"\00\1F\1C\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", [13 x i8] c"\00\1F\1D\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F"], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str1 = private unnamed_addr constant [18 x i8] c"Day: %d\09Month:%d\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [28 x i8] c"Y: %d\09M: %d\09D: %d\09->\09YD:%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @day_of_year(i32 %year, i32 %month, i32 %day) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  %leap = alloca i32, align 4
  store i32 %year, i32* %2, align 4
  store i32 %month, i32* %3, align 4
  store i32 %day, i32* %4, align 4
  %5 = load i32* %2, align 4
  %6 = icmp slt i32 %5, 1752
  br i1 %6, label %16, label %7

; <label>:7                                       ; preds = %0
  %8 = load i32* %3, align 4
  %9 = icmp sgt i32 %8, 12
  br i1 %9, label %16, label %10

; <label>:10                                      ; preds = %7
  %11 = load i32* %3, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %10
  %14 = load i32* %4, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %13, %10, %7, %0
  store i32 -1, i32* %1
  br label %64

; <label>:17                                      ; preds = %13
  %18 = load i32* %2, align 4
  %19 = srem i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

; <label>:21                                      ; preds = %17
  %22 = load i32* %2, align 4
  %23 = srem i32 %22, 100
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

; <label>:25                                      ; preds = %21, %17
  %26 = load i32* %2, align 4
  %27 = srem i32 %26, 400
  %28 = icmp eq i32 %27, 0
  br label %29

; <label>:29                                      ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %leap, align 4
  %32 = load i32* %4, align 4
  %33 = load i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32* %leap, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x [13 x i8]]* @daytab, i32 0, i64 %36
  %38 = getelementptr inbounds [13 x i8]* %37, i32 0, i64 %34
  %39 = load i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sgt i32 %32, %40
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %29
  store i32 -1, i32* %1
  br label %64

; <label>:43                                      ; preds = %29
  store i32 1, i32* %i, align 4
  br label %44

; <label>:44                                      ; preds = %59, %43
  %45 = load i32* %i, align 4
  %46 = load i32* %3, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

; <label>:48                                      ; preds = %44
  %49 = load i32* %i, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32* %leap, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x [13 x i8]]* @daytab, i32 0, i64 %52
  %54 = getelementptr inbounds [13 x i8]* %53, i32 0, i64 %50
  %55 = load i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i32* %4, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %59

; <label>:59                                      ; preds = %48
  %60 = load i32* %i, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %i, align 4
  br label %44

; <label>:62                                      ; preds = %44
  %63 = load i32* %4, align 4
  store i32 %63, i32* %1
  br label %64

; <label>:64                                      ; preds = %62, %42, %16
  %65 = load i32* %1
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define i32 @month_day(i32 %year, i32 %yearday, i32* %pmonth, i32* %pday) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %i = alloca i32, align 4
  %leap = alloca i32, align 4
  store i32 %year, i32* %2, align 4
  store i32 %yearday, i32* %3, align 4
  store i32* %pmonth, i32** %4, align 8
  store i32* %pday, i32** %5, align 8
  %6 = load i32* %2, align 4
  %7 = icmp slt i32 %6, 1752
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  store i32 -1, i32* %1
  br label %67

; <label>:9                                       ; preds = %0
  %10 = load i32* %2, align 4
  %11 = srem i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %9
  %14 = load i32* %2, align 4
  %15 = srem i32 %14, 100
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

; <label>:17                                      ; preds = %13, %9
  %18 = load i32* %2, align 4
  %19 = srem i32 %18, 400
  %20 = icmp eq i32 %19, 0
  br label %21

; <label>:21                                      ; preds = %17, %13
  %22 = phi i1 [ true, %13 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %leap, align 4
  %24 = load i32* %leap, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %21
  %27 = load i32* %3, align 4
  %28 = icmp sgt i32 %27, 366
  br i1 %28, label %35, label %29

; <label>:29                                      ; preds = %26, %21
  %30 = load i32* %leap, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

; <label>:32                                      ; preds = %29
  %33 = load i32* %3, align 4
  %34 = icmp sgt i32 %33, 365
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %32, %26
  store i32 -1, i32* %1
  br label %67

; <label>:36                                      ; preds = %32, %29
  store i32 1, i32* %i, align 4
  br label %37

; <label>:37                                      ; preds = %59, %36
  %38 = load i32* %3, align 4
  %39 = load i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32* %leap, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x [13 x i8]]* @daytab, i32 0, i64 %42
  %44 = getelementptr inbounds [13 x i8]* %43, i32 0, i64 %40
  %45 = load i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sgt i32 %38, %46
  br i1 %47, label %48, label %62

; <label>:48                                      ; preds = %37
  %49 = load i32* %i, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32* %leap, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x [13 x i8]]* @daytab, i32 0, i64 %52
  %54 = getelementptr inbounds [13 x i8]* %53, i32 0, i64 %50
  %55 = load i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i32* %3, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

; <label>:59                                      ; preds = %48
  %60 = load i32* %i, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %i, align 4
  br label %37

; <label>:62                                      ; preds = %37
  %63 = load i32* %i, align 4
  %64 = load i32** %4, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32* %3, align 4
  %66 = load i32** %5, align 8
  store i32 %65, i32* %66, align 4
  store i32 1, i32* %1
  br label %67

; <label>:67                                      ; preds = %62, %35, %8
  %68 = load i32* %1
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %ans = alloca i32, align 4
  %month = alloca i32, align 4
  %day = alloca i32, align 4
  %yearday = alloca i32, align 4
  %year = alloca i32, align 4
  %leap = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 @day_of_year(i32 2009, i32 2, i32 1)
  store i32 %2, i32* %ans, align 4
  %3 = load i32* %ans, align 4
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %3)
  %5 = call i32 @month_day(i32 2009, i32 34, i32* %month, i32* %day)
  store i32 %5, i32* %ans, align 4
  %6 = load i32* %ans, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load i32* %day, align 4
  %10 = load i32* %month, align 4
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0), i32 %9, i32 %10)
  br label %12

; <label>:12                                      ; preds = %8, %0
  store i32 2009, i32* %year, align 4
  %13 = load i32* %year, align 4
  %14 = srem i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %12
  %17 = load i32* %year, align 4
  %18 = srem i32 %17, 100
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

; <label>:20                                      ; preds = %16, %12
  %21 = load i32* %year, align 4
  %22 = srem i32 %21, 400
  %23 = icmp eq i32 %22, 0
  br label %24

; <label>:24                                      ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %leap, align 4
  store i32 1, i32* %month, align 4
  br label %27

; <label>:27                                      ; preds = %56, %24
  %28 = load i32* %month, align 4
  %29 = icmp sle i32 %28, 12
  br i1 %29, label %30, label %59

; <label>:30                                      ; preds = %27
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  store i32 0, i32* %day, align 4
  br label %32

; <label>:32                                      ; preds = %44, %30
  %33 = load i32* %day, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %day, align 4
  %35 = load i32* %month, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32* %leap, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x [13 x i8]]* @daytab, i32 0, i64 %38
  %40 = getelementptr inbounds [13 x i8]* %39, i32 0, i64 %36
  %41 = load i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sle i32 %34, %42
  br i1 %43, label %44, label %54

; <label>:44                                      ; preds = %32
  %45 = load i32* %year, align 4
  %46 = load i32* %month, align 4
  %47 = load i32* %day, align 4
  %48 = call i32 @day_of_year(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %yearday, align 4
  %49 = load i32* %year, align 4
  %50 = load i32* %month, align 4
  %51 = load i32* %day, align 4
  %52 = load i32* %yearday, align 4
  %53 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str3, i32 0, i32 0), i32 %49, i32 %50, i32 %51, i32 %52)
  br label %32

; <label>:54                                      ; preds = %32
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  br label %56

; <label>:56                                      ; preds = %54
  %57 = load i32* %month, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %month, align 4
  br label %27

; <label>:59                                      ; preds = %27
  ret i32 1
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
