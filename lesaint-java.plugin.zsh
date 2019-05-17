function java_versions {
	reply=($(cd /opt/java && find * -maxdepth 0 -type l))
}

function remove_from_path {
	export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

function jdk {
  if [ $# -ne 0 ]; then
    if [ -n "${JAVA_HOME+x}" ]; then
      remove_from_path $JAVA_HOME
    fi
  
    local newJavaHome="/opt/java/$1" 
    if [ ! -d "$newJavaHome" ]; then
      echo "$newJavaHome does not exist"
      return
    fi
    export JAVA_HOME="$newJavaHome"
    export PATH=$JAVA_HOME/bin:$PATH

  else
    echo "JAVA_HOME: $JAVA_HOME"
    echo `jv`
  fi
}

alias jv="java -version"

compctl -K java_versions jdk

jdk 1.8
