##############################################################################################
# This Makefile was automatically generated from a Flow Studio project
# Do not edit manually
##############################################################################################


-include Makefile.pre

CC = ppc-morphos-gcc-12
CINCLUDES = -Idependencies/sword/include
CXX = ppc-morphos-g++-12
CPPINCLUDES = -Idependencies/sword/include
OBJCC = ppc-morphos-clang
OBJCINCLUDES = -Idependencies/sword/include
CFLAGS += -MD -MP
CPPFLAGS += -MD -MP
OBJCFLAGS += -MD -MP

ifdef GCC_FLOWCOLORS
export GCC_COLORS = $(GCC_FLOWCOLORS)
export TERM = xterm
endif

LD=ppc-morphos-g++

AR=ppc-morphos-ar
RANLIB=ppc-morphos-ranlib

CLIB_RELEASE = -noixemul
CC_DEBUG = ppc-morphos-gcc-9
CFLAGS_DEBUG = -g -O0
CINCLUDES_DEBUG = -Idependencies/sword/include
CXX_DEBUG = ppc-morphos-g++-9
CPPFLAGS_DEBUG = -g -O0
CPPINCLUDES_DEBUG = -Idependencies/sword/include
OBJCC_DEBUG = ppc-morphos-clang
OBJCINCLUDES_DEBUG = -Idependencies/sword/include
CFLAGS_DEBUG += -MD -MP
CPPFLAGS_DEBUG += -MD -MP
OBJCFLAGS_DEBUG += -MD -MP

CLIB_DEBUG = -noixemul
LD_DEBUG=ppc-morphos-g++
LDFLAGS_DEBUG = -g


SOURCES = dependencies/sword/src/keys/listkey.cpp \
	dependencies/sword/src/keys/strkey.cpp dependencies/sword/src/keys/swkey.cpp \
	dependencies/sword/src/keys/treekey.cpp dependencies/sword/src/keys/treekeyidx.cpp \
	dependencies/sword/src/keys/versekey.cpp dependencies/sword/src/keys/versetreekey.cpp \
	dependencies/sword/src/mgr/curlftpt.cpp dependencies/sword/src/mgr/curlhttpt.cpp \
	dependencies/sword/src/mgr/encfiltmgr.cpp dependencies/sword/src/mgr/filemgr.cpp \
	dependencies/sword/src/mgr/installmgr.cpp dependencies/sword/src/mgr/localemgr.cpp \
	dependencies/sword/src/mgr/markupfiltmgr.cpp dependencies/sword/src/mgr/remotetrans.cpp \
	dependencies/sword/src/mgr/rtranspgdrive.cpp dependencies/sword/src/mgr/stringmgr.cpp \
	dependencies/sword/src/mgr/swcacher.cpp dependencies/sword/src/mgr/swconfig.cpp \
	dependencies/sword/src/mgr/swfiltermgr.cpp dependencies/sword/src/mgr/swlocale.cpp dependencies/sword/src/mgr/swmgr.cpp \
	dependencies/sword/src/mgr/swsearchable.cpp dependencies/sword/src/mgr/versificationmgr.cpp \
	dependencies/sword/src/modules/comments/hrefcom/hrefcom.cpp dependencies/sword/src/modules/common/bz2comprs.cpp \
	dependencies/sword/src/modules/common/entriesblk.cpp dependencies/sword/src/modules/common/lzsscomprs.cpp \
	dependencies/sword/src/modules/common/rawstr.cpp dependencies/sword/src/modules/common/rawstr4.cpp \
	dependencies/sword/src/modules/common/rawverse.cpp dependencies/sword/src/modules/common/rawverse4.cpp \
	dependencies/sword/src/modules/common/sapphire.cpp dependencies/sword/src/modules/common/swcipher.cpp \
	dependencies/sword/src/modules/common/swcomprs.cpp dependencies/sword/src/modules/common/xzcomprs.cpp \
	dependencies/sword/src/modules/common/zipcomprs.cpp dependencies/sword/src/modules/common/zstr.cpp \
	dependencies/sword/src/modules/common/zverse.cpp dependencies/sword/src/modules/common/zverse4.cpp \
	dependencies/sword/src/modules/filters/cipherfil.cpp dependencies/sword/src/modules/filters/gbffootnotes.cpp \
	dependencies/sword/src/modules/filters/gbfheadings.cpp dependencies/sword/src/modules/filters/gbfhtml.cpp \
	dependencies/sword/src/modules/filters/gbfhtmlhref.cpp dependencies/sword/src/modules/filters/gbflatex.cpp \
	dependencies/sword/src/modules/filters/gbfmorph.cpp dependencies/sword/src/modules/filters/gbfosis.cpp \
	dependencies/sword/src/modules/filters/gbfplain.cpp dependencies/sword/src/modules/filters/gbfredletterwords.cpp \
	dependencies/sword/src/modules/filters/gbfrtf.cpp dependencies/sword/src/modules/filters/gbfstrongs.cpp \
	dependencies/sword/src/modules/filters/gbfthml.cpp dependencies/sword/src/modules/filters/gbfwebif.cpp \
	dependencies/sword/src/modules/filters/gbfwordjs.cpp dependencies/sword/src/modules/filters/gbfxhtml.cpp \
	dependencies/sword/src/modules/filters/greeklexattribs.cpp dependencies/sword/src/modules/filters/latin1utf16.cpp \
	dependencies/sword/src/modules/filters/latin1utf8.cpp dependencies/sword/src/modules/filters/osisenum.cpp \
	dependencies/sword/src/modules/filters/osisfootnotes.cpp dependencies/sword/src/modules/filters/osisglosses.cpp \
	dependencies/sword/src/modules/filters/osisheadings.cpp dependencies/sword/src/modules/filters/osishtmlhref.cpp \
	dependencies/sword/src/modules/filters/osislatex.cpp dependencies/sword/src/modules/filters/osislemma.cpp \
	dependencies/sword/src/modules/filters/osismorph.cpp dependencies/sword/src/modules/filters/osismorphsegmentation.cpp \
	dependencies/sword/src/modules/filters/osisosis.cpp dependencies/sword/src/modules/filters/osisplain.cpp \
	dependencies/sword/src/modules/filters/osisredletterwords.cpp dependencies/sword/src/modules/filters/osisreferencelinks.cpp \
	dependencies/sword/src/modules/filters/osisrtf.cpp dependencies/sword/src/modules/filters/osisscripref.cpp \
	dependencies/sword/src/modules/filters/osisstrongs.cpp dependencies/sword/src/modules/filters/osisvariants.cpp \
	dependencies/sword/src/modules/filters/osiswebif.cpp dependencies/sword/src/modules/filters/osiswordjs.cpp \
	dependencies/sword/src/modules/filters/osisxhtml.cpp dependencies/sword/src/modules/filters/osisxlit.cpp \
	dependencies/sword/src/modules/filters/papyriplain.cpp dependencies/sword/src/modules/filters/rtfhtml.cpp \
	dependencies/sword/src/modules/filters/scsuutf8.cpp dependencies/sword/src/modules/filters/swbasicfilter.cpp \
	dependencies/sword/src/modules/filters/swoptfilter.cpp dependencies/sword/src/modules/filters/teihtmlhref.cpp \
	dependencies/sword/src/modules/filters/teilatex.cpp dependencies/sword/src/modules/filters/teiplain.cpp \
	dependencies/sword/src/modules/filters/teirtf.cpp dependencies/sword/src/modules/filters/teixhtml.cpp \
	dependencies/sword/src/modules/filters/thmlfootnotes.cpp dependencies/sword/src/modules/filters/thmlgbf.cpp \
	dependencies/sword/src/modules/filters/thmlheadings.cpp dependencies/sword/src/modules/filters/thmlhtml.cpp \
	dependencies/sword/src/modules/filters/thmlhtmlhref.cpp dependencies/sword/src/modules/filters/thmllatex.cpp \
	dependencies/sword/src/modules/filters/thmllemma.cpp dependencies/sword/src/modules/filters/thmlmorph.cpp \
	dependencies/sword/src/modules/filters/thmlosis.cpp dependencies/sword/src/modules/filters/thmlplain.cpp \
	dependencies/sword/src/modules/filters/thmlrtf.cpp dependencies/sword/src/modules/filters/thmlscripref.cpp \
	dependencies/sword/src/modules/filters/thmlstrongs.cpp dependencies/sword/src/modules/filters/thmlvariants.cpp \
	dependencies/sword/src/modules/filters/thmlwebif.cpp dependencies/sword/src/modules/filters/thmlwordjs.cpp \
	dependencies/sword/src/modules/filters/thmlxhtml.cpp dependencies/sword/src/modules/filters/unicodertf.cpp \
	dependencies/sword/src/modules/filters/utf16utf8.cpp dependencies/sword/src/modules/filters/utf8arabicpoints.cpp \
	dependencies/sword/src/modules/filters/utf8arshaping.cpp dependencies/sword/src/modules/filters/utf8bidireorder.cpp \
	dependencies/sword/src/modules/filters/utf8cantillation.cpp dependencies/sword/src/modules/filters/utf8greekaccents.cpp \
	dependencies/sword/src/modules/filters/utf8hebrewpoints.cpp dependencies/sword/src/modules/filters/utf8html.cpp \
	dependencies/sword/src/modules/filters/utf8latin1.cpp dependencies/sword/src/modules/filters/utf8nfc.cpp \
	dependencies/sword/src/modules/filters/utf8nfkd.cpp dependencies/sword/src/modules/filters/utf8scsu.cpp \
	dependencies/sword/src/modules/filters/utf8transliterator.cpp dependencies/sword/src/modules/filters/utf8utf16.cpp \
	dependencies/sword/src/modules/genbook/rawgenbook/rawgenbook.cpp dependencies/sword/src/modules/genbook/swgenbook.cpp \
	dependencies/sword/src/modules/lexdict/rawld/rawld.cpp dependencies/sword/src/modules/lexdict/rawld4/rawld4.cpp \
	dependencies/sword/src/modules/lexdict/swld.cpp dependencies/sword/src/modules/lexdict/zld/zld.cpp \
	dependencies/sword/src/modules/swmodule.cpp dependencies/sword/src/modules/texts/rawtext/rawtext.cpp \
	dependencies/sword/src/modules/texts/rawtext4/rawtext4.cpp dependencies/sword/src/modules/texts/swtext.cpp \
	dependencies/sword/src/modules/texts/ztext/ztext.cpp dependencies/sword/src/modules/texts/ztext4/ztext4.cpp \
	dependencies/sword/src/utilfuns/regex.c dependencies/sword/src/utilfuns/roman.cpp \
	dependencies/sword/src/utilfuns/swbuf.cpp dependencies/sword/src/utilfuns/swobject.cpp \
	dependencies/sword/src/utilfuns/swversion.cpp dependencies/sword/src/utilfuns/url.cpp \
	dependencies/sword/src/utilfuns/utilstr.cpp dependencies/sword/src/utilfuns/utilxml.cpp

C_SOURCES := $(filter %.c,$(SOURCES))
CXX_SOURCES := $(filter %.cpp %.cxx %.cc,$(SOURCES))
OBJC_SOURCES := $(filter %.m,$(SOURCES))

.PHONY: all
all: RELEASE

OBJSDIR_RELEASE = 
EXECDIR_RELEASE = 
C_OBJS_RELEASE=$(C_SOURCES:%.c=$(OBJSDIR_RELEASE)%_RELEASE.o)
CXX_OBJS_RELEASE=$(patsubst %.cxx,$(OBJSDIR_RELEASE)%_RELEASE.o,$(patsubst %.cc,$(OBJSDIR_RELEASE)%_RELEASE.o,$(patsubst %.cpp,$(OBJSDIR_RELEASE)%_RELEASE.o,$(CXX_SOURCES))))
OBJC_OBJS_RELEASE=$(OBJC_SOURCES:%.m=$(OBJSDIR_RELEASE)%_RELEASE.mo)
ALL_OBJS_RELEASE = $(C_OBJS_RELEASE) $(CXX_OBJS_RELEASE) $(OBJC_OBJS_RELEASE)
ALL_OBJDIRS_RELEASE = $(dir $(ALL_OBJS_RELEASE))

.PHONY: MKDIR_RELEASE
MKDIR_RELEASE:
	 @mkdir -p $(ALL_OBJDIRS_RELEASE)

$(OBJSDIR_RELEASE)%_RELEASE.o : %.c ; @echo compiling $@ ; $(CC) $(CLIB_RELEASE) -c $(CFLAGS) $(CINCLUDES) $(CDEFINES) $< -o $@
$(OBJSDIR_RELEASE)%_RELEASE.o : %.cxx ; @echo compiling $@ ; $(CXX) $(CLIB_RELEASE) -c $(CFLAGS) $(CPPINCLUDES) $(CPPDEFINES) $< -o $@
$(OBJSDIR_RELEASE)%_RELEASE.o : %.cc ; @echo compiling $@ ; $(CXX) $(CLIB_RELEASE) -c $(CPPFLAGS) $(CPPINCLUDES) $(CPPDEFINES) $< -o $@
$(OBJSDIR_RELEASE)%_RELEASE.o : %.cpp ; @echo compiling $@ ; $(CXX) $(CLIB_RELEASE) -c $(CPPFLAGS) $(CPPINCLUDES) $(CPPDEFINES) $< -o $@
$(OBJSDIR_RELEASE)%_RELEASE.mo : %.m ; @echo compiling $@ ; $(OBJCC) $(CLIB_RELEASE) -c $(OBJCFLAGS) $(OBJCINCLUDES) $(OBJCDEFINES) $< -o $@

EXECNAME_RELEASE = Sword
.PHONY: RELEASE
RELEASE: MKDIR_RELEASE  $(EXECNAME_RELEASE) 
	
$(EXECNAME_RELEASE): $(ALL_OBJS_RELEASE) 
	$(AR) cru $@ $(ALL_OBJS_RELEASE)
	$(RANLIB) $@

-include $(patsubst %.c,$(OBJSDIR_RELEASE)%_RELEASE.d,$(C_SOURCES))
-include $(patsubst %.cxx,$(OBJSDIR_RELEASE)%_RELEASE.d,$(patsubst %.cc,$(OBJSDIR_RELEASE)%_RELEASE.d,$(patsubst %.cpp,$(OBJSDIR_RELEASE)%_RELEASE.d,$(CXX_SOURCES))))
-include $(patsubst %.m,$(OBJSDIR_RELEASE)%_RELEASE.d,$(OBJC_SOURCES))

OBJSDIR_DEBUG = 
EXECDIR_DEBUG = 
C_OBJS_DEBUG=$(C_SOURCES:%.c=$(OBJSDIR_DEBUG)%_DEBUG.o)
CXX_OBJS_DEBUG=$(patsubst %.cxx,$(OBJSDIR_DEBUG)%_DEBUG.o,$(patsubst %.cc,$(OBJSDIR_DEBUG)%_DEBUG.o,$(patsubst %.cpp,$(OBJSDIR_DEBUG)%_DEBUG.o,$(CXX_SOURCES))))
OBJC_OBJS_DEBUG=$(OBJC_SOURCES:%.m=$(OBJSDIR_DEBUG)%_DEBUG.mo)
ALL_OBJS_DEBUG = $(C_OBJS_DEBUG) $(CXX_OBJS_DEBUG) $(OBJC_OBJS_DEBUG)
ALL_OBJDIRS_DEBUG = $(dir $(ALL_OBJS_DEBUG))

.PHONY: MKDIR_DEBUG
MKDIR_DEBUG:
	 @mkdir -p $(ALL_OBJDIRS_DEBUG)

$(OBJSDIR_DEBUG)%_DEBUG.o : %.c ; @echo compiling $@ ; $(CC_DEBUG) $(CLIB_DEBUG) -c $(CFLAGS_DEBUG) $(CINCLUDES_DEBUG) $(CDEFINES_DEBUG) $< -o $@
$(OBJSDIR_DEBUG)%_DEBUG.o : %.cxx ; @echo compiling $@ ; $(CXX_DEBUG) $(CLIB_DEBUG) -c $(CFLAGS_DEBUG) $(CPPINCLUDES_DEBUG) $(CPPDEFINES_DEBUG) $< -o $@
$(OBJSDIR_DEBUG)%_DEBUG.o : %.cc ; @echo compiling $@ ; $(CXX_DEBUG) $(CLIB_DEBUG) -c $(CPPFLAGS_DEBUG) $(CPPINCLUDES_DEBUG) $(CPPDEFINES_DEBUG) $< -o $@
$(OBJSDIR_DEBUG)%_DEBUG.o : %.cpp ; @echo compiling $@ ; $(CXX_DEBUG) $(CLIB_DEBUG) -c $(CPPFLAGS_DEBUG) $(CPPINCLUDES_DEBUG) $(CPPDEFINES_DEBUG) $< -o $@
$(OBJSDIR_DEBUG)%_DEBUG.mo : %.m ; @echo compiling $@ ; $(OBJCC_DEBUG) $(CLIB_DEBUG) -c $(OBJCFLAGS_DEBUG) $(OBJCINCLUDES_DEBUG) $(OBJCDEFINES_DEBUG) $< -o $@

EXECNAME_DEBUG = Sword_DEBUG
.PHONY: DEBUG
DEBUG: MKDIR_DEBUG  $(EXECNAME_DEBUG) 
	
$(EXECNAME_DEBUG): $(ALL_OBJS_DEBUG) 
	$(AR) cru $@ $(ALL_OBJS_DEBUG)
	$(RANLIB) $@

-include $(patsubst %.c,$(OBJSDIR_DEBUG)%_DEBUG.d,$(C_SOURCES))
-include $(patsubst %.cxx,$(OBJSDIR_DEBUG)%_DEBUG.d,$(patsubst %.cc,$(OBJSDIR_DEBUG)%_DEBUG.d,$(patsubst %.cpp,$(OBJSDIR_DEBUG)%_DEBUG.d,$(CXX_SOURCES))))
-include $(patsubst %.m,$(OBJSDIR_DEBUG)%_DEBUG.d,$(OBJC_SOURCES))



.PHONY: clean
clean:
	rm -f $(EXECDIR_RELEASE)$(EXECNAME_RELEASE) $(OBJSDIR_RELEASE)*.o $(OBJSDIR_RELEASE)*.mo $(OBJSDIR_RELEASE)*.d $(EXECDIR_DEBUG)$(EXECNAME_DEBUG) $(OBJSDIR_DEBUG)*.o $(OBJSDIR_DEBUG)*.mo $(OBJSDIR_DEBUG)*.d

