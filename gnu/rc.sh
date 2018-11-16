OPT_DIR=/usr/local/opt

COREUTILS_BIN=$OPT_DIR/coreutils # $(brew --prefix coreutils)
export PATH="$COREUTILS_BIN/libexec/gnubin:$PATH"

GNU_SED_BIN=$OPT_DIR/gnu-sed # $(brew --prefix gnu-sed)
export PATH="$GNU_SED_BIN/bin:$PATH"

GNU_GETOPT_BIN=$OPT_DIR/gnu-getopt # $(brew --prefix gnu-getopt)
export PATH="$GNU_GETOPT_BIN/bin:$PATH"

