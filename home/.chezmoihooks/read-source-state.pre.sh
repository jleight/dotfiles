#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

if [[ "${TRACE-0}" == "1" ]]; then
	set -o xtrace
fi

is_command() {
	type "$1" >/dev/null 2>&1
}

main() {
	if is_command op; then
		exit 0
	fi

	if is_command brew; then
		if [[ "$(uname -s)" = "Darwin" ]]; then
			brew install --cask 1password-cli
			exit 0
		fi
	fi

	echo "You must manually install 1Password CLI!"
	exit 1
}

main "$@"
