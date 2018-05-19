Text = ("C:/Users/simon/Documents/Programming/Ada/System Checks/System Project/Txt.txt")

with open(Text) as f:
    newText=f.read().replace('Apples', 'Oranges')
 
with open(Text, "w") as f:
    f.write(newText)
