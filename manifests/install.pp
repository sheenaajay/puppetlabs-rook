# This class installs the Helm repo for rook and the rook chart

class rook::install (
  Array $env           = $rook::env,
  Array $path          = $rook::path,
  String $rook_channel = $rook::rook_channel,
  String $repo_url     = $rook::repo_url,
) {

  helm::repo { $rook_channel:
    ensure    => present,
    env       => $env,
    path      => $path,
    repo_name => $rook_channel,
    url       => $repo_url,
    before    => Helm::Chart['rook']
  }

  helm::chart { 'rook':
    ensure       => present,
    chart        => "${rook_channel}/rook",
    env          => $env,
    path         => $path,
    release_name => 'rook',
  }
}
