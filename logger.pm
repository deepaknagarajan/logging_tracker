package logger;
#s
use strict;
use warnings;
use Term::ANSIColor;
use Storable;
use Data::Dumper;


sub s_logger
{
  my ($file) = @_;
  unless (defined $file)
  {
    warn "pass file to option\n";
    exit;
  }
  if (-e $file)
  {
    print "file $file\n";
  }
  else
  {
    warn "$file does not exist\n"; 
    exit;
  }
  my $re_pattern = qr//;
  open(my $fh, '<', $file) or die "$file - $!";
  while (<$fh>)
  {
    print "$_\n";  
  }
  close($fh);
}

unless (caller())
{
  my $selector = shift @ARGV;
  if ($selector == 1)
  {
    s_logger(@ARGV);
  }
}

1
