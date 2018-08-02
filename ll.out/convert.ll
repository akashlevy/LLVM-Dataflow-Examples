; ModuleID = 'C-Programming-Examples/convert.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@hex2int.options = private unnamed_addr constant [13 x i8] c"AaBbCcDdEeFf\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"0xf01\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"0xA\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"0xB\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"23\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @atoi(i8* %s) #0 {
  %1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %31, %0
  %3 = load i32* %i, align 4
  %4 = sext i32 %3 to i64
  %5 = load i8** %1, align 8
  %6 = getelementptr inbounds i8* %5, i64 %4
  %7 = load i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp sge i32 %8, 48
  br i1 %9, label %10, label %18

; <label>:10                                      ; preds = %2
  %11 = load i32* %i, align 4
  %12 = sext i32 %11 to i64
  %13 = load i8** %1, align 8
  %14 = getelementptr inbounds i8* %13, i64 %12
  %15 = load i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sle i32 %16, 57
  br label %18

; <label>:18                                      ; preds = %10, %2
  %19 = phi i1 [ false, %2 ], [ %17, %10 ]
  br i1 %19, label %20, label %34

; <label>:20                                      ; preds = %18
  %21 = load i32* %n, align 4
  %22 = mul nsw i32 10, %21
  %23 = load i32* %i, align 4
  %24 = sext i32 %23 to i64
  %25 = load i8** %1, align 8
  %26 = getelementptr inbounds i8* %25, i64 %24
  %27 = load i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = sub nsw i32 %28, 48
  %30 = mul nsw i32 %22, %29
  store i32 %30, i32* %n, align 4
  br label %31

; <label>:31                                      ; preds = %20
  %32 = load i32* %i, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %i, align 4
  br label %2

; <label>:34                                      ; preds = %18
  %35 = load i32* %n, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @lower(i32 %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %c, i32* %2, align 4
  %3 = load i32* %2, align 4
  %4 = icmp sge i32 %3, 65
  br i1 %4, label %5, label %12

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4
  %7 = icmp sle i32 %6, 90
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %5
  %9 = load i32* %2, align 4
  %10 = add nsw i32 %9, 97
  %11 = sub nsw i32 %10, 65
  store i32 %11, i32* %1
  br label %14

; <label>:12                                      ; preds = %5, %0
  %13 = load i32* %2, align 4
  store i32 %13, i32* %1
  br label %14

; <label>:14                                      ; preds = %12, %8
  %15 = load i32* %1
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @htoi(i8* %s) #0 {
  %1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %ans = alloca i32, align 4
  %valid = alloca i32, align 4
  %hexit = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %ans, align 4
  store i32 1, i32* %valid, align 4
  %2 = load i32* %i, align 4
  %3 = sext i32 %2 to i64
  %4 = load i8** %1, align 8
  %5 = getelementptr inbounds i8* %4, i64 %3
  %6 = load i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 48
  br i1 %8, label %9, label %31

; <label>:9                                       ; preds = %0
  %10 = load i32* %i, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %i, align 4
  %12 = load i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = load i8** %1, align 8
  %15 = getelementptr inbounds i8* %14, i64 %13
  %16 = load i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 120
  br i1 %18, label %27, label %19

; <label>:19                                      ; preds = %9
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load i8** %1, align 8
  %23 = getelementptr inbounds i8* %22, i64 %21
  %24 = load i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 88
  br i1 %26, label %27, label %30

; <label>:27                                      ; preds = %19, %9
  %28 = load i32* %i, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %30

; <label>:30                                      ; preds = %27, %19
  br label %31

; <label>:31                                      ; preds = %30, %0
  br label %32

; <label>:32                                      ; preds = %89, %31
  %33 = load i32* %valid, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

; <label>:35                                      ; preds = %32
  %36 = load i32* %i, align 4
  %37 = sext i32 %36 to i64
  %38 = load i8** %1, align 8
  %39 = getelementptr inbounds i8* %38, i64 %37
  %40 = load i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

; <label>:43                                      ; preds = %35, %32
  %44 = phi i1 [ false, %32 ], [ %42, %35 ]
  br i1 %44, label %45, label %92

; <label>:45                                      ; preds = %43
  %46 = load i32* %ans, align 4
  %47 = mul nsw i32 %46, 16
  store i32 %47, i32* %ans, align 4
  %48 = load i32* %i, align 4
  %49 = sext i32 %48 to i64
  %50 = load i8** %1, align 8
  %51 = getelementptr inbounds i8* %50, i64 %49
  %52 = load i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sge i32 %53, 48
  br i1 %54, label %55, label %73

; <label>:55                                      ; preds = %45
  %56 = load i32* %i, align 4
  %57 = sext i32 %56 to i64
  %58 = load i8** %1, align 8
  %59 = getelementptr inbounds i8* %58, i64 %57
  %60 = load i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %61, 57
  br i1 %62, label %63, label %73

; <label>:63                                      ; preds = %55
  %64 = load i32* %ans, align 4
  %65 = load i32* %i, align 4
  %66 = sext i32 %65 to i64
  %67 = load i8** %1, align 8
  %68 = getelementptr inbounds i8* %67, i64 %66
  %69 = load i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  %72 = add nsw i32 %64, %71
  store i32 %72, i32* %ans, align 4
  br label %89

; <label>:73                                      ; preds = %55, %45
  %74 = load i32* %i, align 4
  %75 = sext i32 %74 to i64
  %76 = load i8** %1, align 8
  %77 = getelementptr inbounds i8* %76, i64 %75
  %78 = load i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 @hex2int(i32 %79)
  store i32 %80, i32* %hexit, align 4
  %81 = load i32* %hexit, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %73
  store i32 0, i32* %valid, align 4
  br label %88

; <label>:84                                      ; preds = %73
  %85 = load i32* %ans, align 4
  %86 = load i32* %hexit, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* %ans, align 4
  br label %88

; <label>:88                                      ; preds = %84, %83
  br label %89

; <label>:89                                      ; preds = %88, %63
  %90 = load i32* %i, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %i, align 4
  br label %32

; <label>:92                                      ; preds = %43
  %93 = load i32* %valid, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

; <label>:95                                      ; preds = %92
  store i32 0, i32* %ans, align 4
  br label %96

; <label>:96                                      ; preds = %95, %92
  %97 = load i32* %ans, align 4
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define i32 @hex2int(i32 %h) #0 {
  %1 = alloca i32, align 4
  %options = alloca [13 x i8], align 1
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %h, i32* %1, align 4
  %2 = bitcast [13 x i8]* %options to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([13 x i8]* @hex2int.options, i32 0, i32 0), i64 13, i32 1, i1 false)
  store i32 0, i32* %val, align 4
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %28, %0
  %4 = load i32* %val, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %3
  %7 = load i32* %i, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [13 x i8]* %options, i32 0, i64 %8
  %10 = load i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br label %13

; <label>:13                                      ; preds = %6, %3
  %14 = phi i1 [ false, %3 ], [ %12, %6 ]
  br i1 %14, label %15, label %31

; <label>:15                                      ; preds = %13
  %16 = load i32* %1, align 4
  %17 = load i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [13 x i8]* %options, i32 0, i64 %18
  %20 = load i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %23, label %27

; <label>:23                                      ; preds = %15
  %24 = load i32* %i, align 4
  %25 = sdiv i32 %24, 2
  %26 = add nsw i32 10, %25
  store i32 %26, i32* %val, align 4
  br label %27

; <label>:27                                      ; preds = %23, %15
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %3

; <label>:31                                      ; preds = %13
  %32 = load i32* %val, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %test = alloca [6 x i8*], align 16
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast [6 x i8*]* %test to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 48, i32 16, i1 false)
  %3 = bitcast i8* %2 to [6 x i8*]*
  %4 = getelementptr [6 x i8*]* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8** %4
  %5 = getelementptr [6 x i8*]* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8** %5
  %6 = getelementptr [6 x i8*]* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8** %6
  %7 = getelementptr [6 x i8*]* %3, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i8** %7
  %8 = getelementptr [6 x i8*]* %3, i32 0, i32 4
  store i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8** %8
  %9 = getelementptr [6 x i8*]* %3, i32 0, i32 5
  store i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i8** %9
  store i32 0, i32* %res, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %10

; <label>:10                                      ; preds = %21, %0
  %11 = load i32* %i, align 4
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %24

; <label>:13                                      ; preds = %10
  %14 = load i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [6 x i8*]* %test, i32 0, i64 %15
  %17 = load i8** %16, align 8
  %18 = call i32 @htoi(i8* %17)
  store i32 %18, i32* %res, align 4
  %19 = load i32* %res, align 4
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str6, i32 0, i32 0), i32 %19)
  br label %21

; <label>:21                                      ; preds = %13
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %10

; <label>:24                                      ; preds = %10
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
