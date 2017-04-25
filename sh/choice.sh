function choice {
  local ANSWER
  local QUESTION=$2
  local OPTIONS=$3

  while true; do
    read -p "${QUESTION} " answer
    case $answer in
      [Yy]* )
        ANSWER="Yes"
        break;;
      [Nn]* )
        ANSWER="No"
        break;;
    esac
  done

  eval "$1=$ANSWER"

  return 0
}
