TOP = ..
DIR = $dir_sep
OUTDIR= .
INDIR= .
CC = $cc
OUTPUT_CMD = $output_cmd
CFLAGS = -I..$(DIR)spec$(DIR)include
JCFLAGS = $(CFLAGS) $ccflags $optimize
JMTCFLAGS = $(CFLAGS) $mtccflags $optimize
JILCFLAGS = $(CFLAGS) $mtccflags $optimize -DEIF_IL_DLL
LN = copy
MV = $mv
RM = $del
MAKE = $make
MKDIR = $mkdir
LINK = $link32
DLL_FLAGS = $dll_flags
DLL_LIBS = $dll_libs
OBJECTS = cpf_addition.$obj
MT_OBJECTS = MTcpf_addition.$obj
IL_OBJECTS = ILcpf_addition.$obj

.c.$obj:
	$(CC) -c $(JCFLAGS) $<

all:: $output_libraries
	$(MAKE) clean

standard:: cpf_addition.lib ilcpf_addition.lib
mtstandard:: mtcpf_addition.lib

clean:
	$(RM) *.$obj
	$(RM) *.lib

cpf_addition.lib: $(OBJECTS)
	$alib_line
	$(MKDIR) ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib
	$(MV) $@ ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib$(DIR)$@

mtcpf_addition.lib: $(MT_OBJECTS)
	$alib_line
	$(MKDIR) ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib
	$(MV) $@ ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib$(DIR)$@

ilcpf_addition.lib: $(IL_OBJECTS)
	$alib_line
	$(MKDIR) ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib
	$(MV) $@ ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib$(DIR)$@

#Multithreaded targets.
MTcpf_addition.$obj: cpf_addition.c
	$(CC) $(JMTCFLAGS) $(OUTPUT_CMD)$@ -c $?

#.NET targets.
ILcpf_addition.$obj: cpf_addition.c
	$(CC) $(JILCFLAGS) $(OUTPUT_CMD)$@ -c $?
