; ModuleID = 'C-Programming-Examples/ex_4-2.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.s = private unnamed_addr constant [12 x i8] c"-123.456e-7\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@main.r = private unnamed_addr constant [10 x i8] c"123.45e-6\00", align 1
@main.t = private unnamed_addr constant [9 x i8] c"123.45E6\00", align 1
@main.u = private unnamed_addr constant [11 x i8] c"-123.45e56\00", align 1

; Function Attrs: nounwind uwtable
define double @atof(i8* %s) #0 {
  %1 = alloca i8*, align 8
  %val = alloca x86_fp80, align 16
  %power = alloca x86_fp80, align 16
  %expower = alloca x86_fp80, align 16
  %i = alloca i32, align 4
  %sign = alloca i32, align 4
  %exsign = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %18, %0
  %3 = load i32* %i, align 4
  %4 = sext i32 %3 to i64
  %5 = load i8** %1, align 8
  %6 = getelementptr inbounds i8* %5, i64 %4
  %7 = load i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = sext i32 %8 to i64
  %10 = call i16** @__ctype_b_loc() #4
  %11 = load i16** %10, align 8
  %12 = getelementptr inbounds i16* %11, i64 %9
  %13 = load i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 8192
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %2
  br label %18

; <label>:18                                      ; preds = %17
  %19 = load i32* %i, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %i, align 4
  br label %2

; <label>:21                                      ; preds = %2
  %22 = load i32* %i, align 4
  %23 = sext i32 %22 to i64
  %24 = load i8** %1, align 8
  %25 = getelementptr inbounds i8* %24, i64 %23
  %26 = load i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  %29 = select i1 %28, i32 -1, i32 1
  store i32 %29, i32* %sign, align 4
  br label %30

; <label>:30                                      ; preds = %46, %21
  %31 = load i32* %i, align 4
  %32 = sext i32 %31 to i64
  %33 = load i8** %1, align 8
  %34 = getelementptr inbounds i8* %33, i64 %32
  %35 = load i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = call i16** @__ctype_b_loc() #4
  %39 = load i16** %38, align 8
  %40 = getelementptr inbounds i16* %39, i64 %37
  %41 = load i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 2048
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %49

; <label>:46                                      ; preds = %30
  %47 = load i32* %i, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %i, align 4
  br label %30

; <label>:49                                      ; preds = %30
  store x86_fp80 0xK00000000000000000000, x86_fp80* %val, align 16
  br label %50

; <label>:50                                      ; preds = %65, %49
  %51 = load i32* %i, align 4
  %52 = sext i32 %51 to i64
  %53 = load i8** %1, align 8
  %54 = getelementptr inbounds i8* %53, i64 %52
  %55 = load i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = call i16** @__ctype_b_loc() #4
  %59 = load i16** %58, align 8
  %60 = getelementptr inbounds i16* %59, i64 %57
  %61 = load i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %62, 2048
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

; <label>:65                                      ; preds = %50
  %66 = load x86_fp80* %val, align 16
  %67 = fmul x86_fp80 0xK4002A000000000000000, %66
  %68 = load i32* %i, align 4
  %69 = sext i32 %68 to i64
  %70 = load i8** %1, align 8
  %71 = getelementptr inbounds i8* %70, i64 %69
  %72 = load i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = sub nsw i32 %73, 48
  %75 = sitofp i32 %74 to x86_fp80
  %76 = fadd x86_fp80 %67, %75
  store x86_fp80 %76, x86_fp80* %val, align 16
  %77 = load i32* %i, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %i, align 4
  br label %50

; <label>:79                                      ; preds = %50
  %80 = load i32* %i, align 4
  %81 = sext i32 %80 to i64
  %82 = load i8** %1, align 8
  %83 = getelementptr inbounds i8* %82, i64 %81
  %84 = load i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 46
  br i1 %86, label %87, label %90

; <label>:87                                      ; preds = %79
  %88 = load i32* %i, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %i, align 4
  br label %90

; <label>:90                                      ; preds = %87, %79
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %power, align 16
  br label %91

; <label>:91                                      ; preds = %106, %90
  %92 = load i32* %i, align 4
  %93 = sext i32 %92 to i64
  %94 = load i8** %1, align 8
  %95 = getelementptr inbounds i8* %94, i64 %93
  %96 = load i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = call i16** @__ctype_b_loc() #4
  %100 = load i16** %99, align 8
  %101 = getelementptr inbounds i16* %100, i64 %98
  %102 = load i16* %101, align 2
  %103 = zext i16 %102 to i32
  %104 = and i32 %103, 2048
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %122

; <label>:106                                     ; preds = %91
  %107 = load x86_fp80* %val, align 16
  %108 = fmul x86_fp80 0xK4002A000000000000000, %107
  %109 = load i32* %i, align 4
  %110 = sext i32 %109 to i64
  %111 = load i8** %1, align 8
  %112 = getelementptr inbounds i8* %111, i64 %110
  %113 = load i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = sub nsw i32 %114, 48
  %116 = sitofp i32 %115 to x86_fp80
  %117 = fadd x86_fp80 %108, %116
  store x86_fp80 %117, x86_fp80* %val, align 16
  %118 = load x86_fp80* %power, align 16
  %119 = fmul x86_fp80 %118, 0xK4002A000000000000000
  store x86_fp80 %119, x86_fp80* %power, align 16
  %120 = load i32* %i, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %i, align 4
  br label %91

; <label>:122                                     ; preds = %91
  %123 = load i32* %sign, align 4
  %124 = sitofp i32 %123 to x86_fp80
  %125 = load x86_fp80* %val, align 16
  %126 = fmul x86_fp80 %124, %125
  %127 = load x86_fp80* %power, align 16
  %128 = fdiv x86_fp80 %126, %127
  store x86_fp80 %128, x86_fp80* %val, align 16
  %129 = load i32* %i, align 4
  %130 = sext i32 %129 to i64
  %131 = load i8** %1, align 8
  %132 = getelementptr inbounds i8* %131, i64 %130
  %133 = load i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 101
  br i1 %135, label %144, label %136

; <label>:136                                     ; preds = %122
  %137 = load i32* %i, align 4
  %138 = sext i32 %137 to i64
  %139 = load i8** %1, align 8
  %140 = getelementptr inbounds i8* %139, i64 %138
  %141 = load i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 69
  br i1 %143, label %144, label %205

; <label>:144                                     ; preds = %136, %122
  %145 = load i32* %i, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %i, align 4
  %147 = load i32* %i, align 4
  %148 = sext i32 %147 to i64
  %149 = load i8** %1, align 8
  %150 = getelementptr inbounds i8* %149, i64 %148
  %151 = load i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 45
  %154 = select i1 %153, i32 -1, i32 1
  store i32 %154, i32* %exsign, align 4
  br label %155

; <label>:155                                     ; preds = %171, %144
  %156 = load i32* %i, align 4
  %157 = sext i32 %156 to i64
  %158 = load i8** %1, align 8
  %159 = getelementptr inbounds i8* %158, i64 %157
  %160 = load i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = sext i32 %161 to i64
  %163 = call i16** @__ctype_b_loc() #4
  %164 = load i16** %163, align 8
  %165 = getelementptr inbounds i16* %164, i64 %162
  %166 = load i16* %165, align 2
  %167 = zext i16 %166 to i32
  %168 = and i32 %167, 2048
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  br i1 %170, label %171, label %174

; <label>:171                                     ; preds = %155
  %172 = load i32* %i, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %i, align 4
  br label %155

; <label>:174                                     ; preds = %155
  store x86_fp80 0xK00000000000000000000, x86_fp80* %expower, align 16
  br label %175

; <label>:175                                     ; preds = %190, %174
  %176 = load i32* %i, align 4
  %177 = sext i32 %176 to i64
  %178 = load i8** %1, align 8
  %179 = getelementptr inbounds i8* %178, i64 %177
  %180 = load i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = sext i32 %181 to i64
  %183 = call i16** @__ctype_b_loc() #4
  %184 = load i16** %183, align 8
  %185 = getelementptr inbounds i16* %184, i64 %182
  %186 = load i16* %185, align 2
  %187 = zext i16 %186 to i32
  %188 = and i32 %187, 2048
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %204

; <label>:190                                     ; preds = %175
  %191 = load x86_fp80* %expower, align 16
  %192 = fmul x86_fp80 0xK4002A000000000000000, %191
  %193 = load i32* %i, align 4
  %194 = sext i32 %193 to i64
  %195 = load i8** %1, align 8
  %196 = getelementptr inbounds i8* %195, i64 %194
  %197 = load i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = sub nsw i32 %198, 48
  %200 = sitofp i32 %199 to x86_fp80
  %201 = fadd x86_fp80 %192, %200
  store x86_fp80 %201, x86_fp80* %expower, align 16
  %202 = load i32* %i, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %i, align 4
  br label %175

; <label>:204                                     ; preds = %175
  br label %205

; <label>:205                                     ; preds = %204, %136
  %206 = load i32* %exsign, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %218

; <label>:208                                     ; preds = %205
  br label %209

; <label>:209                                     ; preds = %212, %208
  %210 = load x86_fp80* %expower, align 16
  %211 = fcmp ogt x86_fp80 %210, 0xK00000000000000000000
  br i1 %211, label %212, label %217

; <label>:212                                     ; preds = %209
  %213 = load x86_fp80* %val, align 16
  %214 = fmul x86_fp80 %213, 0xK4002A000000000000000
  store x86_fp80 %214, x86_fp80* %val, align 16
  %215 = load x86_fp80* %expower, align 16
  %216 = fadd x86_fp80 %215, 0xKBFFF8000000000000000
  store x86_fp80 %216, x86_fp80* %expower, align 16
  br label %209

; <label>:217                                     ; preds = %209
  br label %228

; <label>:218                                     ; preds = %205
  br label %219

; <label>:219                                     ; preds = %222, %218
  %220 = load x86_fp80* %expower, align 16
  %221 = fcmp ogt x86_fp80 %220, 0xK00000000000000000000
  br i1 %221, label %222, label %227

; <label>:222                                     ; preds = %219
  %223 = load x86_fp80* %val, align 16
  %224 = fdiv x86_fp80 %223, 0xK4002A000000000000000
  store x86_fp80 %224, x86_fp80* %val, align 16
  %225 = load x86_fp80* %expower, align 16
  %226 = fadd x86_fp80 %225, 0xKBFFF8000000000000000
  store x86_fp80 %226, x86_fp80* %expower, align 16
  br label %219

; <label>:227                                     ; preds = %219
  br label %228

; <label>:228                                     ; preds = %227, %217
  %229 = load x86_fp80* %val, align 16
  %230 = fptrunc x86_fp80 %229 to double
  ret double %230
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %s = alloca [12 x i8], align 1
  %ans = alloca double, align 8
  %r = alloca [10 x i8], align 1
  %t = alloca [9 x i8], align 1
  %u = alloca [11 x i8], align 1
  store i32 0, i32* %1
  %2 = bitcast [12 x i8]* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([12 x i8]* @main.s, i32 0, i32 0), i64 12, i32 1, i1 false)
  %3 = getelementptr inbounds [12 x i8]* %s, i32 0, i32 0
  %4 = call double @atof(i8* %3)
  store double %4, double* %ans, align 8
  %5 = load double* %ans, align 8
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), double %5)
  %7 = bitcast [10 x i8]* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* getelementptr inbounds ([10 x i8]* @main.r, i32 0, i32 0), i64 10, i32 1, i1 false)
  %8 = getelementptr inbounds [10 x i8]* %r, i32 0, i32 0
  %9 = call double @atof(i8* %8)
  store double %9, double* %ans, align 8
  %10 = load double* %ans, align 8
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), double %10)
  %12 = bitcast [9 x i8]* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* getelementptr inbounds ([9 x i8]* @main.t, i32 0, i32 0), i64 9, i32 1, i1 false)
  %13 = getelementptr inbounds [9 x i8]* %t, i32 0, i32 0
  %14 = call double @atof(i8* %13)
  store double %14, double* %ans, align 8
  %15 = load double* %ans, align 8
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), double %15)
  %17 = bitcast [11 x i8]* %u to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* getelementptr inbounds ([11 x i8]* @main.u, i32 0, i32 0), i64 11, i32 1, i1 false)
  %18 = getelementptr inbounds [11 x i8]* %u, i32 0, i32 0
  %19 = call double @atof(i8* %18)
  store double %19, double* %ans, align 8
  %20 = load double* %ans, align 8
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), double %20)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

declare i32 @printf(i8*, ...) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
