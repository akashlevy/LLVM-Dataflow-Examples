; ModuleID = 'C-Programming-Examples/ex_3-5.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"Number: %d\09Base: %d Ans: \00", align 1
@itob.base_chars = private unnamed_addr constant [63 x i8] c"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@.str3 = private unnamed_addr constant [32 x i8] c"Base must be between 2 and %d.\0A\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"Base must be %d or less.\0A\00", align 1

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
  %6 = call i64 @strlen(i8* %5) #4
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
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %base = alloca i32, align 4
  %number = alloca i32, align 4
  %ans = alloca [255 x i8], align 16
  store i32 0, i32* %1
  store i32 16384, i32* %number, align 4
  %2 = bitcast [255 x i8]* %ans to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 255, i32 16, i1 false)
  store i32 2, i32* %base, align 4
  br label %3

; <label>:3                                       ; preds = %18, %0
  %4 = load i32* %base, align 4
  %5 = icmp slt i32 %4, 62
  br i1 %5, label %6, label %21

; <label>:6                                       ; preds = %3
  %7 = load i32* %number, align 4
  %8 = getelementptr inbounds [255 x i8]* %ans, i32 0, i32 0
  %9 = load i32* %base, align 4
  %10 = call i32 @itob(i32 %7, i8* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

; <label>:12                                      ; preds = %6
  %13 = load i32* %number, align 4
  %14 = load i32* %base, align 4
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0), i32 %13, i32 %14)
  %16 = getelementptr inbounds [255 x i8]* %ans, i32 0, i32 0
  call void @print_array(i8* %16)
  br label %17

; <label>:17                                      ; preds = %12, %6
  br label %18

; <label>:18                                      ; preds = %17
  %19 = load i32* %base, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %base, align 4
  br label %3

; <label>:21                                      ; preds = %3
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @itob(i32 %n, i8* %s, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %sign = alloca i32, align 4
  %i = alloca i32, align 4
  %base_chars = alloca [63 x i8], align 16
  store i32 %n, i32* %2, align 4
  store i8* %s, i8** %3, align 8
  store i32 %b, i32* %4, align 4
  store i32 0, i32* %i, align 4
  %5 = bitcast [63 x i8]* %base_chars to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds ([63 x i8]* @itob.base_chars, i32 0, i32 0), i64 63, i32 16, i1 false)
  %6 = load i32* %4, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds [63 x i8]* %base_chars, i32 0, i32 0
  %10 = call i64 @strlen(i8* %9) #4
  %11 = trunc i64 %10 to i32
  %12 = sub nsw i32 %11, 1
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str3, i32 0, i32 0), i32 %12)
  store i32 -1, i32* %1
  br label %66

; <label>:14                                      ; preds = %0
  %15 = load i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [63 x i8]* %base_chars, i32 0, i32 0
  %18 = call i64 @strlen(i8* %17) #4
  %19 = sub i64 %18, 1
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %27

; <label>:21                                      ; preds = %14
  %22 = getelementptr inbounds [63 x i8]* %base_chars, i32 0, i32 0
  %23 = call i64 @strlen(i8* %22) #4
  %24 = trunc i64 %23 to i32
  %25 = sub nsw i32 %24, 1
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i32 %25)
  store i32 -1, i32* %1
  br label %66

; <label>:27                                      ; preds = %14
  %28 = load i32* %2, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30                                      ; preds = %27
  %31 = load i32* %2, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  store i32 1, i32* %sign, align 4
  br label %33

; <label>:33                                      ; preds = %30, %27
  store i32 0, i32* %i, align 4
  br label %34

; <label>:34                                      ; preds = %46, %33
  %35 = load i32* %2, align 4
  %36 = load i32* %4, align 4
  %37 = srem i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [63 x i8]* %base_chars, i32 0, i64 %38
  %40 = load i8* %39, align 1
  %41 = load i32* %i, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %i, align 4
  %43 = sext i32 %41 to i64
  %44 = load i8** %3, align 8
  %45 = getelementptr inbounds i8* %44, i64 %43
  store i8 %40, i8* %45, align 1
  br label %46

; <label>:46                                      ; preds = %34
  %47 = load i32* %4, align 4
  %48 = load i32* %2, align 4
  %49 = sdiv i32 %48, %47
  store i32 %49, i32* %2, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %34, label %51

; <label>:51                                      ; preds = %46
  %52 = load i32* %sign, align 4
  %53 = icmp eq i32 %52, 49
  br i1 %53, label %54, label %60

; <label>:54                                      ; preds = %51
  %55 = load i32* %i, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %i, align 4
  %57 = sext i32 %56 to i64
  %58 = load i8** %3, align 8
  %59 = getelementptr inbounds i8* %58, i64 %57
  store i8 45, i8* %59, align 1
  br label %60

; <label>:60                                      ; preds = %54, %51
  %61 = load i32* %i, align 4
  %62 = sext i32 %61 to i64
  %63 = load i8** %3, align 8
  %64 = getelementptr inbounds i8* %63, i64 %62
  store i8 0, i8* %64, align 1
  %65 = load i8** %3, align 8
  call void @reverse(i8* %65)
  store i32 1, i32* %1
  br label %66

; <label>:66                                      ; preds = %60, %21, %8
  %67 = load i32* %1
  ret i32 %67
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @reverse(i8* %s) #0 {
  %1 = alloca i8*, align 8
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i32 0, i32* %i, align 4
  %2 = load i8** %1, align 8
  %3 = call i64 @strlen(i8* %2) #4
  %4 = sub i64 %3, 1
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %j, align 4
  br label %6

; <label>:6                                       ; preds = %32, %0
  %7 = load i32* %j, align 4
  %8 = load i32* %i, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %37

; <label>:10                                      ; preds = %6
  %11 = load i32* %i, align 4
  %12 = sext i32 %11 to i64
  %13 = load i8** %1, align 8
  %14 = getelementptr inbounds i8* %13, i64 %12
  %15 = load i8* %14, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %temp, align 4
  %17 = load i32* %j, align 4
  %18 = sext i32 %17 to i64
  %19 = load i8** %1, align 8
  %20 = getelementptr inbounds i8* %19, i64 %18
  %21 = load i8* %20, align 1
  %22 = load i32* %i, align 4
  %23 = sext i32 %22 to i64
  %24 = load i8** %1, align 8
  %25 = getelementptr inbounds i8* %24, i64 %23
  store i8 %21, i8* %25, align 1
  %26 = load i32* %temp, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i32* %j, align 4
  %29 = sext i32 %28 to i64
  %30 = load i8** %1, align 8
  %31 = getelementptr inbounds i8* %30, i64 %29
  store i8 %27, i8* %31, align 1
  br label %32

; <label>:32                                      ; preds = %10
  %33 = load i32* %i, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %i, align 4
  %35 = load i32* %j, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %j, align 4
  br label %6

; <label>:37                                      ; preds = %6
  ret void
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }
