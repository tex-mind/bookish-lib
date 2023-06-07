#!/bin/bash

JABREF_PATH="/opt/jabref/bin"
PREFERENCES_FILE_PATH="./preferences.xml"

if !command -v JabRef &>/dev/null; then
    echo "Adding JabRef to the PATH..."
    echo "export PATH=\"$JABREF_PATH:\$PATH\"" >> ~/.bashrc
    . ~/.bashrc
    echo "JabRef has been added to the PATH."
fi

echo "Importing JabRef preferences..."
if JabRef -n -p $PREFERENCES_FILE_PATH; then
    echo "Preferences imported successfully."
else
    echo "Error importing preferences."
    exit 1
fi
