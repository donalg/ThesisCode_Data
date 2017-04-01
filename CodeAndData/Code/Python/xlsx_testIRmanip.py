#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Mar 31 16:24:33 2017

@author: me
"""

import matplotlib.pyplot as plt
import openpyxl as pyxl
import numpy as np 

def convertIR_exel_toImage(filename):
    # require openpyxl as pyxl
    wb =pyxl.load_workbook(filename)
    
    sheetNames = wb.get_sheet_names()
    x_min = 1
    y_min = 10
    x_max = 241
    y_max = 319 + 10
    y_gap = 2
    num_frames = 4
    images = np.zeros((len(sheetNames), 4, (y_max - y_min), (x_max - x_min)), dtype = np.float)
    print('Beggining Loop')
    for i in sheetNames:
        # Create a Numpy image array with 
        print('Sheet Number: ', i)
        for z in range(num_frames): # Loop through number of Frames  
            print('Frame Number: ', z)
            for j in range(x_max - x_min): # Loop through Columns
                print('Col Number: ', j)
                sheetColIndex = j + x_min 
                for k in range(y_max - y_min): # Loop through Rows
                    sheetRowIndex = k + ((z * (y_max - y_min + y_gap)) + y_min) +1
                    images[sheetNames.index(i), z, k, j] = wb[i][sheetRowIndex][sheetColIndex].value
                    
                    
    return images

name_file = '../../Data/ImageData/IR_Images/ThirtyIRFrames_20mm.xlsx'

                
img = convertIR_exel_toImage(name_file)
        