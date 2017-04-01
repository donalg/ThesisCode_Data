#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Apr  1 14:18:11 2017

File for converting CSV image data (batch converted from excel) into .png graphic images. 
This file will also use a linear transform to transform the images into a pixel orientation equivelent to that of their visible image
counter parts. 

The objective is to provide a script for pre processing/formatting data to allow easier analysis.


For Brightening of Visible images:
    OpenCV reads in Color as BGR
    but matplot Lib displays as RBG 



@author: Donal Glavin
"""

########################################################## Import Libraries: 
import numpy as np 
import matplotlib.pyplot as plt
#import matplotlib.image as mpimg
#import subprocess as sub
import tkinter as tk
from tkinter import filedialog
import cv2
import csv
import os


## TEMP
'''
def histogram_equalizeIMG(img):
    b,g,r = cv2.split(img)
    red = cv2.equalizeHist(r)
    blue = cv2.equalizeHist(b)
    green = cv2.equalizeHist(g)
    CVNewIMG = cv2.merge((blue,green,red))
    PLTNewIMG = cv2.merge((red, blue, green))
    return CVNewIMG, PLTNewImg

def histogram_equalizeIMG_option2(img):
    img = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
    h,s,v = cv2.split(img)
    hue = h # cv2.equalizeHist(h)
    saturation = s # cv2.equalizeHist(s)
    value = cv2.equalizeHist(v)
    CVNewIMG = cv2.merge((hue,saturation,value))
    outImg = cv2.cvtColor(CVNewIMG, cvt.COLOR_HSV2BGR)
    b,g,r = cv2.split(outImg)
    PLTNewIMG = cv2.merge((r, b, g))
    #PLTNewIMG = cv2.merge((red, blue, green))
    return CVNewIMG
'''



########################################################## CSV data -> Image format function:
def CSV_2_IR_Imageconverter(path):
    '''
    Function to read in all CVS file inside a Directoy and convert to numpy Image format for plotting. 
    
    Funection used to create CSV files: 
        ssconvert -S "name_of_excel".xlxs pathname_of_csv".csv
        
    Create a gif: 
        convert -delay 30 *.png IR_20mm.gif

    '''
    file_names = os.listdir(path)
    print('Files: ', file_names)
    
    # Knwon values: 
    col = 0
    row = 0
    row_shift = 0
    col_shift = 0
    
    cond_start = False
    data_begin =False
    shift_col_cond = False
    
    buff = 'Image Converter Started... \n'
    buff.append('File Path: ' + path + '\n')
    
    # IR Camera Data.txt
    IR_data = []
    IR_camera_settings = True
    
    images = np.zeros((len(file_names), 320*2, 240*2), dtype = np.float)
    
    for i in file_names:
        col = 0
        row = 0
        
        tmp_file = open(path + '/' +  i, 'r') 
        tmp_data = csv.reader(tmp_file, delimiter=',')
        
        buff.append('Data Obtained from:' + i + '\n') 
        
        for j in tmp_data:
            for k in j:
                if IR_camera_settings:
                    # Section to write a File that will contain the import IR settings contained within the CSV files. 
                    IR_data[file_names.index(i)] += k 
                    
                # Loop through first element of line and check is is equivelt to 'x/y' if yes skip row but set the start flag to true
                if (k == 'x/y'):
                    cond_start = True
                    data_begin = False
                    IR_camera_settings = False
                    break
                
                
                # Only run if Start flag and begin data stream is true (and skip the first part of data:)
                if cond_start and data_begin and j.index(k) > 0:
                    images[file_names.index(i), (row + row_shift), (col + col_shift)] = float(k) # Convert value to Float and insert into images array
                    col += 1 # Iterate column
                    #print('Col: ', col, 'Row: ', row, 'Value: ', k)
    
            # If start flag has been changed then set data being to true
            if cond_start and ~data_begin:
                data_begin = True
            
            # If data stream has been initialised and row has ended, reset col counter and interate row counter
            if cond_start and data_begin:
                col = 0
                row += 1
                
                
            if row > (319): # End of data frame so reset all swtiching values iterate the frame and reset rows (start process again)
                if shift_col_cond:
                    row_shift = 0
                    col_shift = 240
                    shift_col_cond = False
                else:
                    row_shift = 319
                    shift_col_cond = True
                row = 0
                col = 0
                data_begin = False
                cond_start = False
        
        IR_camera_settings = True
        shift_col_cond = False
        row_shift = 0
        col_shift = 0
        
        images[file_names.index(i)] = np.fliplr(images[file_names.index(i)])
        buff.append('File Completed: ' + i + '\n')
    
    buff.append('Total number of files/frames converted: ' + str(len(file_names)) + '\n')
    return images, buff

###############################################################################

########################################################## Image Scaling Function:
def IR2Vis_scaleing(IRimg, Vis_fileName):
    '''
    Function To define the scaling proceedure to map the image size from the IR camera to the scale of the Vis Image Camera
    This will allow for Consistency in Image analysis techniques. 
    '''
    
    VISimg = plt.imread(Vis_fileName)
    VISimg = np.rot90(VISimg, axes=(1,0,))
    buff = 'IR to Vis Image scaling Started.... \n'
    buff.append('Location of Visible image to be scaled is: ' + Vis_fileName + '\n')
    
    Vheight, Vwidth = VISimg.shape[:2]
    Iheight, Iwidth = IRimg[0].shape[:2]
    
    NewIRimg = np.array((IRimg.shape[0], Vheight, Vwidth), dtype = np.float32)
    
    for i in range(len(IRimg[:,0,0])):
        buff.append('Number of IR Images convered: ' + str(i+1) + '\n')
        NewIRimg = cv2.resize(IRimg[i], (Vwidth/Iwidth), (Vheight/Iheight), interpolation = cv2.INTER_LINEAR)
    
    return NewIRimg, buff
    
###############################################################################

########################################################## Image Scaling Function
def VisImage_Brighten_and_Format(Vis_fileNamePATH):
    '''
    The Purpose of this function if to format and brighten the images from the VIS imges 
    to also air in the Image processing side of things. 
    '''
    buff = 'Batch Visible grayscale Histogram Equalization started.... \n'
    buff.append('Folder of Files is: ' + Vis_fileNamePATH)
    
    file_names = os.listdir(Vis_fileNamePATH)
    grayImg = np.zeros(len(file_names), dtype = np.uint8)
    for i in file_names:
        img = cv2.imread(Vis_fileNamePATH + i)
        if file_names.index(i) == 0:
            grayImg = np.zeros((len(file_names), img.shape[0], img.shape[1]), dtype = np.uint8)
        
        grayImg[file_names.index(i),:,:] = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        grayImg[file_names.index(i),:,:] = cv2.equalizeHist(grayImg[file_names.index(i),:,:])
        buff.append('Modifying Image: ' + str(file_names.index(i)) + '\n')
    buff.append('Total Number of files Transformed: ' + str(len(file_names)) + '\n')
    return grayImg, buff
    
def histogram_equalizeIMG(Vis_fileName):
    img = cv2.imread(Vis_fileName)
    b,g,r = cv2.split(img)
    red = cv2.equalizeHist(r)
    blue = cv2.equalizeHist(b)
    green = cv2.equalizeHist(g)
    CVNewIMG = cv2.merge((blue,green,red))
    PLTNewIMG = cv2.merge((red, blue, green))
    return CVNewIMG, PLTNewIMG       

###############################################################################
###############################################################################
###############################################################################
###############################################################################
# Graphical User Interface Functions: 


def open_IR_files():
    path = filedialog.askdirectory()
    return path

def begin_IR_CSV2Img(path):
    images = CSV_2_IR_Imageconverter(path)
    return images

def begin_ImageMapping(Vis_filePath, IRimages):
    newImages = IR2Vis_scaleing(IRimages, Vis_filePath)
    return newImages

def GetCSVPath():
    file_path = filedialog.askdirectory()
    return file_path
    

#sub.call(["touch", "/home/me/Desktop/Python_DataPreProcessingLog.txt"])
#p = sub.Popen('~/.script', stdout=sub.PIPE, stderr=sub.PIPE)
#output, errors = p.communicate()


buff = ' Hey'

gui = tk.Tk()

# Desing GUI interface for the preprocessing of the Data

# Three Frame: 
ControlFrame = tk.Frame(gui)
ControlFrame.pack(side = tk.LEFT)
IR_Frame = tk.Frame(ControlFrame)
IR_Frame.pack(side = tk.TOP, fill = tk.Y)

button_getCVSdirectories = tk.Button(IR_Frame, text='Update Location of IR CSV files', command=GetCSVPath)
button_getCVSdirectories.grid(row = 1, column = 0, sticky = tk.W)

VIS_Frame = tk.Frame(ControlFrame)
VIS_Frame.pack(side = tk.BOTTOM, fill = tk.Y)
    
OUTput_Frame = tk.Frame(gui)
OUTput_Frame.pack(side = tk.LEFT)

IR_Label = tk.Label(IR_Frame, text='IR Images Data Controls')
IR_Label.grid(row = 0, column = 0, sticky = tk.W)

VIS_Label = tk.Label(VIS_Frame, text='Visible Images Data Controls')
VIS_Label.grid(row = 0, column = 0, sticky = tk.W)

Display_text = tk.Text(OUTput_Frame, height = 50, width = 100)
Display_text.insert(tk.END, buff)


Display_text.insert(tk.END, buff)
Display_text.pack()

#file_path = filedialog.askdirectory()
#file_name_and_path = filedialog.askopenfilename()
#print('Vis Image File name: ', file_name_and_path)
#print('IR CSV file directiry: ', file_path)
#data = CSV_2_IR_Imageconverter(file_path)
#IR2Vis_scaleing(data, file_name_and_path)

    
gui.mainloop()
    
    