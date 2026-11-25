{ pkgs, ... }:

{
	languages.rust = {
		enable = true;
		channel = "nightly";
		components = [ "rustc" "cargo" "clippy" "rustfmt" "rust-analyzer" ];
	};

	packages = [ pkgs.cargo-watch pkgs.cargo-edit ];

	#
	scripts.dev.exec = "cargo watch -x run";
}