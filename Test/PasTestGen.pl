#!/usr/bin/perl

#author: Mahdi Safsafi.
#Generate Pascal test file.

use 5.010;
use strict;
use warnings;
use File::Basename;

sub gentest($) {
    my $src = shift;
    my $cpux;
    my $id=0;
    my @tests;
    my $fname = basename( $src, ".asm" );
    open F,$src;
    while(<F>){
    	chomp;
    	if(/^\s*bits\s+(32|64)/i){
    		$cpux = "CPUX$1";
			push(@tests,"Arch := $cpux ;");
    		next;
    	}
    	if(/\s*testcase\s*\{(.+?)\}\,\s*\{(.+)\}/i){
    		my $opcodes = $1;
    		my $inststr = $2;
    		$opcodes=~s/\s//g;
    		$opcodes=~s/0x/\$/g;
    		$opcodes=~s/\,/, /gx;
    		$inststr=~s/^\s+|\s+$//g;
    		my $t = "testcase($id,[$opcodes],'$inststr');";
    		push(@tests,$t);
    		$id++;
    	}
    }
    close F;
    open F,">pascal\\$fname.pas";
    print F "unit $fname;\n\ninterface\n\n";
    print F "uses uTestCase,UnivDisasm.Cnsts;\n\n";
    print F "procedure Test_$fname();\n\n";
    print F "implementation\n\n";
    print F "procedure Test_$fname();\n";
    print F "var\n  TestCase:TTestCase;\n";
    print F "begin\n";
    print F "  TestCase := TTestCase.Create('$fname');\n";
    print F "  //-------------------------------------------------------------------\n";
    print F "  TestCase.Start();\n";
    print F "  TestCase.$_\n"foreach(@tests);
    print F "  TestCase.Stop();\n";
    print F "  TestCase.SaveToFile('log\\$fname.log');\n";
    print F "  TestCase.Free;\n";
    print F "end;\n\n\n";
    print F "end.";
   
    close F;
    
}

gentest('avx512f.asm');
gentest('avx2.asm');
gentest('avx512cd.asm');
gentest('avx512er.asm');
gentest('avx512pf.asm');
print"Done.\n"