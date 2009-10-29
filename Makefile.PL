#!/usr/bin/env perl
use inc::Module::Install;

name "Data-Password-Check-Strict";
all_from "lib/Data/Password/Check/Strict.pm";
repository "git://github.com/pangyre/p5-data-password-check-strict";

# requires "";


if ( $Module::Install::AUTHOR )
{
    system("pod2text lib/Data/Password/Check/Strict.pm > README") == 0
        or die "Couldn't update the README file";
    system("pod2text lib/Data/Password/Check/Strict/ReleaseNotes.pod > Changes") == 0
        or die "Couldn't update the Changes file";
}

# install_script glob("script/*.pl");
auto_install;
WriteAll;

__END__

