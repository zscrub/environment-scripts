get_python_cmd() {
  if command -v uv &>/dev/null; then
    echo uv
  elif command -v python3 &>/dev/null; then
    echo python3
  elif command -v python &>/dev/null; then
    echo python
  else
    echo "⛔️ Python is not installed" >&2
    exit 1
  fi
}

start_env() {
  if [ -d "./.venv" ]; then
    source .venv/bin/activate
    echo ".venv activated for: $PWD"
  elif [ -d "./venv" ]; then
    source venv/bin/activate
    echo "venv activated for: $PWD"
  else
    echo -n "No virtual environment in current directory. Create one? (Y/N): "
    read create_venv_option

    if [[ "$create_venv_option" =~ ^[Yy]$ ]]; then
      if command -v uv &>/dev/null; then
        echo "📁 Creating .venv using uv..."
        uv venv .venv
        source .venv/bin/activate
        echo "🐍 Successfully started uv virtual environment!"
      else
        echo "📁 Creating .venv folder..."
        PYTHON_CMD=$(get_python_cmd)
        "$PYTHON_CMD" -m venv .venv
        source .venv/bin/activate
	"$PYTHON_CMD" -m ensurepip --upgrade
        echo "🐍 Successfully started virtual environment!"
      fi
    elif [[ "$create_venv_option" =~ ^[Nn]$ ]]; then
      echo "🛑 Opted out of virtual environment creation."
    else
      echo "⛔️ Input must be Y/N."
    fi
  fi
}
