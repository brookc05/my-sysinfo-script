echo "=== Hostname ==="
hostname

echo "=== OS==="
grep PRETTY_NAME /etc/os-release

echo "=== Uptime ==="
uptime -p

echo "=== Kernel ==="
uname -r

echo "=== CPU ==="
lscpu | grep -E "Model name|Architecture|CPU\(s\):"

echo "=== Memory ==="
free -h

echo "=== Network ==="
ip -brief address
ip -brief link

echo "=== Filesystem ==="
df -hT

echo "=== Last 5 Log Errors ==="
grep -i "error" /var/log/syslog | tail -n 5

} | tee report.txt

