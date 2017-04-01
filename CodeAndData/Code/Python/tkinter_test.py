#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Mar 31 12:37:43 2017

Using Tkinter basics: 

@author: me
"""
import tkinter as tk

root = tk.Tk()

topFrame = tk.Frame(root)
topFrame.pack()

bottomFrame = tk.Frame(root)
bottomFrame.pack(side = tk.BOTTOM)

button1 = tk.Button(topFrame, text="Button 1", fg="red")
button2 = tk.Button(topFrame, text="Button 2", fg="blue")
button3 = tk.Button(topFrame, text="Button 3", fg="green")
button4 = tk.Button(bottomFrame, text="Button 4", fg="purple")

button1.pack(side = tk.LEFT)
button2.pack(side = tk.LEFT, fill = tk.Y)
button3.pack(side = tk.LEFT, fill = tk.X)
button4.pack(side = tk.LEFT, fill = tk.X)

root.mainloop()

