#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# This is a makefile for building a executable and other files for two platforms
# using native compiler and another cross compiler 
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      c1m2.out c1m2.o c1m2.map %.o %.asm %.i 
#
# Platform Overrides:
#      First PLATFORM is HOST (Native compiler)  and the second one is MSP432
#	(Cross compiler)
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
PLATFORM = 
TARGET= c1m2

# Architectures Specific Flags
LINKER_FILE = ../msp432p401r.lds 
CPU = cortex-m4
ARCH = thumb
SPECS = nosys.specs

# Compiler Flags and Defines

ifeq ($(PLATFORM),HOST)
CC = gcc
LD =
LDFLAGS =
CFLAGS = -std=c99  -Wall -DHOST $(INCLUDES)
CPPFLAGs = -std=c99  -Wall -DHOST  -E
SIZE=size

# etc
else
CC = arm-none-eabi-gcc
LD =  arm-none-eabi-ld
LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE)
CFLAGS = -mcpu=$(CPU) --specs=$(SPECS) -m$(ARCH) $(INCLUDES)  -std=c99 -DMSP432
CPPFLAGs = -mcpu=$(CPU) -std=c99  -E -DMSP432
SIZE= arm-none-eabi-size

#etc
endif 

OBJ = $(SOURCES:.c=.o)

%.i : %.c
	$(CC) $(CFLAGS) -E -o $@ $^

%.asm : %.c
	$(CC) $(CFLAGS) -S -o $@ $^

%.o : %.c 
	$(CC) $(CFLAGS) -c -o $@ $^

DEPS = $(SRCS:.c=.d)

%.d : %.c
	$(CC) $(INCLUDES) -M $< $(CFLAGS) -o $@



.PHONY: build
build: $(TARGET).out $(TARGET).map SIZE 

$(TARGET).out: $(OBJ)
	$(CC)  $(CFLAGS) -o $@ $(OBJ)

$(TARGET).map: $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(OBJ) 

SIZE:
	$(SIZE) --format=Berkeley $(TARGET).out

.PHONY: compile-all
compile-all: $(TARGET).o

$(TARGET).o: $(OBJ)
	$(CC) $(CFLAGS) -c -o $@ $^

.PHONY: clean
clean: 
	rm -f $(TARGET).out $(TARGET).map $(TARGET).o $(OBJ) *.i *.asm *.o *.d
