function a() {
  echo "${1}"
  echo ${!1}
}

a JAVA_HOME
echo ${JAVA_HOME}
