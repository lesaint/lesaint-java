lesaint-java
============

My Java plugins for [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) which can be integrated via [Antigen](https://github.com/zsh-users/antigen)

# Installation

Add a single command `jdk` which takes the name of a symlink in directory `/opt/java` which is assume to point to an installation of Java.
The command will set env variable `JAVA_HOME` to point to this directory and update the `PATH` to point to the `bin` directory of this Java installation.

This plugin is remotely inspired from [jtaisa/java-zsh-plugin](https://github.com/jtaisa/java-zsh-plugin).

## Antigen

Add `antigen bundle lesaint/lesaint-java` to your `.zshrc` where you have your other bundle commands.
