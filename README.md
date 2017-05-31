# pdfsandwich
pdfsandwich packaged to run from Docker image

# installation

- git clone repo
- cd into it
- ./build 
: this builds pdfsandwich image

# usage

As it runs off Docker container, one needs to make pdf available inside container; the
easiest way is to copy your pdf into this folder and run docker off it. Happy to hear
other suggestions. Once you have that, do
 
- ./pdfsandwich -nthreads 1 blah.pdf
