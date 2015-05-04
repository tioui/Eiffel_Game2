TOP = ..
DIR = $dir_sep
OUTDIR= .
INDIR= .
CC = $cc
OUTPUT_CMD = $output_cmd
CFLAGS = -I"$rt_include" -I..$(DIR)spec$(DIR)include -I. \
	-I..$(DIR)..$(DIR)C_lib_win$(DIR)libsndfile$(DIR)include  -I..$(DIR)..$(DIR)cpf$(DIR)spec$(DIR)include
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
OBJECTS = sndfile_additions.$obj
MT_OBJECTS = MTsndfile_additions.$obj
IL_OBJECTS = ILsndfile_additions.$obj

.c.$obj:
	$(CC) -c $(JCFLAGS) $<

all:: $output_libraries
	$(MAKE) clean

standard:: sndfile_additions.lib ilsndfile_additions.lib
mtstandard:: mtsndfile_additions.lib

clean:
	$(RM) *.$obj
	$(RM) *.lib

sndfile_additions.lib: $(OBJECTS)
	$alib_line
# Bugfix for MinGW concerning file order (msc won't find the command and with the "-" prefix, it is not fatal)
	-"$compiler_path/bin/ar" x ..$(DIR)..$(DIR)cpf$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib$(DIR)cpf_additions.lib
	-"$compiler_path/bin/ar" rc $@ cpf_additions.o
# End bugfix
	$(MKDIR) ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib
	$(MV) $@ ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib$(DIR)$@

mtsndfile_additions.lib: $(MT_OBJECTS)
	$alib_line
# Bugfix for MinGW concerning file order (msc won't find the command and with the "-" prefix, it is not fatal)
	-"$compiler_path/bin/ar" x ..$(DIR)..$(DIR)cpf$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib$(DIR)mtcpf_additions.lib
	-"$compiler_path/bin/ar" rc $@ mtcpf_additions.o
# End bugfix
	$(MKDIR) ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib
	$(MV) $@ ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib$(DIR)$@

ilsndfile_additions.lib: $(IL_OBJECTS)
	$alib_line
# Bugfix for MinGW concerning file order (msc won't find the command and with the "-" prefix, it is not fatal)
	-"$compiler_path/bin/ar" x ..$(DIR)..$(DIR)cpf$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib$(DIR)cpf_additions.lib
	-"$compiler_path/bin/ar" rc $@ cpf_additions.o
# End bugfix
	$(MKDIR) ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib
	$(MV) $@ ..$(DIR)spec$(DIR)$(ISE_C_COMPILER)$(DIR)$(ISE_PLATFORM)$(DIR)lib$(DIR)$@

#Multithreaded targets.
MTsndfile_additions.$obj: sndfile_additions.c
	$(CC) $(JMTCFLAGS) $(OUTPUT_CMD)$@ -c $?

#.NET targets.
ILsndfile_additions.$obj: sndfile_additions.c
	$(CC) $(JILCFLAGS) $(OUTPUT_CMD)$@ -c $?
