# until everything is migrated
commit_and_push() {
  if [ -n "$1"]; then
    echo "commit message: "
    read MSG
    git add .
    if [ -z "$MSG" ]; then
      git commit --allow-empty -m "pushing updates"
    else
      git commit -m "$MSG"
    fi
  else
    git add .
    git commit -m "$1"
  fi
  git push
}


gitpush() {
  STS=$(git status)

  if echo "$STS" | grep "working tree clean"; then
    return
  fi

  if [ -n "$1"]; then
    echo "commit message: "
    read MSG
    git add .
    if [ -z "$MSG" ]; then
      git commit --allow-empty -m "pushing updates"
    else
      git commit -m "$MSG"
    fi
  else
    git add .
    git commit -m "$1"
  fi
  git push
}



