use 5.008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'              => 'Acme::Handwave',
    'VERSION_FROM'      => 'Handwave.pm', # finds $VERSION
    'PREREQ_PM'         => {},
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (AUTHOR     => 'Simon Kent <simon@hitherto.net>') : ()),
);
