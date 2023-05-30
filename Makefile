.PHONY: init
init:
	git submodule update --init --remote

.PHONY: linux
linux:
	cross build -r --target x86_64-unknown-linux-musl

.PHONY: windows
windows:
	cross build -r --target x86_64-pc-windows-gnu

.PHONY: freebsd
freebsd:
	cross build -r --target x86_64-unknown-freebsd

.PHONY: android
android:
	cross build -r --target aarch64-linux-android

.PHONY: all
all: linux windows freebsd android


# relay 6.152
# sudo RUST_LOG=debug ./relay --secret-key-seed 0 --port 4001

#listen client 6.101
# RUST_LOG=debug ./client --secret-key-seed 1 --mode listen --relay-address /ip4/114.132.71.142/tcp/4001/p2p/12D3KooWDpJ7As7BWAwRMfu1VU2WCqNjvq387JEYKDBj4kx6nXTN

# dial client
# RUST_LOG=debug ./client --secret-key-seed 2 --mode dial --relay-address /ip4/114.132.71.142/tcp/4001/p2p/12D3KooWDpJ7As7BWAwRMfu1VU2WCqNjvq387JEYKDBj4kx6nXTN --remote-peer-id 12D3KooWPjceQrSwdWXPyLLeABRXmuqt69Rg3sBYbU1Nft9HyQ6X