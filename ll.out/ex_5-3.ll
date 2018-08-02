; ModuleID = 'C-Programming-Examples/ex_5-3.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@main.s = private unnamed_addr constant [27 x i8] c"this is a string of chars \00", align 16

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
define void @strcat_old(i8* %s, i8* %t) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i8* %t, i8** %2, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %11, %0
  %4 = load i32* %i, align 4
  %5 = sext i32 %4 to i64
  %6 = load i8** %1, align 8
  %7 = getelementptr inbounds i8* %6, i64 %5
  %8 = load i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %3
  %12 = load i32* %i, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %i, align 4
  br label %3

; <label>:14                                      ; preds = %3
  br label %15

; <label>:15                                      ; preds = %29, %14
  %16 = load i32* %j, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %j, align 4
  %18 = sext i32 %16 to i64
  %19 = load i8** %2, align 8
  %20 = getelementptr inbounds i8* %19, i64 %18
  %21 = load i8* %20, align 1
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  %24 = sext i32 %22 to i64
  %25 = load i8** %1, align 8
  %26 = getelementptr inbounds i8* %25, i64 %24
  store i8 %21, i8* %26, align 1
  %27 = sext i8 %21 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %15
  br label %15

; <label>:30                                      ; preds = %15
  ret void
}

; Function Attrs: nounwind uwtable
define void @strcopy(i8* %s, i8* %t) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  store i8* %t, i8** %2, align 8
  br label %3

; <label>:3                                       ; preds = %10, %0
  %4 = load i8** %2, align 8
  %5 = getelementptr inbounds i8* %4, i32 1
  store i8* %5, i8** %2, align 8
  %6 = load i8* %4, align 1
  %7 = load i8** %1, align 8
  %8 = getelementptr inbounds i8* %7, i32 1
  store i8* %8, i8** %1, align 8
  store i8 %6, i8* %7, align 1
  %9 = icmp ne i8 %6, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %3
  br label %3

; <label>:11                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind uwtable
define void @strcatptr(i8* %s, i8* %t) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  store i8* %t, i8** %2, align 8
  br label %3

; <label>:3                                       ; preds = %7, %0
  %4 = load i8** %1, align 8
  %5 = load i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %3
  %8 = load i8** %1, align 8
  %9 = getelementptr inbounds i8* %8, i32 1
  store i8* %9, i8** %1, align 8
  br label %3

; <label>:10                                      ; preds = %3
  %11 = load i8** %1, align 8
  %12 = load i8** %2, align 8
  call void @strcopy(i8* %11, i8* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %buffer = alloca [128 x i8], align 16
  %s = alloca [27 x i8], align 16
  store i32 0, i32* %1
  %2 = bitcast [27 x i8]* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([27 x i8]* @main.s, i32 0, i32 0), i64 27, i32 16, i1 false)
  %3 = getelementptr inbounds [128 x i8]* %buffer, i32 0, i32 0
  %4 = getelementptr inbounds [27 x i8]* %s, i32 0, i32 0
  call void @strcatptr(i8* %3, i8* %4)
  %5 = getelementptr inbounds [128 x i8]* %buffer, i32 0, i32 0
  %6 = getelementptr inbounds [27 x i8]* %s, i32 0, i32 0
  call void @strcatptr(i8* %5, i8* %6)
  %7 = getelementptr inbounds [128 x i8]* %buffer, i32 0, i32 0
  call void @print_array(i8* %7)
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0))
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }
