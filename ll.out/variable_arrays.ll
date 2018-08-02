; ModuleID = 'C-Programming-Examples/variable_arrays.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"How many numbers do you want to reverse? \00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"Enter %d numbers: \00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"In reverse order:\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store i32 0, i32* %1
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %n)
  %6 = load i32* %n, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2
  %9 = alloca i32, i64 %7, align 16
  %10 = load i32* %n, align 4
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i32 %10)
  store i32 0, i32* %i, align 4
  br label %12

; <label>:12                                      ; preds = %21, %0
  %13 = load i32* %i, align 4
  %14 = load i32* %n, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

; <label>:16                                      ; preds = %12
  %17 = load i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32* %9, i64 %18
  %20 = call i32 (i8*, ...)* @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i32* %19)
  br label %21

; <label>:21                                      ; preds = %16
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %12

; <label>:24                                      ; preds = %12
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str3, i32 0, i32 0))
  %26 = load i32* %n, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %i, align 4
  br label %28

; <label>:28                                      ; preds = %37, %24
  %29 = load i32* %i, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %40

; <label>:31                                      ; preds = %28
  %32 = load i32* %i, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32* %9, i64 %33
  %35 = load i32* %34, align 4
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i32 %35)
  br label %37

; <label>:37                                      ; preds = %31
  %38 = load i32* %i, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %i, align 4
  br label %28

; <label>:40                                      ; preds = %28
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0))
  store i32 0, i32* %1
  store i32 1, i32* %3
  %42 = load i8** %2
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32* %1
  ret i32 %43
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
