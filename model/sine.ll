; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, %1, i32, %2, i64*, i64*, i64 }
%1 = type { i32, i32 }
%2 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@.str = private constant [87 x i8] c"Assert fail: (num_args == 4), fused_nn_dense_nn_bias_add_nn_relu: num_args should be 4\00", align 1
@.str.1 = private constant [162 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_dense_nn_bias_add_nn_relu: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [162 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_dense_nn_bias_add_nn_relu: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [162 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_nn_dense_nn_bias_add_nn_relu: Expect arg[2] to be pointer\00", align 1
@.str.4 = private constant [162 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_nn_dense_nn_bias_add_nn_relu: Expect arg[3] to be pointer\00", align 1
@.str.5 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 2\00", align 1
@.str.6 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.7 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint: (1 == int32(arg0.shape[0]))\00", align 1
@.str.8 = private constant [126 x i8] c"Assert fail: (16 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (16 == int32(arg0.shape[1]))\00", align 1
@.str.9 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (16 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.10 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8))\00", align 1
@.str.11 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg0, 0, 10)), Argument arg0.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg0, 0, 10))\00", align 1
@.str.12 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 2\00", align 1
@.str.13 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.14 = private constant [126 x i8] c"Assert fail: (16 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (16 == int32(arg1.shape[0]))\00", align 1
@.str.15 = private constant [126 x i8] c"Assert fail: (16 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (16 == int32(arg1.shape[1]))\00", align 1
@.str.16 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (16 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.17 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))\00", align 1
@.str.18 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))\00", align 1
@.str.19 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))\00", align 1
@.str.20 = private constant [85 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 1\00", align 1
@.str.21 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.22 = private constant [126 x i8] c"Assert fail: (16 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint: (16 == int32(arg2.shape[0]))\00", align 1
@.str.23 = private constant [87 x i8] c"Assert fail: (1 == int32(arg2.strides[0])), arg2.strides: expected to be compact array\00", align 1
@.str.24 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8))\00", align 1
@.str.25 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg2, 0, 10))\00", align 1
@.str.26 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg2, 0, 9))\00", align 1
@.str.27 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg3, 0, 4)), arg3.ndim is expected to equal 2\00", align 1
@.str.28 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg3, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg3, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg3, 0, 7) == (uint16)1)), arg3.dtype is expected to be float32\00", align 1
@.str.29 = private constant [124 x i8] c"Assert fail: (1 == int32(arg3.shape[0])), Argument arg3.shape[0] has an unsatisfied constraint: (1 == int32(arg3.shape[0]))\00", align 1
@.str.30 = private constant [126 x i8] c"Assert fail: (16 == int32(arg3.shape[1])), Argument arg3.shape[1] has an unsatisfied constraint: (16 == int32(arg3.shape[1]))\00", align 1
@.str.31 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg3.strides[1])) && (16 == int32(arg3.strides[0]))), arg3.strides: expected to be compact array\00", align 1
@.str.32 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg3, 0, 8)), Argument arg3.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg3, 0, 8))\00", align 1
@.str.33 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg3, 0, 10)), Argument arg3.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg3, 0, 10))\00", align 1
@.str.34 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg3, 0, 9)), Argument arg3.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg3, 0, 9))\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global i8* (i32, i32, i64, i32, i32)* null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global i32 (i32, i32, i8*)* null, align 8
@.str.35 = private constant [89 x i8] c"Assert fail: (num_args == 4), fused_nn_dense_nn_bias_add_nn_relu_1: num_args should be 4\00", align 1
@.str.36 = private constant [164 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_dense_nn_bias_add_nn_relu_1: Expect arg[0] to be pointer\00", align 1
@.str.37 = private constant [164 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_dense_nn_bias_add_nn_relu_1: Expect arg[1] to be pointer\00", align 1
@.str.38 = private constant [164 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_nn_dense_nn_bias_add_nn_relu_1: Expect arg[2] to be pointer\00", align 1
@.str.39 = private constant [164 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_nn_dense_nn_bias_add_nn_relu_1: Expect arg[3] to be pointer\00", align 1
@.str.40 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (1 == int32(arg0.shape[1]))\00", align 1
@.str.41 = private constant [122 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (1 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.42 = private constant [124 x i8] c"Assert fail: (1 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (1 == int32(arg1.shape[1]))\00", align 1
@.str.43 = private constant [122 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (1 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.44 = private constant [68 x i8] c"Assert fail: (num_args == 2), fused_reshape_1: num_args should be 2\00", align 1
@.str.45 = private constant [143 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_reshape_1: Expect arg[0] to be pointer\00", align 1
@.str.46 = private constant [143 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_reshape_1: Expect arg[1] to be pointer\00", align 1
@.str.47 = private constant [124 x i8] c"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (1 == int32(arg1.shape[0]))\00", align 1
@.str.48 = private constant [66 x i8] c"Assert fail: (num_args == 2), fused_reshape: num_args should be 2\00", align 1
@.str.49 = private constant [141 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_reshape: Expect arg[0] to be pointer\00", align 1
@.str.50 = private constant [141 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_reshape: Expect arg[1] to be pointer\00", align 1
@.str.51 = private constant [79 x i8] c"Assert fail: (num_args == 4), fused_nn_dense_nn_bias_add: num_args should be 4\00", align 1
@.str.52 = private constant [154 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_dense_nn_bias_add: Expect arg[0] to be pointer\00", align 1
@.str.53 = private constant [154 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_dense_nn_bias_add: Expect arg[1] to be pointer\00", align 1
@.str.54 = private constant [154 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_nn_dense_nn_bias_add: Expect arg[2] to be pointer\00", align 1
@.str.55 = private constant [154 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_nn_dense_nn_bias_add: Expect arg[3] to be pointer\00", align 1
@.str.56 = private constant [124 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint: (1 == int32(arg2.shape[0]))\00", align 1
@.str.57 = private constant [124 x i8] c"Assert fail: (1 == int32(arg3.shape[1])), Argument arg3.shape[1] has an unsatisfied constraint: (1 == int32(arg3.shape[1]))\00", align 1
@.str.58 = private constant [122 x i8] c"Assert fail: ((1 == int32(arg3.strides[1])) && (1 == int32(arg3.strides[0]))), arg3.strides: expected to be compact array\00", align 1
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @fused_nn_dense_nn_bias_add_nn_relu(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 4
  br i1 %6, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %7(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %0**
  %9 = load %0*, %0** %8, align 8
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !9
  %12 = getelementptr inbounds i8, i8* %0, i64 8
  %13 = bitcast i8* %12 to %0**
  %14 = load %0*, %0** %13, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 4
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !23
  %18 = getelementptr inbounds i8, i8* %0, i64 16
  %19 = bitcast i8* %18 to %0**
  %20 = load %0*, %0** %19, align 8
  %21 = getelementptr inbounds i8, i8* %1, i64 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !25
  %24 = getelementptr inbounds i8, i8* %0, i64 24
  %25 = bitcast i8* %24 to %0**
  %26 = load %0*, %0** %25, align 8
  %27 = getelementptr inbounds i8, i8* %1, i64 12
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4, !tbaa !28
  %30 = getelementptr inbounds %0, %0* %9, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %31, i64 128) ]
  %32 = getelementptr inbounds %0, %0* %9, i64 0, i32 4
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds %0, %0* %9, i64 0, i32 5
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %0, %0* %14, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %39, i64 128) ]
  %40 = getelementptr inbounds %0, %0* %14, i64 0, i32 4
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds %0, %0* %14, i64 0, i32 5
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds %0, %0* %20, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %45, i64 128) ]
  %46 = getelementptr inbounds %0, %0* %20, i64 0, i32 4
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds %0, %0* %20, i64 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds %0, %0* %26, i64 0, i32 0
  %51 = load i8*, i8** %50, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %51, i64 128) ]
  %52 = getelementptr inbounds %0, %0* %26, i64 0, i32 4
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds %0, %0* %26, i64 0, i32 5
  %55 = load i64*, i64** %54, align 8
  switch i32 %11, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %17, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %57 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %57(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.2, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  switch i32 %23, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ]

assert_fail5:                                     ; preds = %assert_end4
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  switch i32 %29, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ]

assert_fail7:                                     ; preds = %assert_end6
  %59 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %59(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %60 = getelementptr inbounds %0, %0* %9, i64 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %assert_end12, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %63 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %63(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end8
  %64 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 2
  %65 = load i16, i16* %64, align 2
  %66 = icmp eq i16 %65, 1
  %67 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 1
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, 32
  %70 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 0
  %71 = load i8, i8* %70, align 1
  %72 = icmp eq i8 %71, 2
  %73 = and i1 %69, %72
  %74 = and i1 %66, %73
  br i1 %74, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %75(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %76 = load i64, i64* %33, align 8, !tbaa !30
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %80 = getelementptr inbounds i64, i64* %33, i64 1
  %81 = load i64, i64* %80, align 8, !tbaa !44
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %82, 16
  br i1 %83, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %84(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq i64* %35, null
  br i1 %.not, label %if_end, label %if_then, !prof !46

if_then:                                          ; preds = %assert_end18
  %85 = load i64, i64* %35, align 8, !tbaa !47
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %86, 16
  %88 = getelementptr inbounds i64, i64* %35, i64 1
  %89 = load i64, i64* %88, align 8, !tbaa !61
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 1
  %92 = and i1 %87, %91
  br i1 %92, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %if_then, %assert_end18
  %93 = getelementptr inbounds %0, %0* %9, i64 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %96 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %96(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %97(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %98 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %101(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %102 = getelementptr inbounds %0, %0* %14, i64 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %assert_end28, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %105 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %105(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end24
  %106 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 2
  %107 = load i16, i16* %106, align 2
  %108 = icmp eq i16 %107, 1
  %109 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 1
  %110 = load i8, i8* %109, align 1
  %111 = icmp eq i8 %110, 32
  %112 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 0
  %113 = load i8, i8* %112, align 1
  %114 = icmp eq i8 %113, 2
  %115 = and i1 %111, %114
  %116 = and i1 %108, %115
  br i1 %116, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %118 = load i64, i64* %41, align 8, !tbaa !63
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %119, 16
  br i1 %120, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %122 = getelementptr inbounds i64, i64* %41, i64 1
  %123 = load i64, i64* %122, align 8, !tbaa !77
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, 16
  br i1 %125, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %126(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %.not83 = icmp eq i64* %43, null
  br i1 %.not83, label %if_end36, label %if_then35, !prof !46

if_then35:                                        ; preds = %assert_end34
  %127 = load i64, i64* %43, align 8, !tbaa !79
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %128, 16
  %130 = getelementptr inbounds i64, i64* %43, i64 1
  %131 = load i64, i64* %130, align 8, !tbaa !93
  %132 = trunc i64 %131 to i32
  %133 = icmp eq i32 %132, 1
  %134 = and i1 %129, %133
  br i1 %134, label %if_end36, label %assert_fail37, !prof !5

if_end36:                                         ; preds = %if_then35, %assert_end34
  %135 = getelementptr inbounds %0, %0* %14, i64 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %assert_end40, label %assert_fail39, !prof !5

assert_fail37:                                    ; preds = %if_then35
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_fail39:                                    ; preds = %if_end36
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %139(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %if_end36
  %140 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %143(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %144 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %37, %145
  br i1 %146, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %147 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %147(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %148 = getelementptr inbounds %0, %0* %20, i64 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %assert_end48, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %151 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %151(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end44
  %152 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 2
  %153 = load i16, i16* %152, align 2
  %154 = icmp eq i16 %153, 1
  %155 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 1
  %156 = load i8, i8* %155, align 1
  %157 = icmp eq i8 %156, 32
  %158 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 0
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 2
  %161 = and i1 %157, %160
  %162 = and i1 %154, %161
  br i1 %162, label %assert_end50, label %assert_fail49, !prof !5

assert_fail49:                                    ; preds = %assert_end48
  %163 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %163(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end50:                                     ; preds = %assert_end48
  %164 = load i64, i64* %47, align 8, !tbaa !95
  %165 = trunc i64 %164 to i32
  %166 = icmp eq i32 %165, 16
  br i1 %166, label %assert_end52, label %assert_fail51, !prof !5

assert_fail51:                                    ; preds = %assert_end50
  %167 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %167(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %assert_end50
  %.not84 = icmp eq i64* %49, null
  br i1 %.not84, label %if_end54, label %if_then53, !prof !46

if_then53:                                        ; preds = %assert_end52
  %168 = load i64, i64* %49, align 8, !tbaa !109
  %169 = trunc i64 %168 to i32
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %if_end54, label %assert_fail55, !prof !5

if_end54:                                         ; preds = %if_then53, %assert_end52
  %171 = getelementptr inbounds %0, %0* %20, i64 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %assert_end58, label %assert_fail57, !prof !5

assert_fail55:                                    ; preds = %if_then53
  %174 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %174(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.23, i64 0, i64 0))
  ret i32 -1

assert_fail57:                                    ; preds = %if_end54
  %175 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %175(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.24, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %if_end54
  %176 = getelementptr inbounds %0, %0* %20, i64 0, i32 1, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %assert_end60, label %assert_fail59, !prof !5

assert_fail59:                                    ; preds = %assert_end58
  %179 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %179(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_end60:                                     ; preds = %assert_end58
  %180 = getelementptr inbounds %0, %0* %20, i64 0, i32 1, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %37, %181
  br i1 %182, label %assert_end62, label %assert_fail61, !prof !5

assert_fail61:                                    ; preds = %assert_end60
  %183 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %183(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %assert_end60
  %184 = getelementptr inbounds %0, %0* %26, i64 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %assert_end66, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %187 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %187(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end66:                                     ; preds = %assert_end62
  %188 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 2
  %189 = load i16, i16* %188, align 2
  %190 = icmp eq i16 %189, 1
  %191 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 1
  %192 = load i8, i8* %191, align 1
  %193 = icmp eq i8 %192, 32
  %194 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 0
  %195 = load i8, i8* %194, align 1
  %196 = icmp eq i8 %195, 2
  %197 = and i1 %193, %196
  %198 = and i1 %190, %197
  br i1 %198, label %assert_end68, label %assert_fail67, !prof !5

assert_fail67:                                    ; preds = %assert_end66
  %199 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %199(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end68:                                     ; preds = %assert_end66
  %200 = load i64, i64* %53, align 8, !tbaa !123
  %201 = trunc i64 %200 to i32
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %assert_end70, label %assert_fail69, !prof !5

assert_fail69:                                    ; preds = %assert_end68
  %203 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %203(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.29, i64 0, i64 0))
  ret i32 -1

assert_end70:                                     ; preds = %assert_end68
  %204 = getelementptr inbounds i64, i64* %53, i64 1
  %205 = load i64, i64* %204, align 8, !tbaa !137
  %206 = trunc i64 %205 to i32
  %207 = icmp eq i32 %206, 16
  br i1 %207, label %assert_end72, label %assert_fail71, !prof !5

assert_fail71:                                    ; preds = %assert_end70
  %208 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %208(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.30, i64 0, i64 0))
  ret i32 -1

assert_end72:                                     ; preds = %assert_end70
  %.not85 = icmp eq i64* %55, null
  br i1 %.not85, label %if_end74, label %if_then73, !prof !46

if_then73:                                        ; preds = %assert_end72
  %209 = load i64, i64* %55, align 8, !tbaa !139
  %210 = trunc i64 %209 to i32
  %211 = icmp eq i32 %210, 16
  %212 = getelementptr inbounds i64, i64* %55, i64 1
  %213 = load i64, i64* %212, align 8, !tbaa !153
  %214 = trunc i64 %213 to i32
  %215 = icmp eq i32 %214, 1
  %216 = and i1 %211, %215
  br i1 %216, label %if_end74, label %assert_fail75, !prof !5

if_end74:                                         ; preds = %if_then73, %assert_end72
  %217 = getelementptr inbounds %0, %0* %26, i64 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %assert_end78, label %assert_fail77, !prof !5

assert_fail75:                                    ; preds = %if_then73
  %220 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %220(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.31, i64 0, i64 0))
  ret i32 -1

assert_fail77:                                    ; preds = %if_end74
  %221 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %221(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.32, i64 0, i64 0))
  ret i32 -1

assert_end78:                                     ; preds = %if_end74
  %222 = getelementptr inbounds %0, %0* %26, i64 0, i32 1, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %assert_end80, label %assert_fail79, !prof !5

assert_fail79:                                    ; preds = %assert_end78
  %225 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %225(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.33, i64 0, i64 0))
  ret i32 -1

assert_end80:                                     ; preds = %assert_end78
  %226 = getelementptr inbounds %0, %0* %26, i64 0, i32 1, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %37, %227
  br i1 %228, label %assert_end82, label %assert_fail81, !prof !5

assert_fail81:                                    ; preds = %assert_end80
  %229 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %229(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.34, i64 0, i64 0))
  ret i32 -1

assert_end82:                                     ; preds = %assert_end80
  %230 = tail call fastcc i32 @fused_nn_dense_nn_bias_add_nn_relu_compute_(i8* %39, i8* %31, i8* %51, i8* %45, i32 %37)
  ret i32 %230
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #0

; Function Attrs: noinline
define private fastcc i32 @fused_nn_dense_nn_bias_add_nn_relu_compute_(i8* noalias nocapture readonly align 128 %0, i8* noalias nocapture readonly align 128 %1, i8* noalias nocapture align 128 %2, i8* noalias nocapture readonly align 128 %3, i32 %4) unnamed_addr #1 {
entry:
  %5 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %6 = tail call i8* %5(i32 1, i32 %4, i64 1024, i32 2, i32 32)
  call void @llvm.assume(i1 true) [ "align"(i8* %6, i64 128) ]
  %7 = icmp eq i8* %6, null
  br i1 %7, label %if_then, label %for_begin.preheader, !prof !5

for_begin.preheader:                              ; preds = %entry
  %8 = bitcast i8* %0 to float*
  %9 = bitcast i8* %6 to float*
  br label %for_begin1.preheader

if_then:                                          ; preds = %entry
  ret i32 -1

for_begin1.preheader:                             ; preds = %for_begin.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin.preheader ], [ %indvars.iv.next, %for_begin1.preheader ]
  %10 = shl nsw i64 %indvars.iv, 4
  %11 = getelementptr inbounds float, float* %8, i64 %indvars.iv
  %12 = load float, float* %11, align 4, !tbaa !155
  %13 = getelementptr inbounds float, float* %9, i64 %10
  store float %12, float* %13, align 64, !tbaa !158
  %14 = or i64 %10, 1
  %15 = add nuw nsw i64 %indvars.iv, 16
  %16 = getelementptr inbounds float, float* %8, i64 %15
  %17 = load float, float* %16, align 4, !tbaa !155
  %18 = getelementptr inbounds float, float* %9, i64 %14
  store float %17, float* %18, align 4, !tbaa !158
  %19 = or i64 %10, 2
  %20 = add nuw nsw i64 %indvars.iv, 32
  %21 = getelementptr inbounds float, float* %8, i64 %20
  %22 = load float, float* %21, align 4, !tbaa !155
  %23 = getelementptr inbounds float, float* %9, i64 %19
  store float %22, float* %23, align 8, !tbaa !158
  %24 = or i64 %10, 3
  %25 = add nuw nsw i64 %indvars.iv, 48
  %26 = getelementptr inbounds float, float* %8, i64 %25
  %27 = load float, float* %26, align 4, !tbaa !155
  %28 = getelementptr inbounds float, float* %9, i64 %24
  store float %27, float* %28, align 4, !tbaa !158
  %29 = or i64 %10, 4
  %30 = add nuw nsw i64 %indvars.iv, 64
  %31 = getelementptr inbounds float, float* %8, i64 %30
  %32 = load float, float* %31, align 4, !tbaa !155
  %33 = getelementptr inbounds float, float* %9, i64 %29
  store float %32, float* %33, align 16, !tbaa !158
  %34 = or i64 %10, 5
  %35 = add nuw nsw i64 %indvars.iv, 80
  %36 = getelementptr inbounds float, float* %8, i64 %35
  %37 = load float, float* %36, align 4, !tbaa !155
  %38 = getelementptr inbounds float, float* %9, i64 %34
  store float %37, float* %38, align 4, !tbaa !158
  %39 = or i64 %10, 6
  %40 = add nuw nsw i64 %indvars.iv, 96
  %41 = getelementptr inbounds float, float* %8, i64 %40
  %42 = load float, float* %41, align 4, !tbaa !155
  %43 = getelementptr inbounds float, float* %9, i64 %39
  store float %42, float* %43, align 8, !tbaa !158
  %44 = or i64 %10, 7
  %45 = add nuw nsw i64 %indvars.iv, 112
  %46 = getelementptr inbounds float, float* %8, i64 %45
  %47 = load float, float* %46, align 4, !tbaa !155
  %48 = getelementptr inbounds float, float* %9, i64 %44
  store float %47, float* %48, align 4, !tbaa !158
  %49 = or i64 %10, 8
  %50 = add nuw nsw i64 %indvars.iv, 128
  %51 = getelementptr inbounds float, float* %8, i64 %50
  %52 = load float, float* %51, align 4, !tbaa !155
  %53 = getelementptr inbounds float, float* %9, i64 %49
  store float %52, float* %53, align 32, !tbaa !158
  %54 = or i64 %10, 9
  %55 = add nuw nsw i64 %indvars.iv, 144
  %56 = getelementptr inbounds float, float* %8, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !155
  %58 = getelementptr inbounds float, float* %9, i64 %54
  store float %57, float* %58, align 4, !tbaa !158
  %59 = or i64 %10, 10
  %60 = add nuw nsw i64 %indvars.iv, 160
  %61 = getelementptr inbounds float, float* %8, i64 %60
  %62 = load float, float* %61, align 4, !tbaa !155
  %63 = getelementptr inbounds float, float* %9, i64 %59
  store float %62, float* %63, align 8, !tbaa !158
  %64 = or i64 %10, 11
  %65 = add nuw nsw i64 %indvars.iv, 176
  %66 = getelementptr inbounds float, float* %8, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !155
  %68 = getelementptr inbounds float, float* %9, i64 %64
  store float %67, float* %68, align 4, !tbaa !158
  %69 = or i64 %10, 12
  %70 = add nuw nsw i64 %indvars.iv, 192
  %71 = getelementptr inbounds float, float* %8, i64 %70
  %72 = load float, float* %71, align 4, !tbaa !155
  %73 = getelementptr inbounds float, float* %9, i64 %69
  store float %72, float* %73, align 16, !tbaa !158
  %74 = or i64 %10, 13
  %75 = add nuw nsw i64 %indvars.iv, 208
  %76 = getelementptr inbounds float, float* %8, i64 %75
  %77 = load float, float* %76, align 4, !tbaa !155
  %78 = getelementptr inbounds float, float* %9, i64 %74
  store float %77, float* %78, align 4, !tbaa !158
  %79 = or i64 %10, 14
  %80 = add nuw nsw i64 %indvars.iv, 224
  %81 = getelementptr inbounds float, float* %8, i64 %80
  %82 = load float, float* %81, align 4, !tbaa !155
  %83 = getelementptr inbounds float, float* %9, i64 %79
  store float %82, float* %83, align 8, !tbaa !158
  %84 = or i64 %10, 15
  %85 = add nuw nsw i64 %indvars.iv, 240
  %86 = getelementptr inbounds float, float* %8, i64 %85
  %87 = load float, float* %86, align 4, !tbaa !155
  %88 = getelementptr inbounds float, float* %9, i64 %84
  store float %87, float* %88, align 4, !tbaa !158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for_begin4.preheader, label %for_begin1.preheader, !prof !46

for_begin4.preheader:                             ; preds = %for_begin1.preheader
  %89 = bitcast i8* %1 to float*
  %90 = load float, float* %89, align 128, !tbaa !161
  %91 = insertelement <16 x float> undef, float %90, i32 0
  %92 = shufflevector <16 x float> %91, <16 x float> undef, <16 x i32> zeroinitializer
  %93 = bitcast i8* %6 to <16 x float>*
  %94 = load <16 x float>, <16 x float>* %93, align 128, !tbaa !158
  %95 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %92, <16 x float> %94, <16 x float> zeroinitializer)
  %96 = getelementptr inbounds i8, i8* %1, i64 4
  %97 = bitcast i8* %96 to float*
  %98 = load float, float* %97, align 4, !tbaa !161
  %99 = insertelement <16 x float> undef, float %98, i32 0
  %100 = shufflevector <16 x float> %99, <16 x float> undef, <16 x i32> zeroinitializer
  %101 = getelementptr inbounds i8, i8* %6, i64 64
  %102 = bitcast i8* %101 to <16 x float>*
  %103 = load <16 x float>, <16 x float>* %102, align 64, !tbaa !158
  %104 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %100, <16 x float> %103, <16 x float> %95)
  %105 = getelementptr inbounds i8, i8* %1, i64 8
  %106 = bitcast i8* %105 to float*
  %107 = load float, float* %106, align 8, !tbaa !161
  %108 = insertelement <16 x float> undef, float %107, i32 0
  %109 = shufflevector <16 x float> %108, <16 x float> undef, <16 x i32> zeroinitializer
  %110 = getelementptr inbounds i8, i8* %6, i64 128
  %111 = bitcast i8* %110 to <16 x float>*
  %112 = load <16 x float>, <16 x float>* %111, align 128, !tbaa !158
  %113 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %109, <16 x float> %112, <16 x float> %104)
  %114 = getelementptr inbounds i8, i8* %1, i64 12
  %115 = bitcast i8* %114 to float*
  %116 = load float, float* %115, align 4, !tbaa !161
  %117 = insertelement <16 x float> undef, float %116, i32 0
  %118 = shufflevector <16 x float> %117, <16 x float> undef, <16 x i32> zeroinitializer
  %119 = getelementptr inbounds i8, i8* %6, i64 192
  %120 = bitcast i8* %119 to <16 x float>*
  %121 = load <16 x float>, <16 x float>* %120, align 64, !tbaa !158
  %122 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %118, <16 x float> %121, <16 x float> %113)
  %123 = getelementptr inbounds i8, i8* %1, i64 16
  %124 = bitcast i8* %123 to float*
  %125 = load float, float* %124, align 16, !tbaa !161
  %126 = insertelement <16 x float> undef, float %125, i32 0
  %127 = shufflevector <16 x float> %126, <16 x float> undef, <16 x i32> zeroinitializer
  %128 = getelementptr inbounds i8, i8* %6, i64 256
  %129 = bitcast i8* %128 to <16 x float>*
  %130 = load <16 x float>, <16 x float>* %129, align 128, !tbaa !158
  %131 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %127, <16 x float> %130, <16 x float> %122)
  %132 = getelementptr inbounds i8, i8* %1, i64 20
  %133 = bitcast i8* %132 to float*
  %134 = load float, float* %133, align 4, !tbaa !161
  %135 = insertelement <16 x float> undef, float %134, i32 0
  %136 = shufflevector <16 x float> %135, <16 x float> undef, <16 x i32> zeroinitializer
  %137 = getelementptr inbounds i8, i8* %6, i64 320
  %138 = bitcast i8* %137 to <16 x float>*
  %139 = load <16 x float>, <16 x float>* %138, align 64, !tbaa !158
  %140 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %136, <16 x float> %139, <16 x float> %131)
  %141 = getelementptr inbounds i8, i8* %1, i64 24
  %142 = bitcast i8* %141 to float*
  %143 = load float, float* %142, align 8, !tbaa !161
  %144 = insertelement <16 x float> undef, float %143, i32 0
  %145 = shufflevector <16 x float> %144, <16 x float> undef, <16 x i32> zeroinitializer
  %146 = getelementptr inbounds i8, i8* %6, i64 384
  %147 = bitcast i8* %146 to <16 x float>*
  %148 = load <16 x float>, <16 x float>* %147, align 128, !tbaa !158
  %149 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %145, <16 x float> %148, <16 x float> %140)
  %150 = getelementptr inbounds i8, i8* %1, i64 28
  %151 = bitcast i8* %150 to float*
  %152 = load float, float* %151, align 4, !tbaa !161
  %153 = insertelement <16 x float> undef, float %152, i32 0
  %154 = shufflevector <16 x float> %153, <16 x float> undef, <16 x i32> zeroinitializer
  %155 = getelementptr inbounds i8, i8* %6, i64 448
  %156 = bitcast i8* %155 to <16 x float>*
  %157 = load <16 x float>, <16 x float>* %156, align 64, !tbaa !158
  %158 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %154, <16 x float> %157, <16 x float> %149)
  %159 = getelementptr inbounds i8, i8* %1, i64 32
  %160 = bitcast i8* %159 to float*
  %161 = load float, float* %160, align 32, !tbaa !161
  %162 = insertelement <16 x float> undef, float %161, i32 0
  %163 = shufflevector <16 x float> %162, <16 x float> undef, <16 x i32> zeroinitializer
  %164 = getelementptr inbounds i8, i8* %6, i64 512
  %165 = bitcast i8* %164 to <16 x float>*
  %166 = load <16 x float>, <16 x float>* %165, align 128, !tbaa !158
  %167 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %163, <16 x float> %166, <16 x float> %158)
  %168 = getelementptr inbounds i8, i8* %1, i64 36
  %169 = bitcast i8* %168 to float*
  %170 = load float, float* %169, align 4, !tbaa !161
  %171 = insertelement <16 x float> undef, float %170, i32 0
  %172 = shufflevector <16 x float> %171, <16 x float> undef, <16 x i32> zeroinitializer
  %173 = getelementptr inbounds i8, i8* %6, i64 576
  %174 = bitcast i8* %173 to <16 x float>*
  %175 = load <16 x float>, <16 x float>* %174, align 64, !tbaa !158
  %176 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %172, <16 x float> %175, <16 x float> %167)
  %177 = getelementptr inbounds i8, i8* %1, i64 40
  %178 = bitcast i8* %177 to float*
  %179 = load float, float* %178, align 8, !tbaa !161
  %180 = insertelement <16 x float> undef, float %179, i32 0
  %181 = shufflevector <16 x float> %180, <16 x float> undef, <16 x i32> zeroinitializer
  %182 = getelementptr inbounds i8, i8* %6, i64 640
  %183 = bitcast i8* %182 to <16 x float>*
  %184 = load <16 x float>, <16 x float>* %183, align 128, !tbaa !158
  %185 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %181, <16 x float> %184, <16 x float> %176)
  %186 = getelementptr inbounds i8, i8* %1, i64 44
  %187 = bitcast i8* %186 to float*
  %188 = load float, float* %187, align 4, !tbaa !161
  %189 = insertelement <16 x float> undef, float %188, i32 0
  %190 = shufflevector <16 x float> %189, <16 x float> undef, <16 x i32> zeroinitializer
  %191 = getelementptr inbounds i8, i8* %6, i64 704
  %192 = bitcast i8* %191 to <16 x float>*
  %193 = load <16 x float>, <16 x float>* %192, align 64, !tbaa !158
  %194 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %190, <16 x float> %193, <16 x float> %185)
  %195 = getelementptr inbounds i8, i8* %1, i64 48
  %196 = bitcast i8* %195 to float*
  %197 = load float, float* %196, align 16, !tbaa !161
  %198 = insertelement <16 x float> undef, float %197, i32 0
  %199 = shufflevector <16 x float> %198, <16 x float> undef, <16 x i32> zeroinitializer
  %200 = getelementptr inbounds i8, i8* %6, i64 768
  %201 = bitcast i8* %200 to <16 x float>*
  %202 = load <16 x float>, <16 x float>* %201, align 128, !tbaa !158
  %203 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %199, <16 x float> %202, <16 x float> %194)
  %204 = getelementptr inbounds i8, i8* %1, i64 52
  %205 = bitcast i8* %204 to float*
  %206 = load float, float* %205, align 4, !tbaa !161
  %207 = insertelement <16 x float> undef, float %206, i32 0
  %208 = shufflevector <16 x float> %207, <16 x float> undef, <16 x i32> zeroinitializer
  %209 = getelementptr inbounds i8, i8* %6, i64 832
  %210 = bitcast i8* %209 to <16 x float>*
  %211 = load <16 x float>, <16 x float>* %210, align 64, !tbaa !158
  %212 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %208, <16 x float> %211, <16 x float> %203)
  %213 = getelementptr inbounds i8, i8* %1, i64 56
  %214 = bitcast i8* %213 to float*
  %215 = load float, float* %214, align 8, !tbaa !161
  %216 = insertelement <16 x float> undef, float %215, i32 0
  %217 = shufflevector <16 x float> %216, <16 x float> undef, <16 x i32> zeroinitializer
  %218 = getelementptr inbounds i8, i8* %6, i64 896
  %219 = bitcast i8* %218 to <16 x float>*
  %220 = load <16 x float>, <16 x float>* %219, align 128, !tbaa !158
  %221 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %217, <16 x float> %220, <16 x float> %212)
  %222 = getelementptr inbounds i8, i8* %1, i64 60
  %223 = bitcast i8* %222 to float*
  %224 = load float, float* %223, align 4, !tbaa !161
  %225 = insertelement <16 x float> undef, float %224, i32 0
  %226 = shufflevector <16 x float> %225, <16 x float> undef, <16 x i32> zeroinitializer
  %227 = getelementptr inbounds i8, i8* %6, i64 960
  %228 = bitcast i8* %227 to <16 x float>*
  %229 = load <16 x float>, <16 x float>* %228, align 64, !tbaa !158
  %230 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %226, <16 x float> %229, <16 x float> %221)
  %231 = bitcast i8* %3 to <16 x float>*
  %232 = load <16 x float>, <16 x float>* %231, align 128, !tbaa !164
  %233 = fadd <16 x float> %230, %232
  %234 = fcmp ogt <16 x float> %233, zeroinitializer
  %235 = select <16 x i1> %234, <16 x float> %233, <16 x float> zeroinitializer
  %236 = bitcast i8* %2 to <16 x float>*
  store <16 x float> %235, <16 x float>* %236, align 128, !tbaa !174
  %237 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %238 = tail call i32 %237(i32 1, i32 %4, i8* nonnull %6)
  %.not = icmp ne i32 %238, 0
  %spec.select = sext i1 %.not to i32
  ret i32 %spec.select
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

define dllexport i32 @fused_nn_dense_nn_bias_add_nn_relu_1(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 4
  br i1 %6, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %7(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.35, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %0**
  %9 = load %0*, %0** %8, align 8
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !184
  %12 = getelementptr inbounds i8, i8* %0, i64 8
  %13 = bitcast i8* %12 to %0**
  %14 = load %0*, %0** %13, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 4
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !198
  %18 = getelementptr inbounds i8, i8* %0, i64 16
  %19 = bitcast i8* %18 to %0**
  %20 = load %0*, %0** %19, align 8
  %21 = getelementptr inbounds i8, i8* %1, i64 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !200
  %24 = getelementptr inbounds i8, i8* %0, i64 24
  %25 = bitcast i8* %24 to %0**
  %26 = load %0*, %0** %25, align 8
  %27 = getelementptr inbounds i8, i8* %1, i64 12
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4, !tbaa !203
  %30 = getelementptr inbounds %0, %0* %9, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %31, i64 128) ]
  %32 = getelementptr inbounds %0, %0* %9, i64 0, i32 4
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds %0, %0* %9, i64 0, i32 5
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %0, %0* %14, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %39, i64 128) ]
  %40 = getelementptr inbounds %0, %0* %14, i64 0, i32 4
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds %0, %0* %14, i64 0, i32 5
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds %0, %0* %20, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %45, i64 128) ]
  %46 = getelementptr inbounds %0, %0* %20, i64 0, i32 4
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds %0, %0* %20, i64 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds %0, %0* %26, i64 0, i32 0
  %51 = load i8*, i8** %50, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %51, i64 128) ]
  %52 = getelementptr inbounds %0, %0* %26, i64 0, i32 4
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds %0, %0* %26, i64 0, i32 5
  %55 = load i64*, i64** %54, align 8
  switch i32 %11, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.36, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %17, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %57 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %57(i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.37, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  switch i32 %23, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ]

assert_fail5:                                     ; preds = %assert_end4
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.38, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  switch i32 %29, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ]

assert_fail7:                                     ; preds = %assert_end6
  %59 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %59(i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.39, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %60 = getelementptr inbounds %0, %0* %9, i64 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %assert_end12, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %63 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %63(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end8
  %64 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 2
  %65 = load i16, i16* %64, align 2
  %66 = icmp eq i16 %65, 1
  %67 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 1
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, 32
  %70 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 0
  %71 = load i8, i8* %70, align 1
  %72 = icmp eq i8 %71, 2
  %73 = and i1 %69, %72
  %74 = and i1 %66, %73
  br i1 %74, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %75(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %76 = load i64, i64* %33, align 8, !tbaa !205
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %80 = getelementptr inbounds i64, i64* %33, i64 1
  %81 = load i64, i64* %80, align 8, !tbaa !219
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %84(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.40, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq i64* %35, null
  br i1 %.not, label %if_end, label %if_then, !prof !46

if_then:                                          ; preds = %assert_end18
  %85 = load i64, i64* %35, align 8, !tbaa !221
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %86, 1
  %88 = getelementptr inbounds i64, i64* %35, i64 1
  %89 = load i64, i64* %88, align 8, !tbaa !235
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 1
  %92 = and i1 %87, %91
  br i1 %92, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %if_then, %assert_end18
  %93 = getelementptr inbounds %0, %0* %9, i64 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %96 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %96(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.41, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %97(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %98 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %101(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %102 = getelementptr inbounds %0, %0* %14, i64 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %assert_end28, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %105 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %105(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end24
  %106 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 2
  %107 = load i16, i16* %106, align 2
  %108 = icmp eq i16 %107, 1
  %109 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 1
  %110 = load i8, i8* %109, align 1
  %111 = icmp eq i8 %110, 32
  %112 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 0
  %113 = load i8, i8* %112, align 1
  %114 = icmp eq i8 %113, 2
  %115 = and i1 %111, %114
  %116 = and i1 %108, %115
  br i1 %116, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %118 = load i64, i64* %41, align 8, !tbaa !237
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %119, 16
  br i1 %120, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %122 = getelementptr inbounds i64, i64* %41, i64 1
  %123 = load i64, i64* %122, align 8, !tbaa !251
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %126(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.42, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %.not83 = icmp eq i64* %43, null
  br i1 %.not83, label %if_end36, label %if_then35, !prof !46

if_then35:                                        ; preds = %assert_end34
  %127 = load i64, i64* %43, align 8, !tbaa !253
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %128, 1
  %130 = getelementptr inbounds i64, i64* %43, i64 1
  %131 = load i64, i64* %130, align 8, !tbaa !267
  %132 = trunc i64 %131 to i32
  %133 = icmp eq i32 %132, 1
  %134 = and i1 %129, %133
  br i1 %134, label %if_end36, label %assert_fail37, !prof !5

if_end36:                                         ; preds = %if_then35, %assert_end34
  %135 = getelementptr inbounds %0, %0* %14, i64 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %assert_end40, label %assert_fail39, !prof !5

assert_fail37:                                    ; preds = %if_then35
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.43, i64 0, i64 0))
  ret i32 -1

assert_fail39:                                    ; preds = %if_end36
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %139(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %if_end36
  %140 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %143(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %144 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %37, %145
  br i1 %146, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %147 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %147(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %148 = getelementptr inbounds %0, %0* %20, i64 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %assert_end48, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %151 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %151(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end44
  %152 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 2
  %153 = load i16, i16* %152, align 2
  %154 = icmp eq i16 %153, 1
  %155 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 1
  %156 = load i8, i8* %155, align 1
  %157 = icmp eq i8 %156, 32
  %158 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 0
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 2
  %161 = and i1 %157, %160
  %162 = and i1 %154, %161
  br i1 %162, label %assert_end50, label %assert_fail49, !prof !5

assert_fail49:                                    ; preds = %assert_end48
  %163 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %163(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end50:                                     ; preds = %assert_end48
  %164 = load i64, i64* %47, align 8, !tbaa !269
  %165 = trunc i64 %164 to i32
  %166 = icmp eq i32 %165, 16
  br i1 %166, label %assert_end52, label %assert_fail51, !prof !5

assert_fail51:                                    ; preds = %assert_end50
  %167 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %167(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %assert_end50
  %.not84 = icmp eq i64* %49, null
  br i1 %.not84, label %if_end54, label %if_then53, !prof !46

if_then53:                                        ; preds = %assert_end52
  %168 = load i64, i64* %49, align 8, !tbaa !283
  %169 = trunc i64 %168 to i32
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %if_end54, label %assert_fail55, !prof !5

if_end54:                                         ; preds = %if_then53, %assert_end52
  %171 = getelementptr inbounds %0, %0* %20, i64 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %assert_end58, label %assert_fail57, !prof !5

assert_fail55:                                    ; preds = %if_then53
  %174 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %174(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.23, i64 0, i64 0))
  ret i32 -1

assert_fail57:                                    ; preds = %if_end54
  %175 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %175(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.24, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %if_end54
  %176 = getelementptr inbounds %0, %0* %20, i64 0, i32 1, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %assert_end60, label %assert_fail59, !prof !5

assert_fail59:                                    ; preds = %assert_end58
  %179 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %179(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_end60:                                     ; preds = %assert_end58
  %180 = getelementptr inbounds %0, %0* %20, i64 0, i32 1, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %37, %181
  br i1 %182, label %assert_end62, label %assert_fail61, !prof !5

assert_fail61:                                    ; preds = %assert_end60
  %183 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %183(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %assert_end60
  %184 = getelementptr inbounds %0, %0* %26, i64 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %assert_end66, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %187 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %187(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end66:                                     ; preds = %assert_end62
  %188 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 2
  %189 = load i16, i16* %188, align 2
  %190 = icmp eq i16 %189, 1
  %191 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 1
  %192 = load i8, i8* %191, align 1
  %193 = icmp eq i8 %192, 32
  %194 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 0
  %195 = load i8, i8* %194, align 1
  %196 = icmp eq i8 %195, 2
  %197 = and i1 %193, %196
  %198 = and i1 %190, %197
  br i1 %198, label %assert_end68, label %assert_fail67, !prof !5

assert_fail67:                                    ; preds = %assert_end66
  %199 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %199(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end68:                                     ; preds = %assert_end66
  %200 = load i64, i64* %53, align 8, !tbaa !297
  %201 = trunc i64 %200 to i32
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %assert_end70, label %assert_fail69, !prof !5

assert_fail69:                                    ; preds = %assert_end68
  %203 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %203(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.29, i64 0, i64 0))
  ret i32 -1

assert_end70:                                     ; preds = %assert_end68
  %204 = getelementptr inbounds i64, i64* %53, i64 1
  %205 = load i64, i64* %204, align 8, !tbaa !311
  %206 = trunc i64 %205 to i32
  %207 = icmp eq i32 %206, 16
  br i1 %207, label %assert_end72, label %assert_fail71, !prof !5

assert_fail71:                                    ; preds = %assert_end70
  %208 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %208(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.30, i64 0, i64 0))
  ret i32 -1

assert_end72:                                     ; preds = %assert_end70
  %.not85 = icmp eq i64* %55, null
  br i1 %.not85, label %if_end74, label %if_then73, !prof !46

if_then73:                                        ; preds = %assert_end72
  %209 = load i64, i64* %55, align 8, !tbaa !313
  %210 = trunc i64 %209 to i32
  %211 = icmp eq i32 %210, 16
  %212 = getelementptr inbounds i64, i64* %55, i64 1
  %213 = load i64, i64* %212, align 8, !tbaa !327
  %214 = trunc i64 %213 to i32
  %215 = icmp eq i32 %214, 1
  %216 = and i1 %211, %215
  br i1 %216, label %if_end74, label %assert_fail75, !prof !5

if_end74:                                         ; preds = %if_then73, %assert_end72
  %217 = getelementptr inbounds %0, %0* %26, i64 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %assert_end78, label %assert_fail77, !prof !5

assert_fail75:                                    ; preds = %if_then73
  %220 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %220(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.31, i64 0, i64 0))
  ret i32 -1

assert_fail77:                                    ; preds = %if_end74
  %221 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %221(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.32, i64 0, i64 0))
  ret i32 -1

assert_end78:                                     ; preds = %if_end74
  %222 = getelementptr inbounds %0, %0* %26, i64 0, i32 1, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %assert_end80, label %assert_fail79, !prof !5

assert_fail79:                                    ; preds = %assert_end78
  %225 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %225(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.33, i64 0, i64 0))
  ret i32 -1

assert_end80:                                     ; preds = %assert_end78
  %226 = getelementptr inbounds %0, %0* %26, i64 0, i32 1, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %37, %227
  br i1 %228, label %assert_end82, label %assert_fail81, !prof !5

assert_fail81:                                    ; preds = %assert_end80
  %229 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %229(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.34, i64 0, i64 0))
  ret i32 -1

assert_end82:                                     ; preds = %assert_end80
  tail call fastcc void @fused_nn_dense_nn_bias_add_nn_relu_1_compute_(i8* %39, i8* %31, i8* %51, i8* %45)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind
define private fastcc void @fused_nn_dense_nn_bias_add_nn_relu_1_compute_(i8* noalias nocapture readonly align 128 %0, i8* noalias nocapture readonly align 128 %1, i8* noalias nocapture align 128 %2, i8* noalias nocapture readonly align 128 %3) unnamed_addr #3 {
entry:
  %.0..sroa_cast = bitcast i8* %0 to <16 x float>*
  %.0.copyload = load <16 x float>, <16 x float>* %.0..sroa_cast, align 128
  %4 = bitcast i8* %1 to float*
  %5 = load float, float* %4, align 128, !tbaa !329
  %6 = insertelement <16 x float> undef, float %5, i32 0
  %7 = shufflevector <16 x float> %6, <16 x float> undef, <16 x i32> zeroinitializer
  %8 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %7, <16 x float> %.0.copyload, <16 x float> zeroinitializer)
  %9 = bitcast i8* %3 to <16 x float>*
  %10 = load <16 x float>, <16 x float>* %9, align 128, !tbaa !343
  %11 = fadd <16 x float> %10, %8
  %12 = fcmp ogt <16 x float> %11, zeroinitializer
  %13 = select <16 x i1> %12, <16 x float> %11, <16 x float> zeroinitializer
  %14 = bitcast i8* %2 to <16 x float>*
  store <16 x float> %13, <16 x float>* %14, align 128, !tbaa !353
  ret void
}

define dllexport i32 @fused_reshape_1(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %7(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.44, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %0**
  %9 = load %0*, %0** %8, align 8
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !363
  %12 = getelementptr inbounds i8, i8* %0, i64 8
  %13 = bitcast i8* %12 to %0**
  %14 = load %0*, %0** %13, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 4
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !377
  %18 = getelementptr inbounds %0, %0* %9, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %19, i64 128) ]
  %20 = getelementptr inbounds %0, %0* %9, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds %0, %0* %9, i64 0, i32 5
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %0, %0* %14, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %27, i64 128) ]
  %28 = getelementptr inbounds %0, %0* %14, i64 0, i32 4
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds %0, %0* %14, i64 0, i32 5
  %31 = load i64*, i64** %30, align 8
  switch i32 %11, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %32 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %32(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.45, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %17, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %33 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %33(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.46, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %34 = getelementptr inbounds %0, %0* %9, i64 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %assert_end8, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %37 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %37(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end4
  %38 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 2
  %39 = load i16, i16* %38, align 2
  %40 = icmp eq i16 %39, 1
  %41 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 1
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 32
  %44 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 2
  %47 = and i1 %43, %46
  %48 = and i1 %40, %47
  br i1 %48, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %49 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %49(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %50 = load i64, i64* %21, align 8, !tbaa !379
  %51 = trunc i64 %50 to i32
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %53 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %53(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %54 = getelementptr inbounds i64, i64* %21, i64 1
  %55 = load i64, i64* %54, align 8, !tbaa !393
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.40, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %.not = icmp eq i64* %23, null
  br i1 %.not, label %if_end, label %if_then, !prof !46

if_then:                                          ; preds = %assert_end14
  %59 = load i64, i64* %23, align 8, !tbaa !395
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %60, 1
  %62 = getelementptr inbounds i64, i64* %23, i64 1
  %63 = load i64, i64* %62, align 8, !tbaa !409
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 1
  %66 = and i1 %61, %65
  br i1 %66, label %if_end, label %assert_fail15, !prof !5

if_end:                                           ; preds = %if_then, %assert_end14
  %67 = getelementptr inbounds %0, %0* %9, i64 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %assert_end18, label %assert_fail17, !prof !5

assert_fail15:                                    ; preds = %if_then
  %70 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %70(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.41, i64 0, i64 0))
  ret i32 -1

assert_fail17:                                    ; preds = %if_end
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %if_end
  %72 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %75(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %76 = getelementptr inbounds %0, %0* %14, i64 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %assert_end24, label %assert_fail21, !prof !5

assert_fail21:                                    ; preds = %assert_end20
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end20
  %80 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 2
  %81 = load i16, i16* %80, align 2
  %82 = icmp eq i16 %81, 1
  %83 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 1
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 32
  %86 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 0
  %87 = load i8, i8* %86, align 1
  %88 = icmp eq i8 %87, 2
  %89 = and i1 %85, %88
  %90 = and i1 %82, %89
  br i1 %90, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %91 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %91(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %92 = load i64, i64* %29, align 8, !tbaa !411
  %93 = trunc i64 %92 to i32
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %95 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %95(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.47, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %96 = getelementptr inbounds i64, i64* %29, i64 1
  %97 = load i64, i64* %96, align 8, !tbaa !425
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %100(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.42, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %.not41 = icmp eq i64* %31, null
  br i1 %.not41, label %if_end32, label %if_then31, !prof !46

if_then31:                                        ; preds = %assert_end30
  %101 = load i64, i64* %31, align 8, !tbaa !427
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %102, 1
  %104 = getelementptr inbounds i64, i64* %31, i64 1
  %105 = load i64, i64* %104, align 8, !tbaa !441
  %106 = trunc i64 %105 to i32
  %107 = icmp eq i32 %106, 1
  %108 = and i1 %103, %107
  br i1 %108, label %if_end32, label %assert_fail33, !prof !5

if_end32:                                         ; preds = %if_then31, %assert_end30
  %109 = getelementptr inbounds %0, %0* %14, i64 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %assert_end36, label %assert_fail35, !prof !5

assert_fail33:                                    ; preds = %if_then31
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.43, i64 0, i64 0))
  ret i32 -1

assert_fail35:                                    ; preds = %if_end32
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %if_end32
  %114 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %118 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %25, %119
  br i1 %120, label %assert_end40, label %assert_fail39, !prof !5

assert_fail39:                                    ; preds = %assert_end38
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  tail call fastcc void @fused_reshape_1_compute_(i8* %27, i8* %19)
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nounwind willreturn
define private fastcc void @fused_reshape_1_compute_(i8* noalias nocapture align 128 %0, i8* noalias nocapture readonly align 128 %1) unnamed_addr #4 {
entry:
  %2 = bitcast i8* %1 to float*
  %3 = load float, float* %2, align 128, !tbaa !443
  %4 = bitcast i8* %0 to float*
  store float %3, float* %4, align 128, !tbaa !457
  ret void
}

define dllexport i32 @fused_reshape(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %7(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.48, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %0**
  %9 = load %0*, %0** %8, align 8
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !471
  %12 = getelementptr inbounds i8, i8* %0, i64 8
  %13 = bitcast i8* %12 to %0**
  %14 = load %0*, %0** %13, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 4
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !485
  %18 = getelementptr inbounds %0, %0* %9, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %19, i64 128) ]
  %20 = getelementptr inbounds %0, %0* %9, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds %0, %0* %9, i64 0, i32 5
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %0, %0* %14, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %27, i64 128) ]
  %28 = getelementptr inbounds %0, %0* %14, i64 0, i32 4
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds %0, %0* %14, i64 0, i32 5
  %31 = load i64*, i64** %30, align 8
  switch i32 %11, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %32 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %32(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.49, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %17, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %33 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %33(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.50, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %34 = getelementptr inbounds %0, %0* %9, i64 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %assert_end8, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %37 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %37(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end4
  %38 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 2
  %39 = load i16, i16* %38, align 2
  %40 = icmp eq i16 %39, 1
  %41 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 1
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 32
  %44 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 2
  %47 = and i1 %43, %46
  %48 = and i1 %40, %47
  br i1 %48, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %49 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %49(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %50 = load i64, i64* %21, align 8, !tbaa !487
  %51 = trunc i64 %50 to i32
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %53 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %53(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %54 = getelementptr inbounds i64, i64* %21, i64 1
  %55 = load i64, i64* %54, align 8, !tbaa !501
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %56, 16
  br i1 %57, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %.not = icmp eq i64* %23, null
  br i1 %.not, label %if_end, label %if_then, !prof !46

if_then:                                          ; preds = %assert_end14
  %59 = load i64, i64* %23, align 8, !tbaa !503
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %60, 16
  %62 = getelementptr inbounds i64, i64* %23, i64 1
  %63 = load i64, i64* %62, align 8, !tbaa !517
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 1
  %66 = and i1 %61, %65
  br i1 %66, label %if_end, label %assert_fail15, !prof !5

if_end:                                           ; preds = %if_then, %assert_end14
  %67 = getelementptr inbounds %0, %0* %9, i64 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %assert_end18, label %assert_fail17, !prof !5

assert_fail15:                                    ; preds = %if_then
  %70 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %70(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_fail17:                                    ; preds = %if_end
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %if_end
  %72 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %75(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %76 = getelementptr inbounds %0, %0* %14, i64 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %assert_end24, label %assert_fail21, !prof !5

assert_fail21:                                    ; preds = %assert_end20
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end20
  %80 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 2
  %81 = load i16, i16* %80, align 2
  %82 = icmp eq i16 %81, 1
  %83 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 1
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 32
  %86 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 0
  %87 = load i8, i8* %86, align 1
  %88 = icmp eq i8 %87, 2
  %89 = and i1 %85, %88
  %90 = and i1 %82, %89
  br i1 %90, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %91 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %91(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %92 = load i64, i64* %29, align 8, !tbaa !519
  %93 = trunc i64 %92 to i32
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %95 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %95(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.47, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %96 = getelementptr inbounds i64, i64* %29, i64 1
  %97 = load i64, i64* %96, align 8, !tbaa !533
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %98, 16
  br i1 %99, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %100(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %.not41 = icmp eq i64* %31, null
  br i1 %.not41, label %if_end32, label %if_then31, !prof !46

if_then31:                                        ; preds = %assert_end30
  %101 = load i64, i64* %31, align 8, !tbaa !535
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %102, 16
  %104 = getelementptr inbounds i64, i64* %31, i64 1
  %105 = load i64, i64* %104, align 8, !tbaa !549
  %106 = trunc i64 %105 to i32
  %107 = icmp eq i32 %106, 1
  %108 = and i1 %103, %107
  br i1 %108, label %if_end32, label %assert_fail33, !prof !5

if_end32:                                         ; preds = %if_then31, %assert_end30
  %109 = getelementptr inbounds %0, %0* %14, i64 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %assert_end36, label %assert_fail35, !prof !5

assert_fail33:                                    ; preds = %if_then31
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_fail35:                                    ; preds = %if_end32
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %if_end32
  %114 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %118 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %25, %119
  br i1 %120, label %assert_end40, label %assert_fail39, !prof !5

assert_fail39:                                    ; preds = %assert_end38
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  tail call fastcc void @fused_reshape_compute_(i8* %27, i8* %19)
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nounwind willreturn
define private fastcc void @fused_reshape_compute_(i8* noalias nocapture align 128 %0, i8* noalias nocapture readonly align 128 %1) unnamed_addr #4 {
entry:
  %2 = bitcast i8* %1 to <16 x float>*
  %3 = load <16 x float>, <16 x float>* %2, align 128, !tbaa !551
  %4 = bitcast i8* %0 to <16 x float>*
  store <16 x float> %3, <16 x float>* %4, align 128, !tbaa !561
  ret void
}

define dllexport i32 @fused_nn_dense_nn_bias_add(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 4
  br i1 %6, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %7(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.51, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %0**
  %9 = load %0*, %0** %8, align 8
  %10 = bitcast i8* %1 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !571
  %12 = getelementptr inbounds i8, i8* %0, i64 8
  %13 = bitcast i8* %12 to %0**
  %14 = load %0*, %0** %13, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 4
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !585
  %18 = getelementptr inbounds i8, i8* %0, i64 16
  %19 = bitcast i8* %18 to %0**
  %20 = load %0*, %0** %19, align 8
  %21 = getelementptr inbounds i8, i8* %1, i64 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !587
  %24 = getelementptr inbounds i8, i8* %0, i64 24
  %25 = bitcast i8* %24 to %0**
  %26 = load %0*, %0** %25, align 8
  %27 = getelementptr inbounds i8, i8* %1, i64 12
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4, !tbaa !590
  %30 = getelementptr inbounds %0, %0* %9, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %31, i64 128) ]
  %32 = getelementptr inbounds %0, %0* %9, i64 0, i32 4
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds %0, %0* %9, i64 0, i32 5
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %0, %0* %14, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %39, i64 128) ]
  %40 = getelementptr inbounds %0, %0* %14, i64 0, i32 4
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds %0, %0* %14, i64 0, i32 5
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds %0, %0* %20, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %45, i64 128) ]
  %46 = getelementptr inbounds %0, %0* %20, i64 0, i32 4
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds %0, %0* %20, i64 0, i32 5
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds %0, %0* %26, i64 0, i32 0
  %51 = load i8*, i8** %50, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %51, i64 128) ]
  %52 = getelementptr inbounds %0, %0* %26, i64 0, i32 4
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds %0, %0* %26, i64 0, i32 5
  %55 = load i64*, i64** %54, align 8
  switch i32 %11, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.52, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %17, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %57 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %57(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.53, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  switch i32 %23, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ]

assert_fail5:                                     ; preds = %assert_end4
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.54, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  switch i32 %29, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ]

assert_fail7:                                     ; preds = %assert_end6
  %59 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %59(i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.55, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %60 = getelementptr inbounds %0, %0* %9, i64 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %assert_end12, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %63 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %63(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end8
  %64 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 2
  %65 = load i16, i16* %64, align 2
  %66 = icmp eq i16 %65, 1
  %67 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 1
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, 32
  %70 = getelementptr inbounds %0, %0* %9, i64 0, i32 3, i32 0
  %71 = load i8, i8* %70, align 1
  %72 = icmp eq i8 %71, 2
  %73 = and i1 %69, %72
  %74 = and i1 %66, %73
  br i1 %74, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %75(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %76 = load i64, i64* %33, align 8, !tbaa !592
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %80 = getelementptr inbounds i64, i64* %33, i64 1
  %81 = load i64, i64* %80, align 8, !tbaa !606
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %82, 16
  br i1 %83, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %84(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq i64* %35, null
  br i1 %.not, label %if_end, label %if_then, !prof !46

if_then:                                          ; preds = %assert_end18
  %85 = load i64, i64* %35, align 8, !tbaa !608
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %86, 16
  %88 = getelementptr inbounds i64, i64* %35, i64 1
  %89 = load i64, i64* %88, align 8, !tbaa !622
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 1
  %92 = and i1 %87, %91
  br i1 %92, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %if_then, %assert_end18
  %93 = getelementptr inbounds %0, %0* %9, i64 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %96 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %96(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %97(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %98 = getelementptr inbounds %0, %0* %9, i64 0, i32 1, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %101(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %102 = getelementptr inbounds %0, %0* %14, i64 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %assert_end28, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %105 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %105(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end24
  %106 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 2
  %107 = load i16, i16* %106, align 2
  %108 = icmp eq i16 %107, 1
  %109 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 1
  %110 = load i8, i8* %109, align 1
  %111 = icmp eq i8 %110, 32
  %112 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 0
  %113 = load i8, i8* %112, align 1
  %114 = icmp eq i8 %113, 2
  %115 = and i1 %111, %114
  %116 = and i1 %108, %115
  br i1 %116, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %118 = load i64, i64* %41, align 8, !tbaa !624
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.47, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %122 = getelementptr inbounds i64, i64* %41, i64 1
  %123 = load i64, i64* %122, align 8, !tbaa !638
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, 16
  br i1 %125, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %126(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %.not83 = icmp eq i64* %43, null
  br i1 %.not83, label %if_end36, label %if_then35, !prof !46

if_then35:                                        ; preds = %assert_end34
  %127 = load i64, i64* %43, align 8, !tbaa !640
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %128, 16
  %130 = getelementptr inbounds i64, i64* %43, i64 1
  %131 = load i64, i64* %130, align 8, !tbaa !654
  %132 = trunc i64 %131 to i32
  %133 = icmp eq i32 %132, 1
  %134 = and i1 %129, %133
  br i1 %134, label %if_end36, label %assert_fail37, !prof !5

if_end36:                                         ; preds = %if_then35, %assert_end34
  %135 = getelementptr inbounds %0, %0* %14, i64 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %assert_end40, label %assert_fail39, !prof !5

assert_fail37:                                    ; preds = %if_then35
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_fail39:                                    ; preds = %if_end36
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %139(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %if_end36
  %140 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %143(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %144 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %37, %145
  br i1 %146, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %147 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %147(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %148 = getelementptr inbounds %0, %0* %20, i64 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %assert_end48, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %151 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %151(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end44
  %152 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 2
  %153 = load i16, i16* %152, align 2
  %154 = icmp eq i16 %153, 1
  %155 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 1
  %156 = load i8, i8* %155, align 1
  %157 = icmp eq i8 %156, 32
  %158 = getelementptr inbounds %0, %0* %20, i64 0, i32 3, i32 0
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 2
  %161 = and i1 %157, %160
  %162 = and i1 %154, %161
  br i1 %162, label %assert_end50, label %assert_fail49, !prof !5

assert_fail49:                                    ; preds = %assert_end48
  %163 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %163(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end50:                                     ; preds = %assert_end48
  %164 = load i64, i64* %47, align 8, !tbaa !656
  %165 = trunc i64 %164 to i32
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %assert_end52, label %assert_fail51, !prof !5

assert_fail51:                                    ; preds = %assert_end50
  %167 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %167(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.56, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %assert_end50
  %.not84 = icmp eq i64* %49, null
  br i1 %.not84, label %if_end54, label %if_then53, !prof !46

if_then53:                                        ; preds = %assert_end52
  %168 = load i64, i64* %49, align 8, !tbaa !670
  %169 = trunc i64 %168 to i32
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %if_end54, label %assert_fail55, !prof !5

if_end54:                                         ; preds = %if_then53, %assert_end52
  %171 = getelementptr inbounds %0, %0* %20, i64 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %assert_end58, label %assert_fail57, !prof !5

assert_fail55:                                    ; preds = %if_then53
  %174 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %174(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.23, i64 0, i64 0))
  ret i32 -1

assert_fail57:                                    ; preds = %if_end54
  %175 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %175(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.24, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %if_end54
  %176 = getelementptr inbounds %0, %0* %20, i64 0, i32 1, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %assert_end60, label %assert_fail59, !prof !5

assert_fail59:                                    ; preds = %assert_end58
  %179 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %179(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_end60:                                     ; preds = %assert_end58
  %180 = getelementptr inbounds %0, %0* %20, i64 0, i32 1, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %37, %181
  br i1 %182, label %assert_end62, label %assert_fail61, !prof !5

assert_fail61:                                    ; preds = %assert_end60
  %183 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %183(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %assert_end60
  %184 = getelementptr inbounds %0, %0* %26, i64 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %assert_end66, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %187 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %187(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end66:                                     ; preds = %assert_end62
  %188 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 2
  %189 = load i16, i16* %188, align 2
  %190 = icmp eq i16 %189, 1
  %191 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 1
  %192 = load i8, i8* %191, align 1
  %193 = icmp eq i8 %192, 32
  %194 = getelementptr inbounds %0, %0* %26, i64 0, i32 3, i32 0
  %195 = load i8, i8* %194, align 1
  %196 = icmp eq i8 %195, 2
  %197 = and i1 %193, %196
  %198 = and i1 %190, %197
  br i1 %198, label %assert_end68, label %assert_fail67, !prof !5

assert_fail67:                                    ; preds = %assert_end66
  %199 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %199(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end68:                                     ; preds = %assert_end66
  %200 = load i64, i64* %53, align 8, !tbaa !684
  %201 = trunc i64 %200 to i32
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %assert_end70, label %assert_fail69, !prof !5

assert_fail69:                                    ; preds = %assert_end68
  %203 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %203(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.29, i64 0, i64 0))
  ret i32 -1

assert_end70:                                     ; preds = %assert_end68
  %204 = getelementptr inbounds i64, i64* %53, i64 1
  %205 = load i64, i64* %204, align 8, !tbaa !698
  %206 = trunc i64 %205 to i32
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %assert_end72, label %assert_fail71, !prof !5

assert_fail71:                                    ; preds = %assert_end70
  %208 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %208(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.57, i64 0, i64 0))
  ret i32 -1

assert_end72:                                     ; preds = %assert_end70
  %.not85 = icmp eq i64* %55, null
  br i1 %.not85, label %if_end74, label %if_then73, !prof !46

if_then73:                                        ; preds = %assert_end72
  %209 = load i64, i64* %55, align 8, !tbaa !700
  %210 = trunc i64 %209 to i32
  %211 = icmp eq i32 %210, 1
  %212 = getelementptr inbounds i64, i64* %55, i64 1
  %213 = load i64, i64* %212, align 8, !tbaa !714
  %214 = trunc i64 %213 to i32
  %215 = icmp eq i32 %214, 1
  %216 = and i1 %211, %215
  br i1 %216, label %if_end74, label %assert_fail75, !prof !5

if_end74:                                         ; preds = %if_then73, %assert_end72
  %217 = getelementptr inbounds %0, %0* %26, i64 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %assert_end78, label %assert_fail77, !prof !5

assert_fail75:                                    ; preds = %if_then73
  %220 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %220(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.58, i64 0, i64 0))
  ret i32 -1

assert_fail77:                                    ; preds = %if_end74
  %221 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %221(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.32, i64 0, i64 0))
  ret i32 -1

assert_end78:                                     ; preds = %if_end74
  %222 = getelementptr inbounds %0, %0* %26, i64 0, i32 1, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %assert_end80, label %assert_fail79, !prof !5

assert_fail79:                                    ; preds = %assert_end78
  %225 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %225(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.33, i64 0, i64 0))
  ret i32 -1

assert_end80:                                     ; preds = %assert_end78
  %226 = getelementptr inbounds %0, %0* %26, i64 0, i32 1, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %37, %227
  br i1 %228, label %assert_end82, label %assert_fail81, !prof !5

assert_fail81:                                    ; preds = %assert_end80
  %229 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %229(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.34, i64 0, i64 0))
  ret i32 -1

assert_end82:                                     ; preds = %assert_end80
  tail call fastcc void @fused_nn_dense_nn_bias_add_compute_(i8* %39, i8* %31, i8* %51, i8* %45)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind
define private fastcc void @fused_nn_dense_nn_bias_add_compute_(i8* noalias nocapture readonly align 128 %0, i8* noalias nocapture readonly align 128 %1, i8* noalias nocapture align 128 %2, i8* noalias nocapture readonly align 128 %3) unnamed_addr #3 {
entry:
  %.sroa.0.0..sroa_cast = bitcast i8* %0 to float*
  %.sroa.0.0.copyload = load float, float* %.sroa.0.0..sroa_cast, align 128
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 4
  %.sroa.2.0..sroa_cast = bitcast i8* %.sroa.2.0..sroa_idx to float*
  %.sroa.2.0.copyload = load float, float* %.sroa.2.0..sroa_cast, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 8
  %.sroa.3.0..sroa_cast = bitcast i8* %.sroa.3.0..sroa_idx to float*
  %.sroa.3.0.copyload = load float, float* %.sroa.3.0..sroa_cast, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 12
  %.sroa.4.0..sroa_cast = bitcast i8* %.sroa.4.0..sroa_idx to float*
  %.sroa.4.0.copyload = load float, float* %.sroa.4.0..sroa_cast, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 16
  %.sroa.5.0..sroa_cast = bitcast i8* %.sroa.5.0..sroa_idx to float*
  %.sroa.5.0.copyload = load float, float* %.sroa.5.0..sroa_cast, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 20
  %.sroa.6.0..sroa_cast = bitcast i8* %.sroa.6.0..sroa_idx to float*
  %.sroa.6.0.copyload = load float, float* %.sroa.6.0..sroa_cast, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 24
  %.sroa.7.0..sroa_cast = bitcast i8* %.sroa.7.0..sroa_idx to float*
  %.sroa.7.0.copyload = load float, float* %.sroa.7.0..sroa_cast, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 28
  %.sroa.8.0..sroa_cast = bitcast i8* %.sroa.8.0..sroa_idx to float*
  %.sroa.8.0.copyload = load float, float* %.sroa.8.0..sroa_cast, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 32
  %.sroa.9.0..sroa_cast = bitcast i8* %.sroa.9.0..sroa_idx to float*
  %.sroa.9.0.copyload = load float, float* %.sroa.9.0..sroa_cast, align 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 36
  %.sroa.10.0..sroa_cast = bitcast i8* %.sroa.10.0..sroa_idx to float*
  %.sroa.10.0.copyload = load float, float* %.sroa.10.0..sroa_cast, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 40
  %.sroa.11.0..sroa_cast = bitcast i8* %.sroa.11.0..sroa_idx to float*
  %.sroa.11.0.copyload = load float, float* %.sroa.11.0..sroa_cast, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 44
  %.sroa.12.0..sroa_cast = bitcast i8* %.sroa.12.0..sroa_idx to float*
  %.sroa.12.0.copyload = load float, float* %.sroa.12.0..sroa_cast, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 48
  %.sroa.13.0..sroa_cast = bitcast i8* %.sroa.13.0..sroa_idx to float*
  %.sroa.13.0.copyload = load float, float* %.sroa.13.0..sroa_cast, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 52
  %.sroa.14.0..sroa_cast = bitcast i8* %.sroa.14.0..sroa_idx to float*
  %.sroa.14.0.copyload = load float, float* %.sroa.14.0..sroa_cast, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 56
  %.sroa.15.0..sroa_cast = bitcast i8* %.sroa.15.0..sroa_idx to float*
  %.sroa.15.0.copyload = load float, float* %.sroa.15.0..sroa_cast, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds i8, i8* %0, i64 60
  %.sroa.16.0..sroa_cast = bitcast i8* %.sroa.16.0..sroa_idx to float*
  %.sroa.16.0.copyload = load float, float* %.sroa.16.0..sroa_cast, align 4
  %4 = bitcast i8* %1 to float*
  %5 = load float, float* %4, align 128, !tbaa !716
  %6 = tail call float @llvm.fmuladd.f32(float %5, float %.sroa.0.0.copyload, float 0.000000e+00)
  %7 = getelementptr inbounds i8, i8* %1, i64 4
  %8 = bitcast i8* %7 to float*
  %9 = load float, float* %8, align 4, !tbaa !716
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %.sroa.2.0.copyload, float %6)
  %11 = getelementptr inbounds i8, i8* %1, i64 8
  %12 = bitcast i8* %11 to float*
  %13 = load float, float* %12, align 8, !tbaa !716
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %.sroa.3.0.copyload, float %10)
  %15 = getelementptr inbounds i8, i8* %1, i64 12
  %16 = bitcast i8* %15 to float*
  %17 = load float, float* %16, align 4, !tbaa !716
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %.sroa.4.0.copyload, float %14)
  %19 = getelementptr inbounds i8, i8* %1, i64 16
  %20 = bitcast i8* %19 to float*
  %21 = load float, float* %20, align 16, !tbaa !716
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %.sroa.5.0.copyload, float %18)
  %23 = getelementptr inbounds i8, i8* %1, i64 20
  %24 = bitcast i8* %23 to float*
  %25 = load float, float* %24, align 4, !tbaa !716
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %.sroa.6.0.copyload, float %22)
  %27 = getelementptr inbounds i8, i8* %1, i64 24
  %28 = bitcast i8* %27 to float*
  %29 = load float, float* %28, align 8, !tbaa !716
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %.sroa.7.0.copyload, float %26)
  %31 = getelementptr inbounds i8, i8* %1, i64 28
  %32 = bitcast i8* %31 to float*
  %33 = load float, float* %32, align 4, !tbaa !716
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %.sroa.8.0.copyload, float %30)
  %35 = getelementptr inbounds i8, i8* %1, i64 32
  %36 = bitcast i8* %35 to float*
  %37 = load float, float* %36, align 32, !tbaa !716
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %.sroa.9.0.copyload, float %34)
  %39 = getelementptr inbounds i8, i8* %1, i64 36
  %40 = bitcast i8* %39 to float*
  %41 = load float, float* %40, align 4, !tbaa !716
  %42 = tail call float @llvm.fmuladd.f32(float %41, float %.sroa.10.0.copyload, float %38)
  %43 = getelementptr inbounds i8, i8* %1, i64 40
  %44 = bitcast i8* %43 to float*
  %45 = load float, float* %44, align 8, !tbaa !716
  %46 = tail call float @llvm.fmuladd.f32(float %45, float %.sroa.11.0.copyload, float %42)
  %47 = getelementptr inbounds i8, i8* %1, i64 44
  %48 = bitcast i8* %47 to float*
  %49 = load float, float* %48, align 4, !tbaa !716
  %50 = tail call float @llvm.fmuladd.f32(float %49, float %.sroa.12.0.copyload, float %46)
  %51 = getelementptr inbounds i8, i8* %1, i64 48
  %52 = bitcast i8* %51 to float*
  %53 = load float, float* %52, align 16, !tbaa !716
  %54 = tail call float @llvm.fmuladd.f32(float %53, float %.sroa.13.0.copyload, float %50)
  %55 = getelementptr inbounds i8, i8* %1, i64 52
  %56 = bitcast i8* %55 to float*
  %57 = load float, float* %56, align 4, !tbaa !716
  %58 = tail call float @llvm.fmuladd.f32(float %57, float %.sroa.14.0.copyload, float %54)
  %59 = getelementptr inbounds i8, i8* %1, i64 56
  %60 = bitcast i8* %59 to float*
  %61 = load float, float* %60, align 8, !tbaa !716
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %.sroa.15.0.copyload, float %58)
  %63 = getelementptr inbounds i8, i8* %1, i64 60
  %64 = bitcast i8* %63 to float*
  %65 = load float, float* %64, align 4, !tbaa !716
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %.sroa.16.0.copyload, float %62)
  %67 = bitcast i8* %3 to float*
  %68 = load float, float* %67, align 128, !tbaa !719
  %69 = fadd float %66, %68
  %70 = bitcast i8* %2 to float*
  store float %69, float* %70, align 128, !tbaa !733
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

attributes #0 = { nofree nosync nounwind willreturn }
attributes #1 = { noinline }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree noinline nounwind }
attributes #4 = { nofree noinline norecurse nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "TVM", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, dwoId: 1)
!1 = !DIFile(filename: "model.tvm", directory: "/tmp/")
!2 = !{}
!3 = !{i32 2, !"tvm_target", !"llvm"}
!4 = !{i32 4, !"Debug Info Version", i32 3}
!5 = !{!"branch_weights", i32 1048576, i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"ctx_ptr", !8, i64 0}
!8 = !{!"tvm-tbaa"}
!9 = !{!10, !10, i64 0}
!10 = !{!"0x55f373e61460.w1.b0", !11, i64 0}
!11 = !{!"0x55f373e61460.w2.b0", !12, i64 0}
!12 = !{!"0x55f373e61460.w4.b0", !13, i64 0}
!13 = !{!"0x55f373e61460.w8.b0", !14, i64 0}
!14 = !{!"0x55f373e61460.w16.b0", !15, i64 0}
!15 = !{!"0x55f373e61460.w32.b0", !16, i64 0}
!16 = !{!"0x55f373e61460.w64.b0", !17, i64 0}
!17 = !{!"0x55f373e61460.w128.b0", !18, i64 0}
!18 = !{!"0x55f373e61460.w256.b0", !19, i64 0}
!19 = !{!"0x55f373e61460.w512.b0", !20, i64 0}
!20 = !{!"0x55f373e61460.w1024.b0", !21, i64 0}
!21 = !{!"i8", !22, i64 0}
!22 = !{!"0x55f373e61460", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x55f373e61460.w1.b1", !11, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"0x55f373e61460.w1.b2", !27, i64 0}
!27 = !{!"0x55f373e61460.w2.b2", !12, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x55f373e61460.w1.b3", !27, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"0x55f373e69f80.w1.b0", !32, i64 0}
!32 = !{!"0x55f373e69f80.w2.b0", !33, i64 0}
!33 = !{!"0x55f373e69f80.w4.b0", !34, i64 0}
!34 = !{!"0x55f373e69f80.w8.b0", !35, i64 0}
!35 = !{!"0x55f373e69f80.w16.b0", !36, i64 0}
!36 = !{!"0x55f373e69f80.w32.b0", !37, i64 0}
!37 = !{!"0x55f373e69f80.w64.b0", !38, i64 0}
!38 = !{!"0x55f373e69f80.w128.b0", !39, i64 0}
!39 = !{!"0x55f373e69f80.w256.b0", !40, i64 0}
!40 = !{!"0x55f373e69f80.w512.b0", !41, i64 0}
!41 = !{!"0x55f373e69f80.w1024.b0", !42, i64 0}
!42 = !{!"i64", !43, i64 0}
!43 = !{!"0x55f373e69f80", !8, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x55f373e69f80.w1.b1", !32, i64 0}
!46 = !{!"branch_weights", i32 1, i32 1048576}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x55f373e6a3e0.w1.b0", !49, i64 0}
!49 = !{!"0x55f373e6a3e0.w2.b0", !50, i64 0}
!50 = !{!"0x55f373e6a3e0.w4.b0", !51, i64 0}
!51 = !{!"0x55f373e6a3e0.w8.b0", !52, i64 0}
!52 = !{!"0x55f373e6a3e0.w16.b0", !53, i64 0}
!53 = !{!"0x55f373e6a3e0.w32.b0", !54, i64 0}
!54 = !{!"0x55f373e6a3e0.w64.b0", !55, i64 0}
!55 = !{!"0x55f373e6a3e0.w128.b0", !56, i64 0}
!56 = !{!"0x55f373e6a3e0.w256.b0", !57, i64 0}
!57 = !{!"0x55f373e6a3e0.w512.b0", !58, i64 0}
!58 = !{!"0x55f373e6a3e0.w1024.b0", !59, i64 0}
!59 = !{!"i64", !60, i64 0}
!60 = !{!"0x55f373e6a3e0", !8, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"0x55f373e6a3e0.w1.b1", !49, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"0x55f373e6c220.w1.b0", !65, i64 0}
!65 = !{!"0x55f373e6c220.w2.b0", !66, i64 0}
!66 = !{!"0x55f373e6c220.w4.b0", !67, i64 0}
!67 = !{!"0x55f373e6c220.w8.b0", !68, i64 0}
!68 = !{!"0x55f373e6c220.w16.b0", !69, i64 0}
!69 = !{!"0x55f373e6c220.w32.b0", !70, i64 0}
!70 = !{!"0x55f373e6c220.w64.b0", !71, i64 0}
!71 = !{!"0x55f373e6c220.w128.b0", !72, i64 0}
!72 = !{!"0x55f373e6c220.w256.b0", !73, i64 0}
!73 = !{!"0x55f373e6c220.w512.b0", !74, i64 0}
!74 = !{!"0x55f373e6c220.w1024.b0", !75, i64 0}
!75 = !{!"i64", !76, i64 0}
!76 = !{!"0x55f373e6c220", !8, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"0x55f373e6c220.w1.b1", !65, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"0x55f373e6c7b0.w1.b0", !81, i64 0}
!81 = !{!"0x55f373e6c7b0.w2.b0", !82, i64 0}
!82 = !{!"0x55f373e6c7b0.w4.b0", !83, i64 0}
!83 = !{!"0x55f373e6c7b0.w8.b0", !84, i64 0}
!84 = !{!"0x55f373e6c7b0.w16.b0", !85, i64 0}
!85 = !{!"0x55f373e6c7b0.w32.b0", !86, i64 0}
!86 = !{!"0x55f373e6c7b0.w64.b0", !87, i64 0}
!87 = !{!"0x55f373e6c7b0.w128.b0", !88, i64 0}
!88 = !{!"0x55f373e6c7b0.w256.b0", !89, i64 0}
!89 = !{!"0x55f373e6c7b0.w512.b0", !90, i64 0}
!90 = !{!"0x55f373e6c7b0.w1024.b0", !91, i64 0}
!91 = !{!"i64", !92, i64 0}
!92 = !{!"0x55f373e6c7b0", !8, i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"0x55f373e6c7b0.w1.b1", !81, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"0x55f373e6e630.w1.b0", !97, i64 0}
!97 = !{!"0x55f373e6e630.w2.b0", !98, i64 0}
!98 = !{!"0x55f373e6e630.w4.b0", !99, i64 0}
!99 = !{!"0x55f373e6e630.w8.b0", !100, i64 0}
!100 = !{!"0x55f373e6e630.w16.b0", !101, i64 0}
!101 = !{!"0x55f373e6e630.w32.b0", !102, i64 0}
!102 = !{!"0x55f373e6e630.w64.b0", !103, i64 0}
!103 = !{!"0x55f373e6e630.w128.b0", !104, i64 0}
!104 = !{!"0x55f373e6e630.w256.b0", !105, i64 0}
!105 = !{!"0x55f373e6e630.w512.b0", !106, i64 0}
!106 = !{!"0x55f373e6e630.w1024.b0", !107, i64 0}
!107 = !{!"i64", !108, i64 0}
!108 = !{!"0x55f373e6e630", !8, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x55f373e6ea30.w1.b0", !111, i64 0}
!111 = !{!"0x55f373e6ea30.w2.b0", !112, i64 0}
!112 = !{!"0x55f373e6ea30.w4.b0", !113, i64 0}
!113 = !{!"0x55f373e6ea30.w8.b0", !114, i64 0}
!114 = !{!"0x55f373e6ea30.w16.b0", !115, i64 0}
!115 = !{!"0x55f373e6ea30.w32.b0", !116, i64 0}
!116 = !{!"0x55f373e6ea30.w64.b0", !117, i64 0}
!117 = !{!"0x55f373e6ea30.w128.b0", !118, i64 0}
!118 = !{!"0x55f373e6ea30.w256.b0", !119, i64 0}
!119 = !{!"0x55f373e6ea30.w512.b0", !120, i64 0}
!120 = !{!"0x55f373e6ea30.w1024.b0", !121, i64 0}
!121 = !{!"i64", !122, i64 0}
!122 = !{!"0x55f373e6ea30", !8, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x55f373e706d0.w1.b0", !125, i64 0}
!125 = !{!"0x55f373e706d0.w2.b0", !126, i64 0}
!126 = !{!"0x55f373e706d0.w4.b0", !127, i64 0}
!127 = !{!"0x55f373e706d0.w8.b0", !128, i64 0}
!128 = !{!"0x55f373e706d0.w16.b0", !129, i64 0}
!129 = !{!"0x55f373e706d0.w32.b0", !130, i64 0}
!130 = !{!"0x55f373e706d0.w64.b0", !131, i64 0}
!131 = !{!"0x55f373e706d0.w128.b0", !132, i64 0}
!132 = !{!"0x55f373e706d0.w256.b0", !133, i64 0}
!133 = !{!"0x55f373e706d0.w512.b0", !134, i64 0}
!134 = !{!"0x55f373e706d0.w1024.b0", !135, i64 0}
!135 = !{!"i64", !136, i64 0}
!136 = !{!"0x55f373e706d0", !8, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"0x55f373e706d0.w1.b1", !125, i64 0}
!139 = !{!140, !140, i64 0}
!140 = !{!"0x55f373e70b00.w1.b0", !141, i64 0}
!141 = !{!"0x55f373e70b00.w2.b0", !142, i64 0}
!142 = !{!"0x55f373e70b00.w4.b0", !143, i64 0}
!143 = !{!"0x55f373e70b00.w8.b0", !144, i64 0}
!144 = !{!"0x55f373e70b00.w16.b0", !145, i64 0}
!145 = !{!"0x55f373e70b00.w32.b0", !146, i64 0}
!146 = !{!"0x55f373e70b00.w64.b0", !147, i64 0}
!147 = !{!"0x55f373e70b00.w128.b0", !148, i64 0}
!148 = !{!"0x55f373e70b00.w256.b0", !149, i64 0}
!149 = !{!"0x55f373e70b00.w512.b0", !150, i64 0}
!150 = !{!"0x55f373e70b00.w1024.b0", !151, i64 0}
!151 = !{!"i64", !152, i64 0}
!152 = !{!"0x55f373e70b00", !8, i64 0}
!153 = !{!154, !154, i64 0}
!154 = !{!"0x55f373e70b00.w1.b1", !141, i64 0}
!155 = !{!156, !156, i64 0}
!156 = !{!"i8", !157, i64 0}
!157 = !{!"0x55f373e56030", !8, i64 0}
!158 = !{!159, !159, i64 0}
!159 = !{!"i8", !160, i64 0}
!160 = !{!"0x55f373e3b050", !8, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"i8", !163, i64 0}
!163 = !{!"0x55f373e56070", !8, i64 0}
!164 = !{!165, !165, i64 0}
!165 = !{!"0x55f373e55ff0.w16.b0", !166, i64 0}
!166 = !{!"0x55f373e55ff0.w32.b0", !167, i64 0}
!167 = !{!"0x55f373e55ff0.w64.b0", !168, i64 0}
!168 = !{!"0x55f373e55ff0.w128.b0", !169, i64 0}
!169 = !{!"0x55f373e55ff0.w256.b0", !170, i64 0}
!170 = !{!"0x55f373e55ff0.w512.b0", !171, i64 0}
!171 = !{!"0x55f373e55ff0.w1024.b0", !172, i64 0}
!172 = !{!"i8", !173, i64 0}
!173 = !{!"0x55f373e55ff0", !8, i64 0}
!174 = !{!175, !175, i64 0}
!175 = !{!"0x55f373e55f50.w16.b0", !176, i64 0}
!176 = !{!"0x55f373e55f50.w32.b0", !177, i64 0}
!177 = !{!"0x55f373e55f50.w64.b0", !178, i64 0}
!178 = !{!"0x55f373e55f50.w128.b0", !179, i64 0}
!179 = !{!"0x55f373e55f50.w256.b0", !180, i64 0}
!180 = !{!"0x55f373e55f50.w512.b0", !181, i64 0}
!181 = !{!"0x55f373e55f50.w1024.b0", !182, i64 0}
!182 = !{!"i8", !183, i64 0}
!183 = !{!"0x55f373e55f50", !8, i64 0}
!184 = !{!185, !185, i64 0}
!185 = !{!"0x55f373e6a5a0.w1.b0", !186, i64 0}
!186 = !{!"0x55f373e6a5a0.w2.b0", !187, i64 0}
!187 = !{!"0x55f373e6a5a0.w4.b0", !188, i64 0}
!188 = !{!"0x55f373e6a5a0.w8.b0", !189, i64 0}
!189 = !{!"0x55f373e6a5a0.w16.b0", !190, i64 0}
!190 = !{!"0x55f373e6a5a0.w32.b0", !191, i64 0}
!191 = !{!"0x55f373e6a5a0.w64.b0", !192, i64 0}
!192 = !{!"0x55f373e6a5a0.w128.b0", !193, i64 0}
!193 = !{!"0x55f373e6a5a0.w256.b0", !194, i64 0}
!194 = !{!"0x55f373e6a5a0.w512.b0", !195, i64 0}
!195 = !{!"0x55f373e6a5a0.w1024.b0", !196, i64 0}
!196 = !{!"i8", !197, i64 0}
!197 = !{!"0x55f373e6a5a0", !8, i64 0}
!198 = !{!199, !199, i64 0}
!199 = !{!"0x55f373e6a5a0.w1.b1", !186, i64 0}
!200 = !{!201, !201, i64 0}
!201 = !{!"0x55f373e6a5a0.w1.b2", !202, i64 0}
!202 = !{!"0x55f373e6a5a0.w2.b2", !187, i64 0}
!203 = !{!204, !204, i64 0}
!204 = !{!"0x55f373e6a5a0.w1.b3", !202, i64 0}
!205 = !{!206, !206, i64 0}
!206 = !{!"0x55f373e74860.w1.b0", !207, i64 0}
!207 = !{!"0x55f373e74860.w2.b0", !208, i64 0}
!208 = !{!"0x55f373e74860.w4.b0", !209, i64 0}
!209 = !{!"0x55f373e74860.w8.b0", !210, i64 0}
!210 = !{!"0x55f373e74860.w16.b0", !211, i64 0}
!211 = !{!"0x55f373e74860.w32.b0", !212, i64 0}
!212 = !{!"0x55f373e74860.w64.b0", !213, i64 0}
!213 = !{!"0x55f373e74860.w128.b0", !214, i64 0}
!214 = !{!"0x55f373e74860.w256.b0", !215, i64 0}
!215 = !{!"0x55f373e74860.w512.b0", !216, i64 0}
!216 = !{!"0x55f373e74860.w1024.b0", !217, i64 0}
!217 = !{!"i64", !218, i64 0}
!218 = !{!"0x55f373e74860", !8, i64 0}
!219 = !{!220, !220, i64 0}
!220 = !{!"0x55f373e74860.w1.b1", !207, i64 0}
!221 = !{!222, !222, i64 0}
!222 = !{!"0x55f373e74ba0.w1.b0", !223, i64 0}
!223 = !{!"0x55f373e74ba0.w2.b0", !224, i64 0}
!224 = !{!"0x55f373e74ba0.w4.b0", !225, i64 0}
!225 = !{!"0x55f373e74ba0.w8.b0", !226, i64 0}
!226 = !{!"0x55f373e74ba0.w16.b0", !227, i64 0}
!227 = !{!"0x55f373e74ba0.w32.b0", !228, i64 0}
!228 = !{!"0x55f373e74ba0.w64.b0", !229, i64 0}
!229 = !{!"0x55f373e74ba0.w128.b0", !230, i64 0}
!230 = !{!"0x55f373e74ba0.w256.b0", !231, i64 0}
!231 = !{!"0x55f373e74ba0.w512.b0", !232, i64 0}
!232 = !{!"0x55f373e74ba0.w1024.b0", !233, i64 0}
!233 = !{!"i64", !234, i64 0}
!234 = !{!"0x55f373e74ba0", !8, i64 0}
!235 = !{!236, !236, i64 0}
!236 = !{!"0x55f373e74ba0.w1.b1", !223, i64 0}
!237 = !{!238, !238, i64 0}
!238 = !{!"0x55f373e76a40.w1.b0", !239, i64 0}
!239 = !{!"0x55f373e76a40.w2.b0", !240, i64 0}
!240 = !{!"0x55f373e76a40.w4.b0", !241, i64 0}
!241 = !{!"0x55f373e76a40.w8.b0", !242, i64 0}
!242 = !{!"0x55f373e76a40.w16.b0", !243, i64 0}
!243 = !{!"0x55f373e76a40.w32.b0", !244, i64 0}
!244 = !{!"0x55f373e76a40.w64.b0", !245, i64 0}
!245 = !{!"0x55f373e76a40.w128.b0", !246, i64 0}
!246 = !{!"0x55f373e76a40.w256.b0", !247, i64 0}
!247 = !{!"0x55f373e76a40.w512.b0", !248, i64 0}
!248 = !{!"0x55f373e76a40.w1024.b0", !249, i64 0}
!249 = !{!"i64", !250, i64 0}
!250 = !{!"0x55f373e76a40", !8, i64 0}
!251 = !{!252, !252, i64 0}
!252 = !{!"0x55f373e76a40.w1.b1", !239, i64 0}
!253 = !{!254, !254, i64 0}
!254 = !{!"0x55f373e76eb0.w1.b0", !255, i64 0}
!255 = !{!"0x55f373e76eb0.w2.b0", !256, i64 0}
!256 = !{!"0x55f373e76eb0.w4.b0", !257, i64 0}
!257 = !{!"0x55f373e76eb0.w8.b0", !258, i64 0}
!258 = !{!"0x55f373e76eb0.w16.b0", !259, i64 0}
!259 = !{!"0x55f373e76eb0.w32.b0", !260, i64 0}
!260 = !{!"0x55f373e76eb0.w64.b0", !261, i64 0}
!261 = !{!"0x55f373e76eb0.w128.b0", !262, i64 0}
!262 = !{!"0x55f373e76eb0.w256.b0", !263, i64 0}
!263 = !{!"0x55f373e76eb0.w512.b0", !264, i64 0}
!264 = !{!"0x55f373e76eb0.w1024.b0", !265, i64 0}
!265 = !{!"i64", !266, i64 0}
!266 = !{!"0x55f373e76eb0", !8, i64 0}
!267 = !{!268, !268, i64 0}
!268 = !{!"0x55f373e76eb0.w1.b1", !255, i64 0}
!269 = !{!270, !270, i64 0}
!270 = !{!"0x55f373e78d90.w1.b0", !271, i64 0}
!271 = !{!"0x55f373e78d90.w2.b0", !272, i64 0}
!272 = !{!"0x55f373e78d90.w4.b0", !273, i64 0}
!273 = !{!"0x55f373e78d90.w8.b0", !274, i64 0}
!274 = !{!"0x55f373e78d90.w16.b0", !275, i64 0}
!275 = !{!"0x55f373e78d90.w32.b0", !276, i64 0}
!276 = !{!"0x55f373e78d90.w64.b0", !277, i64 0}
!277 = !{!"0x55f373e78d90.w128.b0", !278, i64 0}
!278 = !{!"0x55f373e78d90.w256.b0", !279, i64 0}
!279 = !{!"0x55f373e78d90.w512.b0", !280, i64 0}
!280 = !{!"0x55f373e78d90.w1024.b0", !281, i64 0}
!281 = !{!"i64", !282, i64 0}
!282 = !{!"0x55f373e78d90", !8, i64 0}
!283 = !{!284, !284, i64 0}
!284 = !{!"0x55f373e79070.w1.b0", !285, i64 0}
!285 = !{!"0x55f373e79070.w2.b0", !286, i64 0}
!286 = !{!"0x55f373e79070.w4.b0", !287, i64 0}
!287 = !{!"0x55f373e79070.w8.b0", !288, i64 0}
!288 = !{!"0x55f373e79070.w16.b0", !289, i64 0}
!289 = !{!"0x55f373e79070.w32.b0", !290, i64 0}
!290 = !{!"0x55f373e79070.w64.b0", !291, i64 0}
!291 = !{!"0x55f373e79070.w128.b0", !292, i64 0}
!292 = !{!"0x55f373e79070.w256.b0", !293, i64 0}
!293 = !{!"0x55f373e79070.w512.b0", !294, i64 0}
!294 = !{!"0x55f373e79070.w1024.b0", !295, i64 0}
!295 = !{!"i64", !296, i64 0}
!296 = !{!"0x55f373e79070", !8, i64 0}
!297 = !{!298, !298, i64 0}
!298 = !{!"0x55f373e7ad10.w1.b0", !299, i64 0}
!299 = !{!"0x55f373e7ad10.w2.b0", !300, i64 0}
!300 = !{!"0x55f373e7ad10.w4.b0", !301, i64 0}
!301 = !{!"0x55f373e7ad10.w8.b0", !302, i64 0}
!302 = !{!"0x55f373e7ad10.w16.b0", !303, i64 0}
!303 = !{!"0x55f373e7ad10.w32.b0", !304, i64 0}
!304 = !{!"0x55f373e7ad10.w64.b0", !305, i64 0}
!305 = !{!"0x55f373e7ad10.w128.b0", !306, i64 0}
!306 = !{!"0x55f373e7ad10.w256.b0", !307, i64 0}
!307 = !{!"0x55f373e7ad10.w512.b0", !308, i64 0}
!308 = !{!"0x55f373e7ad10.w1024.b0", !309, i64 0}
!309 = !{!"i64", !310, i64 0}
!310 = !{!"0x55f373e7ad10", !8, i64 0}
!311 = !{!312, !312, i64 0}
!312 = !{!"0x55f373e7ad10.w1.b1", !299, i64 0}
!313 = !{!314, !314, i64 0}
!314 = !{!"0x55f373e7b140.w1.b0", !315, i64 0}
!315 = !{!"0x55f373e7b140.w2.b0", !316, i64 0}
!316 = !{!"0x55f373e7b140.w4.b0", !317, i64 0}
!317 = !{!"0x55f373e7b140.w8.b0", !318, i64 0}
!318 = !{!"0x55f373e7b140.w16.b0", !319, i64 0}
!319 = !{!"0x55f373e7b140.w32.b0", !320, i64 0}
!320 = !{!"0x55f373e7b140.w64.b0", !321, i64 0}
!321 = !{!"0x55f373e7b140.w128.b0", !322, i64 0}
!322 = !{!"0x55f373e7b140.w256.b0", !323, i64 0}
!323 = !{!"0x55f373e7b140.w512.b0", !324, i64 0}
!324 = !{!"0x55f373e7b140.w1024.b0", !325, i64 0}
!325 = !{!"i64", !326, i64 0}
!326 = !{!"0x55f373e7b140", !8, i64 0}
!327 = !{!328, !328, i64 0}
!328 = !{!"0x55f373e7b140.w1.b1", !315, i64 0}
!329 = !{!330, !330, i64 0}
!330 = !{!"0x55f373e63400.w1.b0", !331, i64 0}
!331 = !{!"0x55f373e63400.w2.b0", !332, i64 0}
!332 = !{!"0x55f373e63400.w4.b0", !333, i64 0}
!333 = !{!"0x55f373e63400.w8.b0", !334, i64 0}
!334 = !{!"0x55f373e63400.w16.b0", !335, i64 0}
!335 = !{!"0x55f373e63400.w32.b0", !336, i64 0}
!336 = !{!"0x55f373e63400.w64.b0", !337, i64 0}
!337 = !{!"0x55f373e63400.w128.b0", !338, i64 0}
!338 = !{!"0x55f373e63400.w256.b0", !339, i64 0}
!339 = !{!"0x55f373e63400.w512.b0", !340, i64 0}
!340 = !{!"0x55f373e63400.w1024.b0", !341, i64 0}
!341 = !{!"i8", !342, i64 0}
!342 = !{!"0x55f373e63400", !8, i64 0}
!343 = !{!344, !344, i64 0}
!344 = !{!"0x55f373e63380.w16.b0", !345, i64 0}
!345 = !{!"0x55f373e63380.w32.b0", !346, i64 0}
!346 = !{!"0x55f373e63380.w64.b0", !347, i64 0}
!347 = !{!"0x55f373e63380.w128.b0", !348, i64 0}
!348 = !{!"0x55f373e63380.w256.b0", !349, i64 0}
!349 = !{!"0x55f373e63380.w512.b0", !350, i64 0}
!350 = !{!"0x55f373e63380.w1024.b0", !351, i64 0}
!351 = !{!"i8", !352, i64 0}
!352 = !{!"0x55f373e63380", !8, i64 0}
!353 = !{!354, !354, i64 0}
!354 = !{!"0x55f373e632e0.w16.b0", !355, i64 0}
!355 = !{!"0x55f373e632e0.w32.b0", !356, i64 0}
!356 = !{!"0x55f373e632e0.w64.b0", !357, i64 0}
!357 = !{!"0x55f373e632e0.w128.b0", !358, i64 0}
!358 = !{!"0x55f373e632e0.w256.b0", !359, i64 0}
!359 = !{!"0x55f373e632e0.w512.b0", !360, i64 0}
!360 = !{!"0x55f373e632e0.w1024.b0", !361, i64 0}
!361 = !{!"i8", !362, i64 0}
!362 = !{!"0x55f373e632e0", !8, i64 0}
!363 = !{!364, !364, i64 0}
!364 = !{!"0x55f373e88da0.w1.b0", !365, i64 0}
!365 = !{!"0x55f373e88da0.w2.b0", !366, i64 0}
!366 = !{!"0x55f373e88da0.w4.b0", !367, i64 0}
!367 = !{!"0x55f373e88da0.w8.b0", !368, i64 0}
!368 = !{!"0x55f373e88da0.w16.b0", !369, i64 0}
!369 = !{!"0x55f373e88da0.w32.b0", !370, i64 0}
!370 = !{!"0x55f373e88da0.w64.b0", !371, i64 0}
!371 = !{!"0x55f373e88da0.w128.b0", !372, i64 0}
!372 = !{!"0x55f373e88da0.w256.b0", !373, i64 0}
!373 = !{!"0x55f373e88da0.w512.b0", !374, i64 0}
!374 = !{!"0x55f373e88da0.w1024.b0", !375, i64 0}
!375 = !{!"i8", !376, i64 0}
!376 = !{!"0x55f373e88da0", !8, i64 0}
!377 = !{!378, !378, i64 0}
!378 = !{!"0x55f373e88da0.w1.b1", !365, i64 0}
!379 = !{!380, !380, i64 0}
!380 = !{!"0x55f373e8d090.w1.b0", !381, i64 0}
!381 = !{!"0x55f373e8d090.w2.b0", !382, i64 0}
!382 = !{!"0x55f373e8d090.w4.b0", !383, i64 0}
!383 = !{!"0x55f373e8d090.w8.b0", !384, i64 0}
!384 = !{!"0x55f373e8d090.w16.b0", !385, i64 0}
!385 = !{!"0x55f373e8d090.w32.b0", !386, i64 0}
!386 = !{!"0x55f373e8d090.w64.b0", !387, i64 0}
!387 = !{!"0x55f373e8d090.w128.b0", !388, i64 0}
!388 = !{!"0x55f373e8d090.w256.b0", !389, i64 0}
!389 = !{!"0x55f373e8d090.w512.b0", !390, i64 0}
!390 = !{!"0x55f373e8d090.w1024.b0", !391, i64 0}
!391 = !{!"i64", !392, i64 0}
!392 = !{!"0x55f373e8d090", !8, i64 0}
!393 = !{!394, !394, i64 0}
!394 = !{!"0x55f373e8d090.w1.b1", !381, i64 0}
!395 = !{!396, !396, i64 0}
!396 = !{!"0x55f373e8d4f0.w1.b0", !397, i64 0}
!397 = !{!"0x55f373e8d4f0.w2.b0", !398, i64 0}
!398 = !{!"0x55f373e8d4f0.w4.b0", !399, i64 0}
!399 = !{!"0x55f373e8d4f0.w8.b0", !400, i64 0}
!400 = !{!"0x55f373e8d4f0.w16.b0", !401, i64 0}
!401 = !{!"0x55f373e8d4f0.w32.b0", !402, i64 0}
!402 = !{!"0x55f373e8d4f0.w64.b0", !403, i64 0}
!403 = !{!"0x55f373e8d4f0.w128.b0", !404, i64 0}
!404 = !{!"0x55f373e8d4f0.w256.b0", !405, i64 0}
!405 = !{!"0x55f373e8d4f0.w512.b0", !406, i64 0}
!406 = !{!"0x55f373e8d4f0.w1024.b0", !407, i64 0}
!407 = !{!"i64", !408, i64 0}
!408 = !{!"0x55f373e8d4f0", !8, i64 0}
!409 = !{!410, !410, i64 0}
!410 = !{!"0x55f373e8d4f0.w1.b1", !397, i64 0}
!411 = !{!412, !412, i64 0}
!412 = !{!"0x55f373e8f330.w1.b0", !413, i64 0}
!413 = !{!"0x55f373e8f330.w2.b0", !414, i64 0}
!414 = !{!"0x55f373e8f330.w4.b0", !415, i64 0}
!415 = !{!"0x55f373e8f330.w8.b0", !416, i64 0}
!416 = !{!"0x55f373e8f330.w16.b0", !417, i64 0}
!417 = !{!"0x55f373e8f330.w32.b0", !418, i64 0}
!418 = !{!"0x55f373e8f330.w64.b0", !419, i64 0}
!419 = !{!"0x55f373e8f330.w128.b0", !420, i64 0}
!420 = !{!"0x55f373e8f330.w256.b0", !421, i64 0}
!421 = !{!"0x55f373e8f330.w512.b0", !422, i64 0}
!422 = !{!"0x55f373e8f330.w1024.b0", !423, i64 0}
!423 = !{!"i64", !424, i64 0}
!424 = !{!"0x55f373e8f330", !8, i64 0}
!425 = !{!426, !426, i64 0}
!426 = !{!"0x55f373e8f330.w1.b1", !413, i64 0}
!427 = !{!428, !428, i64 0}
!428 = !{!"0x55f373e8f7a0.w1.b0", !429, i64 0}
!429 = !{!"0x55f373e8f7a0.w2.b0", !430, i64 0}
!430 = !{!"0x55f373e8f7a0.w4.b0", !431, i64 0}
!431 = !{!"0x55f373e8f7a0.w8.b0", !432, i64 0}
!432 = !{!"0x55f373e8f7a0.w16.b0", !433, i64 0}
!433 = !{!"0x55f373e8f7a0.w32.b0", !434, i64 0}
!434 = !{!"0x55f373e8f7a0.w64.b0", !435, i64 0}
!435 = !{!"0x55f373e8f7a0.w128.b0", !436, i64 0}
!436 = !{!"0x55f373e8f7a0.w256.b0", !437, i64 0}
!437 = !{!"0x55f373e8f7a0.w512.b0", !438, i64 0}
!438 = !{!"0x55f373e8f7a0.w1024.b0", !439, i64 0}
!439 = !{!"i64", !440, i64 0}
!440 = !{!"0x55f373e8f7a0", !8, i64 0}
!441 = !{!442, !442, i64 0}
!442 = !{!"0x55f373e8f7a0.w1.b1", !429, i64 0}
!443 = !{!444, !444, i64 0}
!444 = !{!"0x55f373e5dbf0.w1.b0", !445, i64 0}
!445 = !{!"0x55f373e5dbf0.w2.b0", !446, i64 0}
!446 = !{!"0x55f373e5dbf0.w4.b0", !447, i64 0}
!447 = !{!"0x55f373e5dbf0.w8.b0", !448, i64 0}
!448 = !{!"0x55f373e5dbf0.w16.b0", !449, i64 0}
!449 = !{!"0x55f373e5dbf0.w32.b0", !450, i64 0}
!450 = !{!"0x55f373e5dbf0.w64.b0", !451, i64 0}
!451 = !{!"0x55f373e5dbf0.w128.b0", !452, i64 0}
!452 = !{!"0x55f373e5dbf0.w256.b0", !453, i64 0}
!453 = !{!"0x55f373e5dbf0.w512.b0", !454, i64 0}
!454 = !{!"0x55f373e5dbf0.w1024.b0", !455, i64 0}
!455 = !{!"i8", !456, i64 0}
!456 = !{!"0x55f373e5dbf0", !8, i64 0}
!457 = !{!458, !458, i64 0}
!458 = !{!"0x55f373e5f4f0.w1.b0", !459, i64 0}
!459 = !{!"0x55f373e5f4f0.w2.b0", !460, i64 0}
!460 = !{!"0x55f373e5f4f0.w4.b0", !461, i64 0}
!461 = !{!"0x55f373e5f4f0.w8.b0", !462, i64 0}
!462 = !{!"0x55f373e5f4f0.w16.b0", !463, i64 0}
!463 = !{!"0x55f373e5f4f0.w32.b0", !464, i64 0}
!464 = !{!"0x55f373e5f4f0.w64.b0", !465, i64 0}
!465 = !{!"0x55f373e5f4f0.w128.b0", !466, i64 0}
!466 = !{!"0x55f373e5f4f0.w256.b0", !467, i64 0}
!467 = !{!"0x55f373e5f4f0.w512.b0", !468, i64 0}
!468 = !{!"0x55f373e5f4f0.w1024.b0", !469, i64 0}
!469 = !{!"i8", !470, i64 0}
!470 = !{!"0x55f373e5f4f0", !8, i64 0}
!471 = !{!472, !472, i64 0}
!472 = !{!"0x55f373e7edd0.w1.b0", !473, i64 0}
!473 = !{!"0x55f373e7edd0.w2.b0", !474, i64 0}
!474 = !{!"0x55f373e7edd0.w4.b0", !475, i64 0}
!475 = !{!"0x55f373e7edd0.w8.b0", !476, i64 0}
!476 = !{!"0x55f373e7edd0.w16.b0", !477, i64 0}
!477 = !{!"0x55f373e7edd0.w32.b0", !478, i64 0}
!478 = !{!"0x55f373e7edd0.w64.b0", !479, i64 0}
!479 = !{!"0x55f373e7edd0.w128.b0", !480, i64 0}
!480 = !{!"0x55f373e7edd0.w256.b0", !481, i64 0}
!481 = !{!"0x55f373e7edd0.w512.b0", !482, i64 0}
!482 = !{!"0x55f373e7edd0.w1024.b0", !483, i64 0}
!483 = !{!"i8", !484, i64 0}
!484 = !{!"0x55f373e7edd0", !8, i64 0}
!485 = !{!486, !486, i64 0}
!486 = !{!"0x55f373e7edd0.w1.b1", !473, i64 0}
!487 = !{!488, !488, i64 0}
!488 = !{!"0x55f373e84000.w1.b0", !489, i64 0}
!489 = !{!"0x55f373e84000.w2.b0", !490, i64 0}
!490 = !{!"0x55f373e84000.w4.b0", !491, i64 0}
!491 = !{!"0x55f373e84000.w8.b0", !492, i64 0}
!492 = !{!"0x55f373e84000.w16.b0", !493, i64 0}
!493 = !{!"0x55f373e84000.w32.b0", !494, i64 0}
!494 = !{!"0x55f373e84000.w64.b0", !495, i64 0}
!495 = !{!"0x55f373e84000.w128.b0", !496, i64 0}
!496 = !{!"0x55f373e84000.w256.b0", !497, i64 0}
!497 = !{!"0x55f373e84000.w512.b0", !498, i64 0}
!498 = !{!"0x55f373e84000.w1024.b0", !499, i64 0}
!499 = !{!"i64", !500, i64 0}
!500 = !{!"0x55f373e84000", !8, i64 0}
!501 = !{!502, !502, i64 0}
!502 = !{!"0x55f373e84000.w1.b1", !489, i64 0}
!503 = !{!504, !504, i64 0}
!504 = !{!"0x55f373e81e10.w1.b0", !505, i64 0}
!505 = !{!"0x55f373e81e10.w2.b0", !506, i64 0}
!506 = !{!"0x55f373e81e10.w4.b0", !507, i64 0}
!507 = !{!"0x55f373e81e10.w8.b0", !508, i64 0}
!508 = !{!"0x55f373e81e10.w16.b0", !509, i64 0}
!509 = !{!"0x55f373e81e10.w32.b0", !510, i64 0}
!510 = !{!"0x55f373e81e10.w64.b0", !511, i64 0}
!511 = !{!"0x55f373e81e10.w128.b0", !512, i64 0}
!512 = !{!"0x55f373e81e10.w256.b0", !513, i64 0}
!513 = !{!"0x55f373e81e10.w512.b0", !514, i64 0}
!514 = !{!"0x55f373e81e10.w1024.b0", !515, i64 0}
!515 = !{!"i64", !516, i64 0}
!516 = !{!"0x55f373e81e10", !8, i64 0}
!517 = !{!518, !518, i64 0}
!518 = !{!"0x55f373e81e10.w1.b1", !505, i64 0}
!519 = !{!520, !520, i64 0}
!520 = !{!"0x55f373e89de0.w1.b0", !521, i64 0}
!521 = !{!"0x55f373e89de0.w2.b0", !522, i64 0}
!522 = !{!"0x55f373e89de0.w4.b0", !523, i64 0}
!523 = !{!"0x55f373e89de0.w8.b0", !524, i64 0}
!524 = !{!"0x55f373e89de0.w16.b0", !525, i64 0}
!525 = !{!"0x55f373e89de0.w32.b0", !526, i64 0}
!526 = !{!"0x55f373e89de0.w64.b0", !527, i64 0}
!527 = !{!"0x55f373e89de0.w128.b0", !528, i64 0}
!528 = !{!"0x55f373e89de0.w256.b0", !529, i64 0}
!529 = !{!"0x55f373e89de0.w512.b0", !530, i64 0}
!530 = !{!"0x55f373e89de0.w1024.b0", !531, i64 0}
!531 = !{!"i64", !532, i64 0}
!532 = !{!"0x55f373e89de0", !8, i64 0}
!533 = !{!534, !534, i64 0}
!534 = !{!"0x55f373e89de0.w1.b1", !521, i64 0}
!535 = !{!536, !536, i64 0}
!536 = !{!"0x55f373e8a250.w1.b0", !537, i64 0}
!537 = !{!"0x55f373e8a250.w2.b0", !538, i64 0}
!538 = !{!"0x55f373e8a250.w4.b0", !539, i64 0}
!539 = !{!"0x55f373e8a250.w8.b0", !540, i64 0}
!540 = !{!"0x55f373e8a250.w16.b0", !541, i64 0}
!541 = !{!"0x55f373e8a250.w32.b0", !542, i64 0}
!542 = !{!"0x55f373e8a250.w64.b0", !543, i64 0}
!543 = !{!"0x55f373e8a250.w128.b0", !544, i64 0}
!544 = !{!"0x55f373e8a250.w256.b0", !545, i64 0}
!545 = !{!"0x55f373e8a250.w512.b0", !546, i64 0}
!546 = !{!"0x55f373e8a250.w1024.b0", !547, i64 0}
!547 = !{!"i64", !548, i64 0}
!548 = !{!"0x55f373e8a250", !8, i64 0}
!549 = !{!550, !550, i64 0}
!550 = !{!"0x55f373e8a250.w1.b1", !537, i64 0}
!551 = !{!552, !552, i64 0}
!552 = !{!"0x55f373e43a80.w16.b0", !553, i64 0}
!553 = !{!"0x55f373e43a80.w32.b0", !554, i64 0}
!554 = !{!"0x55f373e43a80.w64.b0", !555, i64 0}
!555 = !{!"0x55f373e43a80.w128.b0", !556, i64 0}
!556 = !{!"0x55f373e43a80.w256.b0", !557, i64 0}
!557 = !{!"0x55f373e43a80.w512.b0", !558, i64 0}
!558 = !{!"0x55f373e43a80.w1024.b0", !559, i64 0}
!559 = !{!"i8", !560, i64 0}
!560 = !{!"0x55f373e43a80", !8, i64 0}
!561 = !{!562, !562, i64 0}
!562 = !{!"0x55f373e417e0.w16.b0", !563, i64 0}
!563 = !{!"0x55f373e417e0.w32.b0", !564, i64 0}
!564 = !{!"0x55f373e417e0.w64.b0", !565, i64 0}
!565 = !{!"0x55f373e417e0.w128.b0", !566, i64 0}
!566 = !{!"0x55f373e417e0.w256.b0", !567, i64 0}
!567 = !{!"0x55f373e417e0.w512.b0", !568, i64 0}
!568 = !{!"0x55f373e417e0.w1024.b0", !569, i64 0}
!569 = !{!"i8", !570, i64 0}
!570 = !{!"0x55f373e417e0", !8, i64 0}
!571 = !{!572, !572, i64 0}
!572 = !{!"0x55f373e74d60.w1.b0", !573, i64 0}
!573 = !{!"0x55f373e74d60.w2.b0", !574, i64 0}
!574 = !{!"0x55f373e74d60.w4.b0", !575, i64 0}
!575 = !{!"0x55f373e74d60.w8.b0", !576, i64 0}
!576 = !{!"0x55f373e74d60.w16.b0", !577, i64 0}
!577 = !{!"0x55f373e74d60.w32.b0", !578, i64 0}
!578 = !{!"0x55f373e74d60.w64.b0", !579, i64 0}
!579 = !{!"0x55f373e74d60.w128.b0", !580, i64 0}
!580 = !{!"0x55f373e74d60.w256.b0", !581, i64 0}
!581 = !{!"0x55f373e74d60.w512.b0", !582, i64 0}
!582 = !{!"0x55f373e74d60.w1024.b0", !583, i64 0}
!583 = !{!"i8", !584, i64 0}
!584 = !{!"0x55f373e74d60", !8, i64 0}
!585 = !{!586, !586, i64 0}
!586 = !{!"0x55f373e74d60.w1.b1", !573, i64 0}
!587 = !{!588, !588, i64 0}
!588 = !{!"0x55f373e74d60.w1.b2", !589, i64 0}
!589 = !{!"0x55f373e74d60.w2.b2", !574, i64 0}
!590 = !{!591, !591, i64 0}
!591 = !{!"0x55f373e74d60.w1.b3", !589, i64 0}
!592 = !{!593, !593, i64 0}
!593 = !{!"0x55f373e7e8a0.w1.b0", !594, i64 0}
!594 = !{!"0x55f373e7e8a0.w2.b0", !595, i64 0}
!595 = !{!"0x55f373e7e8a0.w4.b0", !596, i64 0}
!596 = !{!"0x55f373e7e8a0.w8.b0", !597, i64 0}
!597 = !{!"0x55f373e7e8a0.w16.b0", !598, i64 0}
!598 = !{!"0x55f373e7e8a0.w32.b0", !599, i64 0}
!599 = !{!"0x55f373e7e8a0.w64.b0", !600, i64 0}
!600 = !{!"0x55f373e7e8a0.w128.b0", !601, i64 0}
!601 = !{!"0x55f373e7e8a0.w256.b0", !602, i64 0}
!602 = !{!"0x55f373e7e8a0.w512.b0", !603, i64 0}
!603 = !{!"0x55f373e7e8a0.w1024.b0", !604, i64 0}
!604 = !{!"i64", !605, i64 0}
!605 = !{!"0x55f373e7e8a0", !8, i64 0}
!606 = !{!607, !607, i64 0}
!607 = !{!"0x55f373e7e8a0.w1.b1", !594, i64 0}
!608 = !{!609, !609, i64 0}
!609 = !{!"0x55f373e7ec10.w1.b0", !610, i64 0}
!610 = !{!"0x55f373e7ec10.w2.b0", !611, i64 0}
!611 = !{!"0x55f373e7ec10.w4.b0", !612, i64 0}
!612 = !{!"0x55f373e7ec10.w8.b0", !613, i64 0}
!613 = !{!"0x55f373e7ec10.w16.b0", !614, i64 0}
!614 = !{!"0x55f373e7ec10.w32.b0", !615, i64 0}
!615 = !{!"0x55f373e7ec10.w64.b0", !616, i64 0}
!616 = !{!"0x55f373e7ec10.w128.b0", !617, i64 0}
!617 = !{!"0x55f373e7ec10.w256.b0", !618, i64 0}
!618 = !{!"0x55f373e7ec10.w512.b0", !619, i64 0}
!619 = !{!"0x55f373e7ec10.w1024.b0", !620, i64 0}
!620 = !{!"i64", !621, i64 0}
!621 = !{!"0x55f373e7ec10", !8, i64 0}
!622 = !{!623, !623, i64 0}
!623 = !{!"0x55f373e7ec10.w1.b1", !610, i64 0}
!624 = !{!625, !625, i64 0}
!625 = !{!"0x55f373e80ab0.w1.b0", !626, i64 0}
!626 = !{!"0x55f373e80ab0.w2.b0", !627, i64 0}
!627 = !{!"0x55f373e80ab0.w4.b0", !628, i64 0}
!628 = !{!"0x55f373e80ab0.w8.b0", !629, i64 0}
!629 = !{!"0x55f373e80ab0.w16.b0", !630, i64 0}
!630 = !{!"0x55f373e80ab0.w32.b0", !631, i64 0}
!631 = !{!"0x55f373e80ab0.w64.b0", !632, i64 0}
!632 = !{!"0x55f373e80ab0.w128.b0", !633, i64 0}
!633 = !{!"0x55f373e80ab0.w256.b0", !634, i64 0}
!634 = !{!"0x55f373e80ab0.w512.b0", !635, i64 0}
!635 = !{!"0x55f373e80ab0.w1024.b0", !636, i64 0}
!636 = !{!"i64", !637, i64 0}
!637 = !{!"0x55f373e80ab0", !8, i64 0}
!638 = !{!639, !639, i64 0}
!639 = !{!"0x55f373e80ab0.w1.b1", !626, i64 0}
!640 = !{!641, !641, i64 0}
!641 = !{!"0x55f373e80f20.w1.b0", !642, i64 0}
!642 = !{!"0x55f373e80f20.w2.b0", !643, i64 0}
!643 = !{!"0x55f373e80f20.w4.b0", !644, i64 0}
!644 = !{!"0x55f373e80f20.w8.b0", !645, i64 0}
!645 = !{!"0x55f373e80f20.w16.b0", !646, i64 0}
!646 = !{!"0x55f373e80f20.w32.b0", !647, i64 0}
!647 = !{!"0x55f373e80f20.w64.b0", !648, i64 0}
!648 = !{!"0x55f373e80f20.w128.b0", !649, i64 0}
!649 = !{!"0x55f373e80f20.w256.b0", !650, i64 0}
!650 = !{!"0x55f373e80f20.w512.b0", !651, i64 0}
!651 = !{!"0x55f373e80f20.w1024.b0", !652, i64 0}
!652 = !{!"i64", !653, i64 0}
!653 = !{!"0x55f373e80f20", !8, i64 0}
!654 = !{!655, !655, i64 0}
!655 = !{!"0x55f373e80f20.w1.b1", !642, i64 0}
!656 = !{!657, !657, i64 0}
!657 = !{!"0x55f373e82e00.w1.b0", !658, i64 0}
!658 = !{!"0x55f373e82e00.w2.b0", !659, i64 0}
!659 = !{!"0x55f373e82e00.w4.b0", !660, i64 0}
!660 = !{!"0x55f373e82e00.w8.b0", !661, i64 0}
!661 = !{!"0x55f373e82e00.w16.b0", !662, i64 0}
!662 = !{!"0x55f373e82e00.w32.b0", !663, i64 0}
!663 = !{!"0x55f373e82e00.w64.b0", !664, i64 0}
!664 = !{!"0x55f373e82e00.w128.b0", !665, i64 0}
!665 = !{!"0x55f373e82e00.w256.b0", !666, i64 0}
!666 = !{!"0x55f373e82e00.w512.b0", !667, i64 0}
!667 = !{!"0x55f373e82e00.w1024.b0", !668, i64 0}
!668 = !{!"i64", !669, i64 0}
!669 = !{!"0x55f373e82e00", !8, i64 0}
!670 = !{!671, !671, i64 0}
!671 = !{!"0x55f373e830e0.w1.b0", !672, i64 0}
!672 = !{!"0x55f373e830e0.w2.b0", !673, i64 0}
!673 = !{!"0x55f373e830e0.w4.b0", !674, i64 0}
!674 = !{!"0x55f373e830e0.w8.b0", !675, i64 0}
!675 = !{!"0x55f373e830e0.w16.b0", !676, i64 0}
!676 = !{!"0x55f373e830e0.w32.b0", !677, i64 0}
!677 = !{!"0x55f373e830e0.w64.b0", !678, i64 0}
!678 = !{!"0x55f373e830e0.w128.b0", !679, i64 0}
!679 = !{!"0x55f373e830e0.w256.b0", !680, i64 0}
!680 = !{!"0x55f373e830e0.w512.b0", !681, i64 0}
!681 = !{!"0x55f373e830e0.w1024.b0", !682, i64 0}
!682 = !{!"i64", !683, i64 0}
!683 = !{!"0x55f373e830e0", !8, i64 0}
!684 = !{!685, !685, i64 0}
!685 = !{!"0x55f373e84d80.w1.b0", !686, i64 0}
!686 = !{!"0x55f373e84d80.w2.b0", !687, i64 0}
!687 = !{!"0x55f373e84d80.w4.b0", !688, i64 0}
!688 = !{!"0x55f373e84d80.w8.b0", !689, i64 0}
!689 = !{!"0x55f373e84d80.w16.b0", !690, i64 0}
!690 = !{!"0x55f373e84d80.w32.b0", !691, i64 0}
!691 = !{!"0x55f373e84d80.w64.b0", !692, i64 0}
!692 = !{!"0x55f373e84d80.w128.b0", !693, i64 0}
!693 = !{!"0x55f373e84d80.w256.b0", !694, i64 0}
!694 = !{!"0x55f373e84d80.w512.b0", !695, i64 0}
!695 = !{!"0x55f373e84d80.w1024.b0", !696, i64 0}
!696 = !{!"i64", !697, i64 0}
!697 = !{!"0x55f373e84d80", !8, i64 0}
!698 = !{!699, !699, i64 0}
!699 = !{!"0x55f373e84d80.w1.b1", !686, i64 0}
!700 = !{!701, !701, i64 0}
!701 = !{!"0x55f373e851b0.w1.b0", !702, i64 0}
!702 = !{!"0x55f373e851b0.w2.b0", !703, i64 0}
!703 = !{!"0x55f373e851b0.w4.b0", !704, i64 0}
!704 = !{!"0x55f373e851b0.w8.b0", !705, i64 0}
!705 = !{!"0x55f373e851b0.w16.b0", !706, i64 0}
!706 = !{!"0x55f373e851b0.w32.b0", !707, i64 0}
!707 = !{!"0x55f373e851b0.w64.b0", !708, i64 0}
!708 = !{!"0x55f373e851b0.w128.b0", !709, i64 0}
!709 = !{!"0x55f373e851b0.w256.b0", !710, i64 0}
!710 = !{!"0x55f373e851b0.w512.b0", !711, i64 0}
!711 = !{!"0x55f373e851b0.w1024.b0", !712, i64 0}
!712 = !{!"i64", !713, i64 0}
!713 = !{!"0x55f373e851b0", !8, i64 0}
!714 = !{!715, !715, i64 0}
!715 = !{!"0x55f373e851b0.w1.b1", !702, i64 0}
!716 = !{!717, !717, i64 0}
!717 = !{!"i8", !718, i64 0}
!718 = !{!"0x55f373e458a0", !8, i64 0}
!719 = !{!720, !720, i64 0}
!720 = !{!"0x55f373e469f0.w1.b0", !721, i64 0}
!721 = !{!"0x55f373e469f0.w2.b0", !722, i64 0}
!722 = !{!"0x55f373e469f0.w4.b0", !723, i64 0}
!723 = !{!"0x55f373e469f0.w8.b0", !724, i64 0}
!724 = !{!"0x55f373e469f0.w16.b0", !725, i64 0}
!725 = !{!"0x55f373e469f0.w32.b0", !726, i64 0}
!726 = !{!"0x55f373e469f0.w64.b0", !727, i64 0}
!727 = !{!"0x55f373e469f0.w128.b0", !728, i64 0}
!728 = !{!"0x55f373e469f0.w256.b0", !729, i64 0}
!729 = !{!"0x55f373e469f0.w512.b0", !730, i64 0}
!730 = !{!"0x55f373e469f0.w1024.b0", !731, i64 0}
!731 = !{!"i8", !732, i64 0}
!732 = !{!"0x55f373e469f0", !8, i64 0}
!733 = !{!734, !734, i64 0}
!734 = !{!"0x55f373e296c0.w1.b0", !735, i64 0}
!735 = !{!"0x55f373e296c0.w2.b0", !736, i64 0}
!736 = !{!"0x55f373e296c0.w4.b0", !737, i64 0}
!737 = !{!"0x55f373e296c0.w8.b0", !738, i64 0}
!738 = !{!"0x55f373e296c0.w16.b0", !739, i64 0}
!739 = !{!"0x55f373e296c0.w32.b0", !740, i64 0}
!740 = !{!"0x55f373e296c0.w64.b0", !741, i64 0}
!741 = !{!"0x55f373e296c0.w128.b0", !742, i64 0}
!742 = !{!"0x55f373e296c0.w256.b0", !743, i64 0}
!743 = !{!"0x55f373e296c0.w512.b0", !744, i64 0}
!744 = !{!"0x55f373e296c0.w1024.b0", !745, i64 0}
!745 = !{!"i8", !746, i64 0}
!746 = !{!"0x55f373e296c0", !8, i64 0}
