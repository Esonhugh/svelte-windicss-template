function build_by_local () {
  echo "dependencies sync ........."
  npm install
  echo "build apps ..........."
  npm run build
  cp -r ./public/ ./output
  echo "build success: at dir `pwd`/output"
}

function build_by_action () {
  git clone ${Project_url} --branch app
}

build_by_local