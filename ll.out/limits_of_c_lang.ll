; ModuleID = 'C-Programming-Examples/limits_of_c_lang.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"\0AThis Program Displays The Limits of Datatypes on this System.\0A\0A\00", align 1
@.str1 = private unnamed_addr constant [27 x i8] c"Bits in a Single Char: %d\0A\00", align 1
@.str2 = private unnamed_addr constant [46 x i8] c"Max Bytes in Multibyte Char (Any Locale): %d\0A\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"Char Min:\09\09%+d\0A\00", align 1
@.str5 = private unnamed_addr constant [16 x i8] c"Char Max:\09\09%+d\0A\00", align 1
@.str6 = private unnamed_addr constant [22 x i8] c"Signed Char Min:\09%+d\0A\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"Signed Char Max:\09%+d\0A\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"Unsigned Char Max:\09%+d\0A\00", align 1
@.str9 = private unnamed_addr constant [17 x i8] c"Short Min:\09\09%+d\0A\00", align 1
@.str10 = private unnamed_addr constant [17 x i8] c"Short Max:\09\09%+d\0A\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"Unsigned Short Max:\09%+d\0A\00", align 1
@.str12 = private unnamed_addr constant [20 x i8] c"Integer Min:\09\09%+ld\0A\00", align 1
@.str13 = private unnamed_addr constant [20 x i8] c"Integer Max:\09\09%+ld\0A\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"Unsigned Integer Max:\09%+ld\0A\00", align 1
@.str15 = private unnamed_addr constant [17 x i8] c"Long Min:\09\09%+ld\0A\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"Long Max:\09\09%+ld\0A\00", align 1
@.str17 = private unnamed_addr constant [26 x i8] c"Unsigned Long Max:\09+%llu\0A\00", align 1
@.str18 = private unnamed_addr constant [22 x i8] c"Long Long Min:\09\09%+ld\0A\00", align 1
@.str19 = private unnamed_addr constant [22 x i8] c"Long Long Max:\09\09%+ld\0A\00", align 1
@.str20 = private unnamed_addr constant [31 x i8] c"Unsigned Long Long Max: +%llu\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([65 x i8]* @.str, i32 0, i32 0))
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str1, i32 0, i32 0), i32 8)
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str2, i32 0, i32 0), i32 16)
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0), i32 -128)
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str5, i32 0, i32 0), i32 127)
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str6, i32 0, i32 0), i32 -128)
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str7, i32 0, i32 0), i32 127)
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str8, i32 0, i32 0), i32 255)
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str9, i32 0, i32 0), i32 -32768)
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str10, i32 0, i32 0), i32 32767)
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str11, i32 0, i32 0), i32 65535)
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str12, i32 0, i32 0), i32 -2147483648)
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str13, i32 0, i32 0), i32 2147483647)
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str14, i32 0, i32 0), i32 -1)
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str15, i32 0, i32 0), i64 -9223372036854775808)
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str16, i32 0, i32 0), i64 9223372036854775807)
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str17, i32 0, i32 0), i64 -1)
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str18, i32 0, i32 0), i64 -9223372036854775808)
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str19, i32 0, i32 0), i64 9223372036854775807)
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str20, i32 0, i32 0), i64 -1)
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
