#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Mar 31 21:21:09 2017

@author: me
"""

import numpy as np 

import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import tkinter as tk
from tkinter import filedialog
import csv
import os


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
    
    images = np.zeros((len(file_names), 320*2, 240*2), dtype = np.float)
    
    for i in file_names:
        col = 0
        row = 0
        
        tmp_file = open(path + '/' +  i, 'r') 
        tmp_data = csv.reader(tmp_file, delimiter=',')
        
        for j in tmp_data:
            for k in j:
                
                # Loop through first element of line and check is is equivelt to 'x/y' if yes skip row but set the start flag to true
                if (k == 'x/y'):
                    cond_start = True
                    data_begin = False
                    break
                
                
                # Only run if Start flag and begin data stream is true (and skip the first part of data:)
                if cond_start and data_begin and j.index(k) > 0:
                    images[file_names.index(i), (row + row_shift), (col + col_shift)] = float(k) # Convert value to Float and insert into images array
                    col += 1 # Iterate column
                    #print('Col: ', col, 'Row: ', row, 'Value: ', k)
    
            # If start flag has been changed then set data being to true
            if cond_start and ~data_begin:
                data_begin = True
                
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

        shift_col_cond = False
        row_shift = 0
        col_shift = 0
        images[file_names.index(i)] = np.fliplr(images[file_names.index(i)])
    return images




    
gui = tk.Tk()
file_path = filedialog.askdirectory()
print(file_path)
data = CSV_2_IR_Imageconverter(file_path)
print('DoneSki!!')

for i in range(data.shape[0]):
    fig = plt.figure()
    plt.imshow(data[i])
    
    fig.show()
    
    string = '/home/me/Desktop/IR_Images/IR_frame_' + str(i) + '.png'
    plt.imsave(string, data[i])

    
gui.mainloop()
