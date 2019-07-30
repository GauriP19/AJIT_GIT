#!/usr/bin/env python
#
# makeLinkerScript.py
#
# DESCRIPTION :
#      from specified entry-point, data-address-section beginning,
#      produce appropriate linker script (print to stdout)
#
# AUTHOR :
#	Madhav Desai
#




import os
import os.path
import shutil
import getopt
import sys
import glob
import commands
import threading 
import popen2
import pdb
import time


# run system command.
def execSysCmd(sys_cmd):
    logCommand(sys_cmd)
    ret_val = os.system(sys_cmd)
    return ret_val


# logging.
def logCommand(sys_cmd):
    print  "Info: Executing:\n\t" +  sys_cmd

def logInfo(mesg):
    print "Info: " + mesg

def logError(mesg):
    print "Error: " + mesg

def logWarning(mesg):
    print "Warning: " + mesg

    
            
def Usage():
    print "arguments:  \n\
               (-h)? (print-help message) \n\
	       (-t <text-section-address>)   (address to start text-segment,   default   0x00000000) \n\
	       (-d <data-section-address>)   (address to start data-segment, default 0x1000) \n\
	       (-o <output-file-name>) "
    return 0

#     (-h)?
#     (-t text-section-address)?
#     (-d data-section-address)?
#     (-o output-file-name)?
def parseOptions(opts):

    text_section_addr   = "0x00000000"
    data_section_addr   = "0x00001000"

    help_flag = 0
    linker_file_name = "LinkerScript.lnk"

    for option, parameter in opts:
        if option == '-h':
           help_flag = 1
	if option == '-t':
           text_section_addr = parameter
	if option == '-d':
           data_section_addr = parameter
	if option == '-o':
           linker_file_name = parameter

    return help_flag, text_section_addr, data_section_addr, linker_file_name

def main():

    arg_list = sys.argv[1:]
    if(len(arg_list) < 1):
	print "\nERROR: no arguments!"
        Usage()
        return 1

    arg_list = sys.argv[1:]
    opts,args = getopt.getopt(arg_list,'ht:d:o:')
    help_flag, text_section_addr, data_section_addr, linker_file_name = parseOptions(opts)
    
    logInfo("text-section-begins-at  = " + text_section_addr + ".")
    logInfo("data-section-begins-at  = " + data_section_addr + ".")
    logInfo("output-file (linker-script-file)  = " + linker_file_name + ".")

    if(help_flag == 1):
       Usage()
       return 0
    
    linker_file = open(linker_file_name,"w")
    print  >> linker_file, "/* Linker script generated for AJIT standalone application */"
    print  >> linker_file, "/* command: makeLinkerScript.py -t " + text_section_addr + " -d " + data_section_addr + " -o " + linker_file_name + " */"
    print  >> linker_file, "ENTRY (_start)"
    print  >> linker_file, "__DYNAMIC = 0;"
    print  >> linker_file, "SECTIONS"
    print  >> linker_file, "{"
    print  >> linker_file, "    . = " + text_section_addr + ";"
    print  >> linker_file, "    .text ALIGN(4) : { *(.text) *(.text.*) }"  
    print  >> linker_file, "    . = " + data_section_addr + ";" 
    print  >> linker_file, "    .rodata ALIGN(4) : { *(.rodata) *(.rodata.*) }"
    print  >> linker_file, "    .data ALIGN(4) : { *(.data) *(.data.*) *(.bss)}"
    print  >> linker_file, "}"
 
    linker_file.close();
    return 0


if __name__ == '__main__':
    ret_val = main()
    sys.exit(ret_val)
