# https://www.r-statistics.com/2013/03/updating-r-from-r-on-windows-using-the-installr-package/
# https://www.r-statistics.com/2015/06/a-step-by-step-screenshots-tutorial-for-upgrading-r-on-windows/
# http://bioinfo.umassmed.edu/bootstrappers/bootstrappers-courses/courses/rCourse/Additional_Resources/Updating_R.html

# installing/loading the package:
if(!require(installr)) {
    install.packages("installr"); 
    require(installr)
} #load / install+load installr

# using the package:
updateR()
