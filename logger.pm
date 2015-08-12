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
    print "pass file to option\n";
    exit;
  }
  if (-e $file)
  {
    print "file $file\n";
  }
  else
  {
    print "$file does not exist\n"; 
  }
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
