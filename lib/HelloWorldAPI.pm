package helloworldapi {
    use strictures;
    use English qw(-no-match-vars);
    use utf8;

    use feature ":5.36";

    use FindBin;
    use lib "$FindBin::Bin/../lib";

    use Dancer2;
    use Dancer2::Plugin::Swagger2;

    use boolean qw(:all);
    use Return::Type;
    use Types::Standard -all;
    use Value::TypeCheck;

    our $VERSION = '0.1';

    get '/' => sub {
        template 'index' => { 'title' => 'helloworldapi' };
    };

    true;
}