#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Apr  2 13:13:29 2017

CSV To IR Image converter Program. 

This program will read in an excel xpread sheet then translate the appropriate 
sheets into IR_Thermography Image Frames and Save these frames to a *.png file 
extension. 

External Requirements: 
    gnumeric (allows for conversion between excel and CSV files)

Requires: 
    numpy 
    os
    csv
    matplotlib.pyplot
    subprocess
    tkinter



@author: donalglavin
"""

import os
import sys
import csv
import numpy as np
import matplotlib.pyplot as plt
import subprocess as sub
import easygui as egi
import openpyxl as pyxl

#import tkinter as tk
#from tkinter import filedialog

# Beggining the Excel Reading Function: 
def excel2IRimage(excel_file_path):
    '''
    Function to read in all CVS file inside a Directoy and convert to numpy Image format for plotting. 
    
    Funection used to create CSV files: 
        ssconvert -S "name_of_excel".xlxs pathname_of_csv".csv
        
    Create a gif: 
        convert -delay 30 *.png IR_20mm.gif

    '''


    # Creating a Temp Excel Spread Sheet that will be Edited and all processing will be done with respect to this file.    
    temp_excel = excel_file_path[:(len(excel_file_path) - len('.xlsx'))] + "_temp.xlsx"
    print('Creating Temp Excel sheet at: ' + temp_excel)
    sub.call(["cp", excel_file_path, temp_excel])
    # Preliminary Enter a Numbering scheme to order the images in terms of sheet order (refernece time)

        
    # Step 1: Batch convert Exel into CSV files Image Conversion: 
    Complete_convert = True
    # Create the New directory
    directoryname = excel_file_path[:(len(excel_file_path) - len('.xlsx'))]
    try: 
        os.stat(directoryname)
        if (len(os.listdir(directoryname)) > 0):
            # assume files have already been Converted for excel spreadsheet: 
            Complete_convert = False
    except:
        os.mkdir(directoryname)
    
    CSVdirectorystring = directoryname + '/IR_ImageData.csv'
    
    if (Complete_convert):
        
         print("Preparing to Index Excel file for Frame referencing purposes, This will take sometime...")
         temp_book = pyxl.load_workbook(temp_excel)
         ordered_sheet_names = temp_book.get_sheet_names()
    
         for i in ordered_sheet_names:
            # From Files it's Observes that B1 is always empty therefore place ordered variable into B1 
            print('Editing Vale at B1 For Sheet: ' + str(i) + '\nTo value of index: '+ str(ordered_sheet_names.index(i)) + '\n\n')
            temp_book[i]['B1'] = int(i.replace('Page', ''))
        
         print("Saving and Temp Excel Spreadsheet.. \n")
         temp_book.save(temp_excel)
         temp_book.close()
        
         try:
            print("Attempting to Convert excel Files to CSV, this may take sometime.....")
            sub.call(["ssconvert", "-S", temp_excel, CSVdirectorystring])
         except: #FileNotFoundError
            print("Error, have you installed \"gnumeric\"? This program is required for Batch convert from excel to CSV.")
    else:
        print("Directory and Files already exist, assuming this code has been run previously.")
    
        
        
    # Beggining Process of Converting CSV files to Images:

    file_names = os.listdir(directoryname)
    print('Files: ', file_names)
    
    # Knwon values: 
    col = 0
    row = 0
    row_shift = 0
    col_shift = 0
    
    cond_start = False
    data_begin =False
    shift_col_cond = False 
    
    print('\nImage Converter Started... \n')
    print('File Path: ' + directoryname + '\n')
    
    # IR Camera Data.txt
    #IR_data = []
    # IR_camera_settings = True
    
    images = np.zeros((len(file_names), 320*2, 240*2), dtype = np.float32)
    
    image_Order = [None] * len(file_names)
    for i in file_names:
        col = 0
        row = 0
        
        tmp_file = open(directoryname + '/' +  i, 'r') 
        tmp_data = csv.reader(tmp_file, delimiter=',')
        
        print('Data Obtained from: ' + i + '\n') 
        index_Col = 0
        index_Row = 0
        
        
        
        
        for j in tmp_data:
            for k in j:
                #if IR_camera_settings:
                    # Section to write a File that will contain the import IR settings contained within the CSV files. 
                    #IR_data[file_names.index(i)] += k 

                if (index_Col ==1) and (index_Row == 0):
                    print("Image Order: ", str(k), '\n\n')
                    image_Order[file_names.index(i)] = int(str(k))                   
                   
                # Loop through first element of line and check is is equivelt to 'x/y' if yes skip row but set the start flag to true
                if (k == 'x/y'):
                    cond_start = True
                    data_begin = False
                    #IR_camera_settings = False
                    break
                
                
                # Only run if Start flag and begin data stream is true (and skip the first part of data:)
                if cond_start and data_begin and j.index(k) > 0:
                    images[file_names.index(i), (row + row_shift), (col + col_shift)] = float(k) # Convert value to Float and insert into images array
                    col += 1 # Iterate column
                    #print('Col: ', col, 'Row: ', row, 'Value: ', k)
                
                index_Col += 1
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
        index_Row += 1
        
        #IR_camera_settings = True
        shift_col_cond = False
        row_shift = 0
        col_shift = 0
        
        images[file_names.index(i)] = np.fliplr(images[file_names.index(i)])
        print('File Completed: ' + i + ' \n')
        print('File Index: ' + str(file_names.index(i)) + ' of ' + str(len(file_names)) + ' \n' )
        
        tmp_file.close()
    
    print('Total number of files/frames converted: ' + str(len(file_names)) + '\n')
    
    print("All images Have been Converted...")
    print("Now Creating file with Images inside. This may also take sometime")
    
    image_save_directory = directoryname + "_IR_images"
    
    try: os.stat(image_save_directory)
    
    except:
        os.mkdir(image_save_directory)
        print(image_Order)
    for i in range(len(file_names)):
        print(i)
        print(str(image_Order[i]))
        imagepath = image_save_directory + "/" + directoryname.split('/')[-1]+ "_Frame_" + str(image_Order[i]) + ".png"
        print('Saving: ', imagepath)
        plt.imsave(imagepath, images[i])
        
        
##################################################################################
##################################################################################
##################################################################################
##################################################################################
# GUI to obtain the File Path: 
##################################################################################
##################################################################################
##################################################################################
##################################################################################
    
    
egi.msgbox("Program to Convert Excel SpreadSheets to IR Images Initated \nPlease Choose A file to Convert")   
file_path = egi.fileopenbox()
if file_path != None:
    title = "Is this file correct"
    msg = "The file Chosen is: " + file_path
    
    if (egi.ccbox(msg, title)):
        print('File Location to be Working With', file_path)
        excel2IRimage(file_path) # Conduct Purpose... 
        
    else:
        sys.exit(0) # Leave the Program...
else:
    sys.exit(0) # leave the Program
            

