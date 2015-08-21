#author: Mahdi Safsafi.
sub gen($$$){
  my $input = shift;
  my $output = shift;
  my $bits = shift;
  open F,$input;
  my @array=("\nbits $bits\n\n");
  while (<F>) {
	chomp;
	if(s/^\s*\[\s+\]\*.+?\+:\s+?//){
		s/(.+?\s{2,})//;
		my $opcodes = $1;
		s/^\s+//;
		s/#.+//;
		my $str = $_;
		$str=~s/^\s+|\s+$//g;
		$str=~s/\\//g;
		$opcodes=~s/([0-9a-f]{2})/0x$1/gi;
		my @opcodes = split(' ',$opcodes);
		$opcodes = join(',',@opcodes);
		my %hash=(
		'xmmword'=>'oword',
		'ymmword'=>'yword',
		'zmmword'=>'zword',
		'rip+'=>'rip ',
		);
		foreach(keys %hash){
		my $v = $hash{$_};
		$str =~s/\Q$_\E/$v/gi;
		}
		$str=~s/ptr//ig;
		$str=~s/\s+/ /xg;
		$str=~s/(^\w+)\s/$1  /x;
		my $s = sprintf('testcase   { %-50s },{ %-50s }',$opcodes,$str);
		push(@array,$s);
		}
	}
	close F;
	open F,'>'.$output;
	print F "\L$_\n"foreach(@array);
	close F;
}

gen('x86-64-simd-intel.d','simd.asm','64');
gen('x86-64-evex-lig256-intel.d','evex_lig256.asm','64');
gen('x86-64-evex-lig512-intel.d','evex_lig512.asm','64');
gen('x86-64-evex-wig1-intel.d','evex_wig1.asm','64');
