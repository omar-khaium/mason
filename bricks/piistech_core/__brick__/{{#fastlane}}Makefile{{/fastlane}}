deploy:
	@echo "Publishing android to production test..."
	cd android && fastlane production && cd ..

	@clear

	@echo "Publishing iOS to testflight..."
	cd ios && pod update && cd .. && flutter build ipa --release && cd ios && fastlane beta && cd ..

	@clear

	@echo "Deployed successfully! 🚀🚀🚀"

.PHONY: deploy

deploy-ios:
	@echo "Publishing iOS to testflight..."
	cd ios && pod update && cd .. && flutter build ipa --release && cd ios && fastlane beta && cd ..

	@clear

	@echo "Deployed successfully! 🚀🚀🚀"

.PHONY: deploy-ios