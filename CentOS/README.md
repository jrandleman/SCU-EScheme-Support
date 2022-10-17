# Installing EScheme on your CentOS SCU Linux Machine

1. Download `centos-escm-installer.sh` & run `sh centos-escm-installer.sh` in your user home directory.
   * For reference, the user home directory holds `Desktop`, `Documents`, etc.
   * Note that you don't have to clone this repo, you _only_ need `centos-escm-installer.sh`!

2. Copy the then output `alias escm='...'` statement to the end of your `~/.bashrc` file.

3. Run `. ~/.bashrc` at the command-line to register that change.

4. Now type `escm` anywhere in your terminal to launch the EScheme REPL!