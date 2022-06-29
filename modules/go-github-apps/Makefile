.PHONY: github-apps/token
github-apps/token:
	$(call assert-set,GITHUB_APP_ID)
	$(call assert-set,GITHUB_INSTALLATION_ID)
	$(call assert-set,GITHUB_PRIV_KEY_PATH)
	export GITHUB_PRIV_KEY=$(cat $(GITHUB_PRIV_KEY_PATH))
	eval $(go-github-apps -export -app-id $(GITHUB_APP_ID) -inst-id $(GITHUB_INSTALLATION_ID))
	@echo "Generated GITHUB_TOKEN using go-github-apps"
