SRCS = CminusScanner.c CminusParser.c
LEX_SRCS = CminusScanner.l
YACC_SRCS = CminusParser.y
CC = gcc

OBJS = $(addsuffix .o,$(basename $(SRCS)))

ENV = -g

ARCHIVE = libparser$(ENV).a

INCLUDES = -I. \
           -I.. \
           -I../util \
           -I../codegen

CFLAGS = $(INCLUDES) -DYYERROR_VERBOSE $(ENV)
LEX    = flex
LFLAGS =
YACC   = bison
YFLAGS =
ARFLAGS = ru

RM = /bin/rm -f

.SILENT:

LEX_YACC_DEPENDS = $(addprefix .d_,$(LEX_SRCS )) $(addprefix .d_,$(YACC_SRCS))

DEPENDS = $(addprefix .d_, $(basename $(SRCS))) $(LEX_YACC_DEPENDS)

LP = (
RP = )
ARCHIVE_OBJS = $(addsuffix $(RP),$(addprefix $(ARCHIVE)$(LP),$(notdir $(OBJS))))

.SUFFIXES: .c .y .l

$(ARCHIVE): $(ARCHIVE_OBJS)
	echo "Generating" $(ARCHIVE)
	ranlib $(ARCHIVE)

.PHONY: clean

clean:
	$(RM) $(ARCHIVE)

.c.o:
	echo "Compiling" $<
	$(CC) -c $(CFLAGS) $<

.y.c:
	echo "Making $@..."
	$(YACC) $(YFLAGS) -o $@ $<

.l.c:
	echo  "Making $@..."
	$(LEX) -o $@ $<

(%.o) : %.o
	$(AR) $(ARFLAGS) $@ $<
	$(RM) $<

.d_%.l: %.l
	echo "$(basename $<).c: $<" > $@

.d_%.y: %.y
	echo "$(basename $<).c: $<" > $@

.d_%: %.c
	echo  "Updating dependences for" $< "..."
	$(CPP) -MM -MT '$(ARCHIVE)($(basename $<).o)' $(INCLUDES) -MF $@ $<

include $(DEPENDS)
