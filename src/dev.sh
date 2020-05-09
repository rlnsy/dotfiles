export EDITOR="vim"

mkchange () {
	"$EDITOR" CHANGELOG.md
	echo "Creating PDF version..."
	if [[ $? == 0 ]]; then
		mdpdf CHANGELOG.md
	fi
}
