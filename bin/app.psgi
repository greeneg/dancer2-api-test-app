#!/usr/bin/env perl

package main {
    use strictures;
    use utf8;
    use English qw(-no-match-vars);

    use feature ":5.36";

    use FindBin;
    use lib "$FindBin::Bin/../lib";

    use boolean qw(:all);
    use Return::Type;
    use Types::Standard -all;
    use Value::TypeCheck;

    use HelloWorldAPI;
    use Plack::Builder;

    my sub main :ReturnType(Void) (@args) {

        return builder {
            enable 'Deflater';
            mount '/' => HelloWorldAPI->to_app;
        }
    }

    main(@ARGV);
}
