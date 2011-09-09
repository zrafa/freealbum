#!/bin/bash

TEMP=/tmp/tmp.$$$$

# Write Document Type Declaration and Header
echo '
<?xml version='1.0' encoding='iso-8859-1'?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" >

<head>
<!-- Generate by freealbum https://github.com/zrafa/freealbum -->
<title>Pictures</title>
</head>

<body>

<p><a href="../">Back to main picture page.</a></p>
<p>
' > $TEMP

for i in *jpg ; do
	echo '<a href="htmldata/'${i}'.html"><img src="htmldata/'${i}'_thumb.jpg" alt="'$i'" /></a>' >> $TEMP
done

# Write End of the Body and Html
echo '
</p>
</body>
</html>
' >> $TEMP
