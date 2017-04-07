import os
import sys
import numpy
import cv2
import openpyxl

class IR_DATA(object):
    '''
        The purpose of this class is to develop a tool that can be used for interpriting infra red
        image data without loosing the contextual information about that data, such as Camera Settings
        and true temperature values.

        This object will consist as:
            A list of intergers relating to frame reference
            A string relating to emmisivity settings of the camera
            A series of strings relating the rest of the camera Settings
            A numpy array for storing images with type float64

    '''
    def __init__(fileName):
        '''
            An init function that will be passed a directory filename and then go through the process of
            converting the IR image data from those files into the appropriate format for use within this
            program.
        '''


    def FormatEXCEL(filenameEXCEL):
        '''
            A function to convert an excel document into the desired format before batch convert to CSV
        '''

    def Batch_EXCEL2CSV(filenameEXCEL_converted):
        '''
            To perform the batch conversion from excel to CSV
        '''

    def readCSVdirectory(directoryPath):
        '''
             A Function to read in all CSV files held within a directory and convert them to desired structure
        '''

    def loadBIN(filename):
        '''
            A function to load prewritting binary file data.
        '''


    def saveBIN():
        '''
            A file that will save the IR data in a binary file output for more efficient storage of large files.
            Will also assist in faster reading in of IR data when analysis is required.
        '''
