#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Mar 31 12:53:57 2017

@author: me
"""

import tkinter as tk

def namePrint():
    print("Hey Doitz")
    
root2 = tk.Tk()

label1 = tk.Label(root2, text="Name")
label2 = tk.Label(root2, text="Password")

entry1 = tk.Entry(root2)
entry2 = tk.Entry(root2)
button1 = tk.Button(root2, text="Press Me", command=namePrint)
checkB = tk.Checkbutton(root2, text="Remember my Login Details")

label1.grid(row=0,column=0, sticky = tk.E)
label2.grid(row=1,column=0, sticky = tk.E)
entry1.grid(row=0,column=1)
entry2.grid(row=1,column=1)
checkB.grid(row=2,columnspan=2)
button1.grid(row = 2, column = 2)

root2.mainloop()