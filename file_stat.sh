#!/bin/bash
filename="/etc/passwd"
echo "Number of lines: $(wc -l $filename)"
echo "First 5 lines:"
head -n 5 $filename
echo "############"
echo "Last seven lines:"
tail -n 7 $filename
