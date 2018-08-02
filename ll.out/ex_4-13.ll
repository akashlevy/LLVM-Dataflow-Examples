; ModuleID = 'C-Programming-Examples/ex_4-13.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.s = private unnamed_addr constant [10 x i8] c"Reverse Me", align 1

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
define void @rev_array(i8* %s) #0 {
  %1 = alloca i8*, align 8
  %c = alloca i32, align 4
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
  %7 = load i32* %i, align 4
  %8 = load i32* %j, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %37

; <label>:10                                      ; preds = %6
  %11 = load i32* %i, align 4
  %12 = sext i32 %11 to i64
  %13 = load i8** %1, align 8
  %14 = getelementptr inbounds i8* %13, i64 %12
  %15 = load i8* %14, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %c, align 4
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
  %26 = load i32* %c, align 4
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

; Function Attrs: nounwind uwtable
define i32 @rec_rev(i8* %s, i32 %i, i32 %j) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %s, i8** %1, align 8
  store i32 %i, i32* %2, align 4
  store i32 %j, i32* %3, align 4
  %4 = load i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = load i8** %1, align 8
  %7 = getelementptr inbounds i8* %6, i64 %5
  %8 = load i8* %7, align 1
  store i8 %8, i8* %c, align 1
  %9 = load i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = load i8** %1, align 8
  %12 = getelementptr inbounds i8* %11, i64 %10
  %13 = load i8* %12, align 1
  %14 = load i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = load i8** %1, align 8
  %17 = getelementptr inbounds i8* %16, i64 %15
  store i8 %13, i8* %17, align 1
  %18 = load i8* %c, align 1
  %19 = load i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = load i8** %1, align 8
  %22 = getelementptr inbounds i8* %21, i64 %20
  store i8 %18, i8* %22, align 1
  %23 = load i32* %2, align 4
  %24 = load i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %35

; <label>:26                                      ; preds = %0
  %27 = load i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  %29 = load i32* %3, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %3, align 4
  %31 = load i8** %1, align 8
  %32 = load i32* %2, align 4
  %33 = load i32* %3, align 4
  %34 = call i32 @rec_rev(i8* %31, i32 %32, i32 %33)
  br label %35

; <label>:35                                      ; preds = %26, %0
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @rev_array_rec(i8* %s) #0 {
  %1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i32 0, i32* %i, align 4
  %2 = load i8** %1, align 8
  %3 = call i64 @strlen(i8* %2) #4
  %4 = sub i64 %3, 1
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %j, align 4
  %6 = load i8** %1, align 8
  %7 = load i32* %i, align 4
  %8 = load i32* %j, align 4
  %9 = call i32 @rec_rev(i8* %6, i32 %7, i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %s = alloca [10 x i8], align 1
  store i32 0, i32* %1
  %2 = bitcast [10 x i8]* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([10 x i8]* @main.s, i32 0, i32 0), i64 10, i32 1, i1 false)
  %3 = getelementptr inbounds [10 x i8]* %s, i32 0, i32 0
  call void @print_array(i8* %3)
  %4 = getelementptr inbounds [10 x i8]* %s, i32 0, i32 0
  call void @rev_array_rec(i8* %4)
  %5 = getelementptr inbounds [10 x i8]* %s, i32 0, i32 0
  call void @print_array(i8* %5)
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }
