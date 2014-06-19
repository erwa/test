if [[ $1 != *.tar.gz ]]
then
  echo "not .tar.gz"
else
  echo "is .tar.gz"

  echo ${1%.tar.gz}
fi
