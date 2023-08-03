# Script scope demonstration. PI value defined in the shell outside of scripts remains unchanged.

import os
PI = 5
print("The value of PI is now {}, inside the script".format(PI))
print("The value of PI is now {}, outside the script".format(os.environ['PI']))
