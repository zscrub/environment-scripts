commit_and_push() {
  git add .
  if [ -n "$1"]; then
    echo "commit message: "
    read MSG
    if [ -z "$MSG" ]; then
      git commit --allow-empty -m "pushing updates"
    else
      git commit -m "$MSG"
    fi
  else
    git commit -m "$1"
  fi
  git push
}
