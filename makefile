build: 
	soroban contract build

deploy: 
	soroban contract deploy \
	--wasm target/wasm32-unknown-unknown/release/soroban_increment_contract.wasm \
	--source $(SOURCE) \
	--network $(NETWORK)

deploy-test:
	$(MAKE) deploy SOURCE=alice NETWORK=testnet