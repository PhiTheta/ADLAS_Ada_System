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
#Import of necessary libraries

os.chdir("C:/Users/simon/Documents/Work/Programming/Ada/System Checks/Software Requirements")

def Workbook():
    Workbook_Name = input("Workbook Name? ")
    Workbook = load_workbook(Workbook_Name + '.xlsx')
    # grab the active worksheet
    Worksheet = Workbook.active
    os.chdir("C:/Users/simon/Documents/Work/Programming/Ada/System Checks/System Project")
    Column_Group = input("Which column for Group?: ")
    Column_Sub_Group = input("Which column for Sub_Group?: ")
    Column_Procedure = input("Which column for Procedures?: ")
    # Data can be assigned directly to cells
    Row = 2
    
    while Worksheet.cell(row=Row, column=Column_Procedure).value != 0:
        File_Name_Procedure = Worksheet.cell(row=Row, column=Column_Procedure).value
        File_Name_Sub_Group = Worksheet.cell(row=Row, column=Column_Sub_Group).value
        File_Name_Group = Worksheet.cell(row=Row, column=Column_Group).value
        File_Name_Lower_1 = File_Name_Group.lower()
        File_Name_Lower_2 = File_Name_Sub_Group.lower()
        File_Name_Lower_3 = File_Name_Procedure.lower()
        File = open((File_Name_Lower_1 + "-" + File_Name_Lower_2 + "-" + File_Name_Lower_3 + ".adb"), "w")
        Column_Procedure + 1
        File.close()
        
    # Save the file
    wb.save(Worbook_name + 'xlsx')

Workbook()
