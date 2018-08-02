; ModuleID = 'C-Programming-Examples/ex_5-10.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stkh = global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"Stack Overflow.\00", align 1
@stack = common global [100 x double] zeroinitializer, align 16
@.str2 = private unnamed_addr constant [13 x i8] c"Stack Empty.\00", align 1
@.str3 = private unnamed_addr constant [19 x i8] c"No Arguments Sent.\00", align 1
@.str4 = private unnamed_addr constant [17 x i8] c"Unknown Operand.\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @error(i8* %err) #0 {
  %1 = alloca i8*, align 8
  store i8* %err, i8** %1, align 8
  %2 = load %struct._IO_FILE** @stderr, align 8
  %3 = load i8** %1, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), i8* %3)
  call void @exit(i32 1) #4
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @push(double %val) #0 {
  %1 = alloca double, align 8
  store double %val, double* %1, align 8
  %2 = load i32* @stkh, align 4
  %3 = icmp eq i32 %2, 100
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  call void @error(i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0))
  br label %5

; <label>:5                                       ; preds = %4, %0
  %6 = load double* %1, align 8
  %7 = load i32* @stkh, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [100 x double]* @stack, i32 0, i64 %8
  store double %6, double* %9, align 8
  %10 = load i32* @stkh, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @stkh, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define double @pop() #0 {
  %1 = load i32* @stkh, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  call void @error(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0))
  br label %4

; <label>:4                                       ; preds = %3, %0
  %5 = load i32* @stkh, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @stkh, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [100 x double]* @stack, i32 0, i64 %7
  %9 = load double* %8, align 8
  ret double %9
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %i, align 4
  store i32 1, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %35, %0
  %5 = load i32* %i, align 4
  %6 = load i32* %2, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %38

; <label>:8                                       ; preds = %4
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = load i8*** %3, align 8
  %12 = getelementptr inbounds i8** %11, i64 %10
  %13 = load i8** %12, align 8
  %14 = getelementptr inbounds i8* %13, i64 0
  %15 = load i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %33 [
    i32 0, label %17
    i32 49, label %18
    i32 50, label %18
    i32 51, label %18
    i32 52, label %18
    i32 53, label %18
    i32 54, label %18
    i32 55, label %18
    i32 56, label %18
    i32 57, label %18
    i32 48, label %18
    i32 43, label %25
    i32 120, label %29
  ]

; <label>:17                                      ; preds = %8
  call void @error(i8* getelementptr inbounds ([19 x i8]* @.str3, i32 0, i32 0))
  br label %34

; <label>:18                                      ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %19 = load i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = load i8*** %3, align 8
  %22 = getelementptr inbounds i8** %21, i64 %20
  %23 = load i8** %22, align 8
  %24 = call double @atof(i8* %23) #5
  call void @push(double %24)
  br label %34

; <label>:25                                      ; preds = %8
  %26 = call double @pop()
  %27 = call double @pop()
  %28 = fadd double %26, %27
  call void @push(double %28)
  br label %34

; <label>:29                                      ; preds = %8
  %30 = call double @pop()
  %31 = call double @pop()
  %32 = fmul double %30, %31
  call void @push(double %32)
  br label %34

; <label>:33                                      ; preds = %8
  call void @error(i8* getelementptr inbounds ([17 x i8]* @.str4, i32 0, i32 0))
  br label %34

; <label>:34                                      ; preds = %33, %29, %25, %18, %17
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load i32* %i, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %i, align 4
  br label %4

; <label>:38                                      ; preds = %4
  %39 = call double @pop()
  %40 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), double %39)
  ret i32 1
}

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly }
