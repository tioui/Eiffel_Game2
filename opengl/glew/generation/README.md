In the `auto' sub directory of glew, get every functions and constants with:
	# grep -hP '\t.*' GL_* > glew_core.txt
Use to_i.py to put the "#define" before constants:
	# ./to_i.py glew_core.txt > glew_core.h
Do the same with extensions.
Concatenate both file:
	# cat glew_core.h glew_extension.h > glew.h
Remove dupicate lines:
	# awk '!a[$0]++' glew.h > glew.i
Add the i headers and footer in glew.i.
Create the Eiffel Class:
	# ../swig/swig -I../swig/Lib -eiffelstudio glew.i
For the errors, you will have to manually manage the error (generally, removing the line is OK).
