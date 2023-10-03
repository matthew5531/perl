use Time::Local 'timelocal';

while(<>){
if($_ =~ /tim=/) {
chop;
my ($str, $unix_usec) = split 'tim=', $_;

     my $unix_msec = int( $unix_usec / 1000 );
     my $unix_sec = int( $unix_msec / 1000 );
 my $msec = $unix_msec;
    ( $msec = $msec ) =~ s/^.*(\d{3})$/$1/;

     my ( $sec, $min, $hour, $day, $mon, $year, $mday, $yday, $isdst ) = localtime( $unix_sec );
     $year=$year+1900;
     $mon=$mon+1;

     print("$str tim=");
     printf ("%04d-%02d-%02d %02d:%02d:%02d.%03d\n", $year, $mon, $day, $hour, $min, $sec, $msec );
 } else {
     print("$_");
	 }

}
