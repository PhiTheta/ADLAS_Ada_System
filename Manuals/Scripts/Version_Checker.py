####ile Name: Ada_Code_File_Creation.py
#Author   : Rubber-Duck-999
#Version  : 1.0
#Status   : In Production

import os
from openpyxl import Workbook
from openpyxl.utils import get_column_letter
from openpyxl.compat import range
import tkinter as tk
from openpyxl import load_workbook
from shutil import copyfile
import fileinput
#Import of necessary libraries

Main_2 = ("C:/Users/simon/Documents/Programming/Ada/System Checks")
Main   = ("C:/Users/simon/Documents/Github/Projects/ADLAS_Ada_System")  

Template = (Main + '/' + "System Project/Template Header.adb")

Project_Software_List = [(Main + '/' + "Software-Requirements/BIT"),
                         (Main + '/' + "Software-Requirements/ADLAS.Initialise_Target"),
                         (Main + '/' + "Software-Requirements/ADLAS.Phase_One_Analyse")]

Software_Requirements_List = [(Main + '/' + "System Project/BIT"),
                              (Main + '/' + "System Project/ADLAS.Initialise_Target"),
                              (Main + '/' + "System Project/ADLAS.Phase_One_Analyse")]

Project_Names = ["BIT",
                 "ADLAS.Initialise_Target",
                 "ADLAS.Phase_One_Analyse"]


def Project_Selection():
    print("#--------------------------------------------------------#")
    print("   Project Selection for ada autogeneration tool         ")
    print("#--------------------------------------------------------#")
    Index = 1
    for Project in Project_Names:
        print(str(Index) + ": Project Name: ", Project)
        Index += 1
    Index =- 1
    Choice = int(input("Select a project number?: "))
    print("#--------------------------------------------------------#")
    print("Project Name: " + Project_Names[Choice])
    print("#--------------------------------------------------------#")
    return Choice
    

def Replace(Ada, Function_Name):
    with open(Ada, "r") as File:
        print(Ada)
        Replacements_1 = File.read().replace('<File_Name>', Ada)
        Replacements_2 = File.read().replace('<Function_Name>', Function_Name)
    with open(Ada, "w") as File:
        File.write(Replacements_1)
        File.write(Replacements_2)

def Find_Version():
    start = 'asdf=5;'
    end = '123jasd'
    s = 'asdf=5;iwantthis123jasd'
    print s[s.find(start)+len(start):s.rfind(end)]



        
