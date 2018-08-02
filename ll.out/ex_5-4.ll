; ModuleID = 'C-Programming-Examples/ex_5-4.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.s = private unnamed_addr constant [11 x i8] c"1234567890\00", align 1
@main.t = private unnamed_addr constant [6 x i8] c"67890\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @strcmp(i8* %s, i8* %t) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i8* %t, i8** %2, align 8
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %18, %0
  %4 = load i32* %i, align 4
  %5 = sext i32 %4 to i64
  %6 = load i8** %1, align 8
  %7 = getelementptr inbounds i8* %6, i64 %5
  %8 = load i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = load i32* %i, align 4
  %11 = sext i32 %10 to i64
  %12 = load i8** %2, align 8
  %13 = getelementptr inbounds i8* %12, i64 %11
  %14 = load i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %9, %15
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %3
  br label %18

; <label>:18                                      ; preds = %17
  %19 = load i32* %i, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %i, align 4
  br label %3

; <label>:21                                      ; preds = %3
  %22 = load i32* %i, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @strlen_new(i8* %s) #0 {
  %1 = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i32 0, i32* %n, align 4
  br label %2

; <label>:2                                       ; preds = %11, %0
  %3 = load i32* %n, align 4
  %4 = sext i32 %3 to i64
  %5 = load i8** %1, align 8
  %6 = getelementptr inbounds i8* %5, i64 %4
  %7 = load i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %2
  br label %11

; <label>:11                                      ; preds = %10
  %12 = load i32* %n, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %n, align 4
  br label %2

; <label>:14                                      ; preds = %2
  %15 = load i32* %n, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @strend(i8* %s, i8* %t) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %ls = alloca i32, align 4
  %lt = alloca i32, align 4
  store i8* %s, i8** %2, align 8
  store i8* %t, i8** %3, align 8
  %4 = load i8** %2, align 8
  %5 = call i32 @strlen_new(i8* %4)
  store i32 %5, i32* %ls, align 4
  %6 = load i8** %3, align 8
  %7 = call i32 @strlen_new(i8* %6)
  store i32 %7, i32* %lt, align 4
  br label %8

; <label>:8                                       ; preds = %26, %0
  %9 = load i32* %lt, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %31

; <label>:11                                      ; preds = %8
  %12 = load i32* %ls, align 4
  %13 = sext i32 %12 to i64
  %14 = load i8** %2, align 8
  %15 = getelementptr inbounds i8* %14, i64 %13
  %16 = load i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i32* %lt, align 4
  %19 = sext i32 %18 to i64
  %20 = load i8** %3, align 8
  %21 = getelementptr inbounds i8* %20, i64 %19
  %22 = load i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %17, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %11
  store i32 0, i32* %1
  br label %32

; <label>:26                                      ; preds = %11
  %27 = load i32* %ls, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %ls, align 4
  %29 = load i32* %lt, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %lt, align 4
  br label %8

; <label>:31                                      ; preds = %8
  store i32 1, i32* %1
  br label %32

; <label>:32                                      ; preds = %31, %25
  %33 = load i32* %1
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %s = alloca [11 x i8], align 1
  %t = alloca [6 x i8], align 1
  %ans = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast [11 x i8]* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([11 x i8]* @main.s, i32 0, i32 0), i64 11, i32 1, i1 false)
  %3 = bitcast [6 x i8]* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([6 x i8]* @main.t, i32 0, i32 0), i64 6, i32 1, i1 false)
  %4 = getelementptr inbounds [11 x i8]* %s, i32 0, i32 0
  %5 = getelementptr inbounds [6 x i8]* %t, i32 0, i32 0
  %6 = call i32 @strend(i8* %4, i8* %5)
  store i32 %6, i32* %ans, align 4
  %7 = load i32* %ans, align 4
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %7)
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
