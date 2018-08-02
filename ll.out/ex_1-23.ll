; ModuleID = 'C-Programming-Examples/ex_1-23.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @advbuf(i8* %buf, i8* %mrk) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %buf, i8** %1, align 8
  store i8* %mrk, i8** %2, align 8
  %3 = load i8** %1, align 8
  %4 = getelementptr inbounds i8* %3, i64 1
  %5 = load i8* %4, align 1
  %6 = load i8** %1, align 8
  %7 = getelementptr inbounds i8* %6, i64 0
  store i8 %5, i8* %7, align 1
  %8 = load i8** %2, align 8
  %9 = getelementptr inbounds i8* %8, i64 1
  %10 = load i8* %9, align 1
  %11 = load i8** %2, align 8
  %12 = getelementptr inbounds i8* %11, i64 0
  store i8 %10, i8* %12, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %mrk = alloca [2 x i8], align 1
  %strtyp = alloca i8, align 1
  %comment = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast [2 x i8]* %mrk to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 2, i32 1, i1 false)
  store i8 0, i8* %strtyp, align 1
  store i32 0, i32* %comment, align 4
  br label %3

; <label>:3                                       ; preds = %122, %0
  %4 = getelementptr inbounds [2 x i8]* %buf, i32 0, i32 0
  %5 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i32 0
  call void @advbuf(i8* %4, i8* %5)
  %6 = call i32 @getchar()
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 1
  store i8 %7, i8* %8, align 1
  %9 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 1
  %10 = load i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %3
  ret i32 0

; <label>:14                                      ; preds = %3
  %15 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 1
  store i8 112, i8* %15, align 1
  %16 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 1
  %17 = load i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 39
  br i1 %19, label %25, label %20

; <label>:20                                      ; preds = %14
  %21 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 1
  %22 = load i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 34
  br i1 %24, label %25, label %29

; <label>:25                                      ; preds = %20, %14
  %26 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 1
  store i8 113, i8* %26, align 1
  %27 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 1
  %28 = load i8* %27, align 1
  store i8 %28, i8* %strtyp, align 1
  br label %29

; <label>:29                                      ; preds = %25, %20
  %30 = load i8* %strtyp, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 39
  br i1 %32, label %37, label %33

; <label>:33                                      ; preds = %29
  %34 = load i8* %strtyp, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 34
  br i1 %36, label %37, label %53

; <label>:37                                      ; preds = %33, %29
  %38 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 0
  %39 = load i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 113
  br i1 %41, label %42, label %52

; <label>:42                                      ; preds = %37
  %43 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 1
  %44 = load i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8* %strtyp, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %42
  store i8 0, i8* %strtyp, align 1
  br label %50

; <label>:50                                      ; preds = %49, %42
  %51 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 1
  store i8 113, i8* %51, align 1
  br label %52

; <label>:52                                      ; preds = %50, %37
  br label %53

; <label>:53                                      ; preds = %52, %33
  %54 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 1
  %55 = load i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 112
  br i1 %57, label %63, label %58

; <label>:58                                      ; preds = %53
  %59 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 1
  %60 = load i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 99
  br i1 %62, label %63, label %107

; <label>:63                                      ; preds = %58, %53
  %64 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 1
  %65 = load i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 42
  br i1 %67, label %73, label %68

; <label>:68                                      ; preds = %63
  %69 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 1
  %70 = load i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 47
  br i1 %72, label %73, label %82

; <label>:73                                      ; preds = %68, %63
  %74 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 0
  %75 = load i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 47
  br i1 %77, label %78, label %81

; <label>:78                                      ; preds = %73
  %79 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 0
  store i8 99, i8* %79, align 1
  %80 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 1
  store i8 99, i8* %80, align 1
  store i32 1, i32* %comment, align 4
  br label %81

; <label>:81                                      ; preds = %78, %73
  br label %82

; <label>:82                                      ; preds = %81, %68
  %83 = load i32* %comment, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %106

; <label>:85                                      ; preds = %82
  %86 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 1
  %87 = load i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 47
  br i1 %89, label %90, label %104

; <label>:90                                      ; preds = %85
  %91 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 0
  %92 = load i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 42
  br i1 %94, label %100, label %95

; <label>:95                                      ; preds = %90
  %96 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 0
  %97 = load i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 47
  br i1 %99, label %100, label %103

; <label>:100                                     ; preds = %95, %90
  %101 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 0
  store i8 99, i8* %101, align 1
  %102 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 1
  store i8 99, i8* %102, align 1
  store i32 0, i32* %comment, align 4
  br label %103

; <label>:103                                     ; preds = %100, %95
  br label %104

; <label>:104                                     ; preds = %103, %85
  %105 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 1
  store i8 99, i8* %105, align 1
  br label %106

; <label>:106                                     ; preds = %104, %82
  br label %107

; <label>:107                                     ; preds = %106, %58
  %108 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 0
  %109 = load i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 112
  br i1 %111, label %117, label %112

; <label>:112                                     ; preds = %107
  %113 = getelementptr inbounds [2 x i8]* %mrk, i32 0, i64 0
  %114 = load i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 113
  br i1 %116, label %117, label %122

; <label>:117                                     ; preds = %112, %107
  %118 = getelementptr inbounds [2 x i8]* %buf, i32 0, i64 0
  %119 = load i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = call i32 @putchar(i32 %120)
  br label %122

; <label>:122                                     ; preds = %117, %112
  br label %3
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @getchar() #2

declare i32 @putchar(i32) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
