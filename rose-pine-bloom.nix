{
  buildGoModule,
  fetchFromGitHub
}:
let
  version = "2.2.0";
in
buildGoModule {
  pname = "rose-pine-bloom";
  inherit version;
  src = fetchFromGitHub {
    owner = "rose-pine";
    repo = "rose-pine-bloom";
    rev = "v${version}";
    hash = "sha256-e6KbcqWW6JENfaiv+YHb60gXBanjw1Ol1xnf1pdZhuo=";
  };
  vendorHash = null;
}
