CodeBook.md

This is the list of the names of the variables utilized in the tidy data set "SamsungDataSetMeans.txt

 names(data)
 [1] "subjectID"                 "activity"                 
 [3] "tbodyacc.mean.x"           "tbodyacc.mean.y"          
 [5] "tbodyacc.mean.z"           "tbodyacc.std.x"           
 [7] "tbodyacc.std.y"            "tbodyacc.std.z"           
 [9] "tgravityacc.mean.x"        "tgravityacc.mean.y"       
[11] "tgravityacc.mean.z"        "tgravityacc.std.x"        
[13] "tgravityacc.std.y"         "tgravityacc.std.z"        
[15] "tbodyaccjerk.mean.x"       "tbodyaccjerk.mean.y"      
[17] "tbodyaccjerk.mean.z"       "tbodyaccjerk.std.x"       
[19] "tbodyaccjerk.std.y"        "tbodyaccjerk.std.z"       
[21] "tbodygyro.mean.x"          "tbodygyro.mean.y"         
[23] "tbodygyro.mean.z"          "tbodygyro.std.x"          
[25] "tbodygyro.std.y"           "tbodygyro.std.z"          
[27] "tbodygyrojerk.mean.x"      "tbodygyrojerk.mean.y"     
[29] "tbodygyrojerk.mean.z"      "tbodygyrojerk.std.x"      
[31] "tbodygyrojerk.std.y"       "tbodygyrojerk.std.z"      
[33] "tbodyaccmag.mean"          "tbodyaccmag.std"          
[35] "tgravityaccmag.mean"       "tgravityaccmag.std"       
[37] "tbodyaccjerkmag.mean"      "tbodyaccjerkmag.std"      
[39] "tbodygyromag.mean"         "tbodygyromag.std"         
[41] "tbodygyrojerkmag.mean"     "tbodygyrojerkmag.std"     
[43] "fbodyacc.mean.x"           "fbodyacc.mean.y"          
[45] "fbodyacc.mean.z"           "fbodyacc.std.x"           
[47] "fbodyacc.std.y"            "fbodyacc.std.z"           
[49] "fbodyaccjerk.mean.x"       "fbodyaccjerk.mean.y"      
[51] "fbodyaccjerk.mean.z"       "fbodyaccjerk.std.x"       
[53] "fbodyaccjerk.std.y"        "fbodyaccjerk.std.z"       
[55] "fbodygyro.mean.x"          "fbodygyro.mean.y"         
[57] "fbodygyro.mean.z"          "fbodygyro.std.x"          
[59] "fbodygyro.std.y"           "fbodygyro.std.z"          
[61] "fbodyaccmag.mean"          "fbodyaccmag.std"          
[63] "fbodybodyaccjerkmag.mean"  "fbodybodyaccjerkmag.std"  
[65] "fbodybodygyromag.mean"     "fbodybodygyromag.std"     
[67] "fbodybodygyrojerkmag.mean" "fbodybodygyrojerkmag.std" 

They are the means  and the standard deviation of the rest of the variables.
For those variables the script calculates the mean for each subject and activity.