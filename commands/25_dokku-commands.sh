case "$1" in
  url)
    if [[ -n "$PLUSHU_APP_NAME" ]]; then
      app=$PLUSHU_APP_NAME
    elif [[ -n "$2" ]]; then
      app=$2
      shift
    fi

    if [[ -n "$app" ]]; then
      # Mark that we handled this command
      export PLUSHU_COMMAND_HANDLED=$1
      "$PLUSHU_ROOT/lib/plushook" app-domains "$app" | head -n1
    else
      echo "Missing app name" >&2
      exit 1
    fi

    ;;
esac




