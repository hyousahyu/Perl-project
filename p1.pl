sub union{
	my ($a,$b)= @_;
	@aunion{@$a,@$b}=@$a+@$b;
	##print @aunion;
	@bunion=keys %aunion;
	##print @bunion;
	if (wantarray){
		return @bunion;
	}
	else{
		return join ',', @bunion;
	}
}

my $uString = union([1,2,3],[2,3,4]);
my @uList = union([1,2,3],[2,3,4]);
print "$uString\n";
print "@uList\n"; 
