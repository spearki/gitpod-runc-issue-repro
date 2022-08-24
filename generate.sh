services=$1

echo "services:"
for ((i=1; i<=services; i++)); do
    cat <<EOF
  service$i:
    image: nginx:latest

EOF
done
