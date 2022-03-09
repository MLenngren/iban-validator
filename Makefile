build:
	@echo "\033[93mBuilding docker container ibanvalidator \033[0m"
	docker build -t ibanvalidator:latest -f Dockerfile.validator .
	@echo "\033[92mBuild finished\033[0m"
.PHONY: build

test:
	@echo "\033[92mTest of successful IBAN Validation\033[0m"
	docker run ibanvalidator GB82WEST12345698765432
	@echo "\033[92mTest of unsuccessfull IBAN Validation\033[0m"
	docker run ibanvalidator GB82WEST12335698765432

.PHONY: test