{ pkgs }: {
  deps = [
		pkgs.qemu_full
  	pkgs.wget
		pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}