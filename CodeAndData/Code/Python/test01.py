
import numpy as np
import cv2
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import tkinter as tk

plt.close('all')

def my_imshow(img):
    ''' 
    OpenCV reads images as BGR
    plt.imshow() displays images as RBG
    
    This function checks if image is color or grayscale and reorders to display 
    the image appropriately. 
    
    requires: 
        import matplotlib.pyplot as plt
        import matplotlib.image as mpimg
    '''
    tmp = img.shape
    if len(tmp) == 3:
        if tmp[2] == 3:
            # Image is GBR
            disp_img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
            plt.figure()
            plt.imshow(disp_img)
            plt.show()
            
    else:
        disp_img = img
        plt.figure()
        plt.imshow(disp_img)
        plt.show()
        
    return disp_img
##################################################
# BEGINNING OF CODE
##################################################


#filename = tk.filedialog.askopenfilename(filetypes = (("Template files", "*.tplate")
#                                                         ,("HTML files", "*.html;*.htm")
#                                                         ,("All files", "*.*") ))


root = tk.Tk()
theLabel = tk.Label(root, text="Hello World")
theLabel.pack()

#print(cv2.__version__)
#img = cv2.imread("/home/me/Desktop/image.png")
#img = cv2.imread("../../Data/TempData/OpenCV_logo.png")
#img = cv2.imread(filename)

#img2 = my_imshow(img)
#print(img2)

root.mainloop()