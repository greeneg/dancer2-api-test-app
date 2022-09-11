package Dancer2::Plugin::Swagger2 v0.0.1 {
    use strictures;
    use utf8;
    use English qw(-no-match-vars);

    use feature ":5.36";
    use feature "try";
    no warnings "experimental::try";

    use Dancer2::Plugin;

    use boolean;
    use File::IO;
    use Return::Type;
    use Types::Standard -all;

    plugin_keywords qw(
        validate_request
    );

    my sub open_api_document :ReturnType(ArrayRef) ($type, $document_name) {
        my $fio = File::IO->new();
        $type = lc($type);

        $json_struct = undef;
        if ($type eq "yaml") {

        } elsif ($type eq "json") {

        } else {

        }
    }

    our sub BUILD ($self, $plugin) {
    }

    our sub validate_request ($self) {

    }

    true;
}