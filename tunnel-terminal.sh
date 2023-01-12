if [ $ALL_PROXY ]; then
  echo "Proxy is active: $ALL_PROXY"
  echo "\n- Run this command to disable proxy:"
  echo "unset ALL_PROXY"
else
  echo "Proxy is deactive"
  echo "\n- Run this command to enable proxy on terminal:"
  echo "export ALL_PROXY=socks5h://localhost:$(cat ./config/local-port)"
fi
