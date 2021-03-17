CC_FILE = new_runtime
NAME = sine 

GCC = riscv64-unknown-linux-gnu-g++
CLANG = clang++
TARGET = riscv64-unknown-linux-gnu
LIB = /home/shenao/riscv64-linux/riscv64/lib/gcc/riscv64-unknown-linux-gnu/10.0.1 
LIBS = -ltvm_runtime 

TVM_ROOT=/home/shenao/tvm/tvm
LIB_ROOT=/home/shenao/tvm/tvm_temp
DMLC_CORE=${TVM_ROOT}/3rdparty/dmlc-core

PKG_CFLAGS = -O2 -fPIC\
	-I${LIB_ROOT}/include\
	-I${DMLC_CORE}/include\
	-I${LIB_ROOT}/3rdparty/dlpack/include

PKG_LDFLAGS = -L${LIB_ROOT}/build_linux

PYTHON_FILE = ../script/create.py
INPUT_FILE = ../model/$(NAME).ll
OUTPUT_FILE = ../model/lib$(NAME)_riscv.so
BIN_IN_FILE = ../src/$(CC_FILE).cc
BIN_OUT_FILE = ../bin/$(NAME)_runtime

.PHONY: all, clean

all:$(OUTPUT_FILE) $(BIN_OUT_FILE)


$(INPUT_FILE):$(PYTHON_FILE)
	python3 $^

$(OUTPUT_FILE):$(INPUT_FILE)
	$(CLANG) --sysroot=$(SYSROOT) -shared -fPIC $^ -o $@ --target=$(TARGET) -L$(LIB)

$(BIN_OUT_FILE):$(BIN_IN_FILE)
	$(GCC) $(PKG_CFLAGS) -o $@ $^ $(LIBS) $(PKG_LDFLAGS)

clean:
	rm $(BIN_OUT_FILE)
