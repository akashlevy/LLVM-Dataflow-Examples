; ModuleID = 'C-Programming-Examples/calc_adv.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@bufp = global i32 0, align 4
@sp = global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error: zero divisor\0A\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"\09%.8g\0A\00", align 1
@.str2 = private unnamed_addr constant [27 x i8] c"error: unknown command %s\0A\00", align 1
@val = common global [100 x double] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [19 x i8] c"error: stack full\0A\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"stack empty\0A\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"%f\09%f\0A\00", align 1
@ungetchar = internal global i32 0, align 4
@buf = common global [100 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %type = alloca i32, align 4
  %op2 = alloca double, align 8
  %s = alloca [100 x i8], align 16
  store i32 0, i32* %1
  br label %2

; <label>:2                                       ; preds = %79, %0
  %3 = getelementptr inbounds [100 x i8]* %s, i32 0, i32 0
  %4 = call i32 @getop(i8* %3)
  store i32 %4, i32* %type, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %80

; <label>:6                                       ; preds = %2
  %7 = load i32* %type, align 4
  switch i32 %7, label %76 [
    i32 48, label %8
    i32 35, label %11
    i32 63, label %12
    i32 126, label %13
    i32 43, label %14
    i32 42, label %18
    i32 45, label %22
    i32 47, label %27
    i32 37, label %38
    i32 99, label %52
    i32 112, label %55
    i32 116, label %61
    i32 113, label %64
    i32 114, label %67
    i32 115, label %70
    i32 10, label %73
  ]

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds [100 x i8]* %s, i32 0, i32 0
  %10 = call double @atof(i8* %9) #5
  call void @push(double %10)
  br label %79

; <label>:11                                      ; preds = %6
  call void @dup_stack()
  br label %79

; <label>:12                                      ; preds = %6
  call void @print_stack()
  br label %79

; <label>:13                                      ; preds = %6
  call void @reverse()
  br label %79

; <label>:14                                      ; preds = %6
  %15 = call double @pop()
  %16 = call double @pop()
  %17 = fadd double %15, %16
  call void @push(double %17)
  br label %79

; <label>:18                                      ; preds = %6
  %19 = call double @pop()
  %20 = call double @pop()
  %21 = fmul double %19, %20
  call void @push(double %21)
  br label %79

; <label>:22                                      ; preds = %6
  %23 = call double @pop()
  store double %23, double* %op2, align 8
  %24 = call double @pop()
  %25 = load double* %op2, align 8
  %26 = fsub double %24, %25
  call void @push(double %26)
  br label %79

; <label>:27                                      ; preds = %6
  %28 = call double @pop()
  store double %28, double* %op2, align 8
  %29 = load double* %op2, align 8
  %30 = fcmp une double %29, 0.000000e+00
  br i1 %30, label %31, label %35

; <label>:31                                      ; preds = %27
  %32 = call double @pop()
  %33 = load double* %op2, align 8
  %34 = fdiv double %32, %33
  call void @push(double %34)
  br label %37

; <label>:35                                      ; preds = %27
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str, i32 0, i32 0))
  br label %37

; <label>:37                                      ; preds = %35, %31
  br label %79

; <label>:38                                      ; preds = %6
  %39 = call double @pop()
  store double %39, double* %op2, align 8
  %40 = load double* %op2, align 8
  %41 = fcmp une double %40, 0.000000e+00
  br i1 %41, label %42, label %49

; <label>:42                                      ; preds = %38
  %43 = call double @pop()
  %44 = fptosi double %43 to i32
  %45 = load double* %op2, align 8
  %46 = fptosi double %45 to i32
  %47 = srem i32 %44, %46
  %48 = sitofp i32 %47 to double
  call void @push(double %48)
  br label %51

; <label>:49                                      ; preds = %38
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str, i32 0, i32 0))
  br label %51

; <label>:51                                      ; preds = %49, %42
  br label %79

; <label>:52                                      ; preds = %6
  %53 = call double @pop()
  %54 = call double @cos(double %53) #6
  call void @push(double %54)
  br label %79

; <label>:55                                      ; preds = %6
  %56 = call double @pop()
  %57 = call double @pop()
  %58 = call double @pow(double %56, double %57) #6
  %59 = fptosi double %58 to i32
  %60 = sitofp i32 %59 to double
  call void @push(double %60)
  br label %79

; <label>:61                                      ; preds = %6
  %62 = call double @pop()
  %63 = call double @tan(double %62) #6
  call void @push(double %63)
  br label %79

; <label>:64                                      ; preds = %6
  %65 = call double @pop()
  %66 = call double @sqrt(double %65) #6
  call void @push(double %66)
  br label %79

; <label>:67                                      ; preds = %6
  %68 = call i32 @rand() #6
  %69 = sitofp i32 %68 to double
  call void @push(double %69)
  br label %79

; <label>:70                                      ; preds = %6
  %71 = call double @pop()
  %72 = call double @sin(double %71) #6
  call void @push(double %72)
  br label %79

; <label>:73                                      ; preds = %6
  %74 = call double @pop()
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), double %74)
  br label %79

; <label>:76                                      ; preds = %6
  %77 = getelementptr inbounds [100 x i8]* %s, i32 0, i32 0
  %78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str2, i32 0, i32 0), i8* %77)
  br label %79

; <label>:79                                      ; preds = %76, %73, %70, %67, %64, %61, %55, %52, %51, %37, %22, %18, %14, %13, %12, %11, %8
  br label %2

; <label>:80                                      ; preds = %2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @getop(i8* %s) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %s, i8** %2, align 8
  br label %3

; <label>:3                                       ; preds = %15, %0
  %4 = call i32 @getch()
  store i32 %4, i32* %c, align 4
  %5 = trunc i32 %4 to i8
  %6 = load i8** %2, align 8
  %7 = getelementptr inbounds i8* %6, i64 0
  store i8 %5, i8* %7, align 1
  %8 = sext i8 %5 to i32
  %9 = icmp eq i32 %8, 32
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %3
  %11 = load i32* %c, align 4
  %12 = icmp eq i32 %11, 9
  br label %13

; <label>:13                                      ; preds = %10, %3
  %14 = phi i1 [ true, %3 ], [ %12, %10 ]
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %13
  br label %3

; <label>:16                                      ; preds = %13
  %17 = load i8** %2, align 8
  %18 = getelementptr inbounds i8* %17, i64 1
  store i8 0, i8* %18, align 1
  %19 = load i32* %c, align 4
  %20 = sext i32 %19 to i64
  %21 = call i16** @__ctype_b_loc() #7
  %22 = load i16** %21, align 8
  %23 = getelementptr inbounds i16* %22, i64 %20
  %24 = load i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 2048
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

; <label>:28                                      ; preds = %16
  %29 = load i32* %c, align 4
  %30 = icmp ne i32 %29, 46
  br i1 %30, label %31, label %33

; <label>:31                                      ; preds = %28
  %32 = load i32* %c, align 4
  store i32 %32, i32* %1
  br label %96

; <label>:33                                      ; preds = %28, %16
  store i32 0, i32* %i, align 4
  %34 = load i32* %c, align 4
  %35 = sext i32 %34 to i64
  %36 = call i16** @__ctype_b_loc() #7
  %37 = load i16** %36, align 8
  %38 = getelementptr inbounds i16* %37, i64 %35
  %39 = load i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 2048
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

; <label>:43                                      ; preds = %33
  br label %44

; <label>:44                                      ; preds = %61, %43
  %45 = call i32 @getch()
  store i32 %45, i32* %c, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i32* %i, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %i, align 4
  %49 = sext i32 %48 to i64
  %50 = load i8** %2, align 8
  %51 = getelementptr inbounds i8* %50, i64 %49
  store i8 %46, i8* %51, align 1
  %52 = sext i8 %46 to i32
  %53 = sext i32 %52 to i64
  %54 = call i16** @__ctype_b_loc() #7
  %55 = load i16** %54, align 8
  %56 = getelementptr inbounds i16* %55, i64 %53
  %57 = load i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 2048
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %44
  br label %44

; <label>:62                                      ; preds = %44
  br label %63

; <label>:63                                      ; preds = %62, %33
  %64 = load i32* %c, align 4
  %65 = icmp eq i32 %64, 46
  br i1 %65, label %66, label %86

; <label>:66                                      ; preds = %63
  br label %67

; <label>:67                                      ; preds = %84, %66
  %68 = call i32 @getch()
  store i32 %68, i32* %c, align 4
  %69 = trunc i32 %68 to i8
  %70 = load i32* %i, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %i, align 4
  %72 = sext i32 %71 to i64
  %73 = load i8** %2, align 8
  %74 = getelementptr inbounds i8* %73, i64 %72
  store i8 %69, i8* %74, align 1
  %75 = sext i8 %69 to i32
  %76 = sext i32 %75 to i64
  %77 = call i16** @__ctype_b_loc() #7
  %78 = load i16** %77, align 8
  %79 = getelementptr inbounds i16* %78, i64 %76
  %80 = load i16* %79, align 2
  %81 = zext i16 %80 to i32
  %82 = and i32 %81, 2048
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %67
  br label %67

; <label>:85                                      ; preds = %67
  br label %86

; <label>:86                                      ; preds = %85, %63
  %87 = load i32* %i, align 4
  %88 = sext i32 %87 to i64
  %89 = load i8** %2, align 8
  %90 = getelementptr inbounds i8* %89, i64 %88
  store i8 0, i8* %90, align 1
  %91 = load i32* %c, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %95

; <label>:93                                      ; preds = %86
  %94 = load i32* @ungetchar, align 4
  store i32 %94, i32* %c, align 4
  br label %95

; <label>:95                                      ; preds = %93, %86
  store i32 48, i32* %1
  br label %96

; <label>:96                                      ; preds = %95, %31
  %97 = load i32* %1
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define void @push(double %f) #0 {
  %1 = alloca double, align 8
  store double %f, double* %1, align 8
  %2 = load i32* @sp, align 4
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load double* %1, align 8
  %6 = load i32* @sp, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @sp, align 4
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [100 x double]* @val, i32 0, i64 %8
  store double %5, double* %9, align 8
  br label %12

; <label>:10                                      ; preds = %0
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str3, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind readonly
declare double @atof(i8*) #1

; Function Attrs: nounwind uwtable
define void @dup_stack() #0 {
  %temp = alloca i32, align 4
  %1 = call double @pop()
  %2 = fptosi double %1 to i32
  store i32 %2, i32* %temp, align 4
  %3 = load i32* %temp, align 4
  %4 = sitofp i32 %3 to double
  call void @push(double %4)
  %5 = load i32* %temp, align 4
  %6 = sitofp i32 %5 to double
  call void @push(double %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_stack() #0 {
  %1 = load i32* @sp, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %14

; <label>:3                                       ; preds = %0
  %4 = load i32* @sp, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [100 x double]* @val, i32 0, i64 %5
  %7 = load double* %6, align 8
  %8 = load i32* @sp, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [100 x double]* @val, i32 0, i64 %10
  %12 = load double* %11, align 8
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0), double %7, double %12)
  br label %14

; <label>:14                                      ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define void @reverse() #0 {
  %temp1 = alloca double, align 8
  %temp2 = alloca double, align 8
  %1 = call double @pop()
  store double %1, double* %temp1, align 8
  %2 = call double @pop()
  store double %2, double* %temp2, align 8
  %3 = load double* %temp1, align 8
  call void @push(double %3)
  %4 = load double* %temp2, align 8
  call void @push(double %4)
  ret void
}

; Function Attrs: nounwind uwtable
define double @pop() #0 {
  %1 = alloca double, align 8
  %2 = load i32* @sp, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = load i32* @sp, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @sp, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [100 x double]* @val, i32 0, i64 %7
  %9 = load double* %8, align 8
  store double %9, double* %1
  br label %12

; <label>:10                                      ; preds = %0
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0))
  store double 0.000000e+00, double* %1
  br label %12

; <label>:12                                      ; preds = %10, %4
  %13 = load double* %1
  ret double %13
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind
declare double @tan(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind uwtable
define i32 @getch() #0 {
  %1 = load i32* @bufp, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %10

; <label>:3                                       ; preds = %0
  %4 = load i32* @bufp, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* @bufp, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [100 x i8]* @buf, i32 0, i64 %6
  %8 = load i8* %7, align 1
  %9 = sext i8 %8 to i32
  br label %12

; <label>:10                                      ; preds = %0
  %11 = call i32 @getchar()
  br label %12

; <label>:12                                      ; preds = %10, %3
  %13 = phi i32 [ %9, %3 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @getchar() #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
