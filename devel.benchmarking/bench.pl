use Benchmark ':all';
use PerlX::Maybe ();
use PerlX::Maybe::XS ();

cmpthese(5_000_000, {
	pp    => q{ PerlX::Maybe::maybe(1, 2, 3 .. 10) },
	xs    => q{ PerlX::Maybe::XS::maybe(1, 2, 3 .. 10) },
});