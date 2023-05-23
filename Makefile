.SILENT: setup-upstream install-tools

setup: install-tools setup-upstream

install-tools:
	echo "add install scripts here"

setup-upstream:
	printf "%s\n" "Setting up upstream..."
	-git remote remove upstream 2>/dev/null ||:
	git remote add upstream git@github.com:eclipseguru/jdt-ls-meta-repo.git -m master
	-cd eclipse.jdt.core && git remote remove upstream 2>/dev/null ||:
	cd eclipse.jdt.core && git remote add upstream git@github.com:eclipse-jdt/eclipse.jdt.core.git -m master
	-cd eclipse.jdt.debug && git remote remove upstream 2>/dev/null ||:
	cd eclipse.jdt.debug && git remote add upstream git@github.com:eclipse-jdt/eclipse.jdt.debug.git -m master
	-cd eclipse.jdt.ui && git remote remove upstream 2>/dev/null ||:
	cd eclipse.jdt.ui && git remote add upstream git@github.com:eclipse-jdt/eclipse.jdt.ui.git -m master
	-cd eclipse.jdt.ls && git remote remove upstream 2>/dev/null ||:
	cd eclipse.jdt.ls && git remote add upstream git@github.com:eclipse/eclipse.jdt.ls.git -m master
	-cd bazel-eclipse && git remote remove upstream 2>/dev/null ||:
	cd bazel-eclipse && git remote add upstream git@github.com:salesforce/bazel-eclipse.git -m master
	meta git fetch upstream
