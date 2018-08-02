; ModuleID = 'C-Programming-Examples/ex_5-5.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.source = private unnamed_addr constant [21 x i8] c"Destination after...\00", align 16
@main.dest = private unnamed_addr constant [34 x i8] c"This is the destination before...\00", align 16
@.str2 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@main.source2 = private unnamed_addr constant [21 x i8] c"Destination after...\00", align 16
@main.dest2 = private unnamed_addr constant [34 x i8] c"This is the destination before...\00", align 16
@main.info = private unnamed_addr constant [17 x i8] c"Data To Append. \00", align 16
@main.buffer = private unnamed_addr constant [50 x i8] c"Beginning of Buffer. \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@main.smaller = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@main.bigger = private unnamed_addr constant [6 x i8] c"67890\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @print_array(i8* %s) #0 {
  %1 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %16, %0
  %3 = load i32* %i, align 4
  %4 = sext i32 %3 to i64
  %5 = load i8** %1, align 8
  %6 = call i64 @strlen(i8* %5) #5
  %7 = icmp ult i64 %4, %6
  br i1 %7, label %8, label %19

; <label>:8                                       ; preds = %2
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load i8** %1, align 8
  %12 = getelementptr inbounds i8* %11, i64 %10
  %13 = load i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32 %14)
  br label %16

; <label>:16                                      ; preds = %8
  %17 = load i32* %i, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %i, align 4
  br label %2

; <label>:19                                      ; preds = %2
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @ss_strncpy(i8* %dest, i8* %source, i32 %n) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %d = alloca i8*, align 8
  store i8* %dest, i8** %1, align 8
  store i8* %source, i8** %2, align 8
  store i32 %n, i32* %3, align 4
  %4 = load i8** %1, align 8
  store i8* %4, i8** %d, align 8
  %5 = load i32* %3, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %0
  %8 = load i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

; <label>:10                                      ; preds = %7, %0
  br label %11

; <label>:11                                      ; preds = %25, %10
  %12 = load i32* %3, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %3, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %23

; <label>:15                                      ; preds = %11
  %16 = load i8** %2, align 8
  %17 = getelementptr inbounds i8* %16, i32 1
  store i8* %17, i8** %2, align 8
  %18 = load i8* %16, align 1
  %19 = load i8** %1, align 8
  %20 = getelementptr inbounds i8* %19, i32 1
  store i8* %20, i8** %1, align 8
  store i8 %18, i8* %19, align 1
  %21 = sext i8 %18 to i32
  %22 = icmp ne i32 %21, 0
  br label %23

; <label>:23                                      ; preds = %15, %11
  %24 = phi i1 [ false, %11 ], [ %22, %15 ]
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %23
  br label %11

; <label>:26                                      ; preds = %23
  br label %27

; <label>:27                                      ; preds = %31, %26
  %28 = load i32* %3, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %3, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

; <label>:31                                      ; preds = %27
  %32 = load i8** %1, align 8
  %33 = getelementptr inbounds i8* %32, i32 1
  store i8* %33, i8** %1, align 8
  store i8 0, i8* %32, align 1
  br label %27

; <label>:34                                      ; preds = %27
  br label %35

; <label>:35                                      ; preds = %34, %7
  %36 = load i8** %d, align 8
  ret i8* %36
}

; Function Attrs: nounwind uwtable
define i8* @ss_strncat(i8* %dest, i8* %source, i64 %n) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %dest, i8** %1, align 8
  store i8* %source, i8** %2, align 8
  store i64 %n, i64* %3, align 8
  br label %4

; <label>:4                                       ; preds = %8, %0
  %5 = load i8** %1, align 8
  %6 = load i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %4
  %9 = load i8** %1, align 8
  %10 = getelementptr inbounds i8* %9, i32 1
  store i8* %10, i8** %1, align 8
  br label %4

; <label>:11                                      ; preds = %4
  br label %12

; <label>:12                                      ; preds = %26, %11
  %13 = load i64* %3, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %3, align 8
  %15 = icmp uge i64 %14, 0
  br i1 %15, label %16, label %24

; <label>:16                                      ; preds = %12
  %17 = load i8** %2, align 8
  %18 = getelementptr inbounds i8* %17, i32 1
  store i8* %18, i8** %2, align 8
  %19 = load i8* %17, align 1
  %20 = load i8** %1, align 8
  %21 = getelementptr inbounds i8* %20, i32 1
  store i8* %21, i8** %1, align 8
  store i8 %19, i8* %20, align 1
  %22 = sext i8 %19 to i32
  %23 = icmp ne i32 %22, 0
  br label %24

; <label>:24                                      ; preds = %16, %12
  %25 = phi i1 [ false, %12 ], [ %23, %16 ]
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %24
  br label %12

; <label>:27                                      ; preds = %24
  %28 = load i8** %1, align 8
  ret i8* %28
}

; Function Attrs: nounwind uwtable
define i32 @ss_strncmp(i8* %s1, i8* %s2, i64 %n) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %s1, i8** %2, align 8
  store i8* %s2, i8** %3, align 8
  store i64 %n, i64* %4, align 8
  br label %5

; <label>:5                                       ; preds = %31, %0
  %6 = load i64* %4, align 8
  %7 = add i64 %6, -1
  store i64 %7, i64* %4, align 8
  %8 = icmp uge i64 %7, 0
  br i1 %8, label %9, label %19

; <label>:9                                       ; preds = %5
  %10 = load i8** %2, align 8
  %11 = load i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %9
  %15 = load i8** %3, align 8
  %16 = load i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br label %19

; <label>:19                                      ; preds = %14, %9, %5
  %20 = phi i1 [ false, %9 ], [ false, %5 ], [ %18, %14 ]
  br i1 %20, label %21, label %42

; <label>:21                                      ; preds = %19
  %22 = load i8** %2, align 8
  %23 = getelementptr inbounds i8* %22, i32 1
  store i8* %23, i8** %2, align 8
  %24 = load i8* %22, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8** %3, align 8
  %27 = getelementptr inbounds i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  %28 = load i8* %26, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %21
  br label %5

; <label>:32                                      ; preds = %21
  %33 = load i8** %2, align 8
  %34 = load i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8** %3, align 8
  %37 = load i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %32
  store i32 1, i32* %1
  br label %43

; <label>:41                                      ; preds = %32
  store i32 -1, i32* %1
  br label %43

; <label>:42                                      ; preds = %19
  store i32 0, i32* %1
  br label %43

; <label>:43                                      ; preds = %42, %41, %40
  %44 = load i32* %1
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %source = alloca [21 x i8], align 16
  %dest = alloca [34 x i8], align 16
  %ans = alloca i8*, align 8
  %source2 = alloca [21 x i8], align 16
  %dest2 = alloca [34 x i8], align 16
  %info = alloca [17 x i8], align 16
  %buffer = alloca [50 x i8], align 16
  %i = alloca i32, align 4
  %smaller = alloca [6 x i8], align 1
  %bigger = alloca [6 x i8], align 1
  %size_ans = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast [21 x i8]* %source to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([21 x i8]* @main.source, i32 0, i32 0), i64 21, i32 16, i1 false)
  %3 = bitcast [34 x i8]* %dest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([34 x i8]* @main.dest, i32 0, i32 0), i64 34, i32 16, i1 false)
  %4 = getelementptr inbounds [34 x i8]* %dest, i32 0, i32 0
  call void @print_array(i8* %4)
  %5 = getelementptr inbounds [34 x i8]* %dest, i32 0, i32 0
  %6 = getelementptr inbounds [21 x i8]* %source, i32 0, i32 0
  %7 = call i8* @strncpy(i8* %5, i8* %6, i64 20) #3
  store i8* %7, i8** %ans, align 8
  %8 = load i8** %ans, align 8
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i8* %8)
  %10 = getelementptr inbounds [34 x i8]* %dest, i32 0, i32 0
  call void @print_array(i8* %10)
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0))
  %12 = bitcast [21 x i8]* %source2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* getelementptr inbounds ([21 x i8]* @main.source2, i32 0, i32 0), i64 21, i32 16, i1 false)
  %13 = bitcast [34 x i8]* %dest2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* getelementptr inbounds ([34 x i8]* @main.dest2, i32 0, i32 0), i64 34, i32 16, i1 false)
  %14 = getelementptr inbounds [34 x i8]* %dest2, i32 0, i32 0
  call void @print_array(i8* %14)
  %15 = getelementptr inbounds [34 x i8]* %dest2, i32 0, i32 0
  %16 = getelementptr inbounds [21 x i8]* %source2, i32 0, i32 0
  %17 = call i8* @ss_strncpy(i8* %15, i8* %16, i32 20)
  %18 = load i8** %ans, align 8
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i8* %18)
  %20 = getelementptr inbounds [34 x i8]* %dest2, i32 0, i32 0
  call void @print_array(i8* %20)
  %21 = bitcast [17 x i8]* %info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* getelementptr inbounds ([17 x i8]* @main.info, i32 0, i32 0), i64 17, i32 16, i1 false)
  %22 = bitcast [50 x i8]* %buffer to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* getelementptr inbounds ([50 x i8]* @main.buffer, i32 0, i32 0), i64 50, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %23

; <label>:23                                      ; preds = %33, %0
  %24 = load i32* %i, align 4
  %25 = icmp sle i32 %24, 2
  br i1 %25, label %26, label %36

; <label>:26                                      ; preds = %23
  %27 = getelementptr inbounds [50 x i8]* %buffer, i32 0, i32 0
  %28 = getelementptr inbounds [17 x i8]* %info, i32 0, i32 0
  %29 = getelementptr inbounds [17 x i8]* %info, i32 0, i32 0
  %30 = call i64 @strlen(i8* %29) #5
  %31 = call i8* @strncat(i8* %27, i8* %28, i64 %30) #3
  %32 = getelementptr inbounds [50 x i8]* %buffer, i32 0, i32 0
  call void @print_array(i8* %32)
  br label %33

; <label>:33                                      ; preds = %26
  %34 = load i32* %i, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4
  br label %23

; <label>:36                                      ; preds = %23
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  %38 = bitcast [6 x i8]* %smaller to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* getelementptr inbounds ([6 x i8]* @main.smaller, i32 0, i32 0), i64 6, i32 1, i1 false)
  %39 = bitcast [6 x i8]* %bigger to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* getelementptr inbounds ([6 x i8]* @main.bigger, i32 0, i32 0), i64 6, i32 1, i1 false)
  %40 = getelementptr inbounds [6 x i8]* %smaller, i32 0, i32 0
  %41 = getelementptr inbounds [6 x i8]* %bigger, i32 0, i32 0
  %42 = call i32 @ss_strncmp(i8* %40, i8* %41, i64 3)
  store i32 %42, i32* %size_ans, align 4
  %43 = load i32* %size_ans, align 4
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i32 %43)
  %45 = getelementptr inbounds [6 x i8]* %bigger, i32 0, i32 0
  %46 = getelementptr inbounds [6 x i8]* %bigger, i32 0, i32 0
  %47 = call i32 @ss_strncmp(i8* %45, i8* %46, i64 3)
  store i32 %47, i32* %size_ans, align 4
  %48 = load i32* %size_ans, align 4
  %49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i32 %48)
  %50 = getelementptr inbounds [6 x i8]* %bigger, i32 0, i32 0
  %51 = getelementptr inbounds [6 x i8]* %smaller, i32 0, i32 0
  %52 = call i32 @ss_strncmp(i8* %50, i8* %51, i64 3)
  store i32 %52, i32* %size_ans, align 4
  %53 = load i32* %size_ans, align 4
  %54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i32 %53)
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #4

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
