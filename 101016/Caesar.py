#!/usr/bin/env python



# 
def write_file(d,writes):
    text=open(d,'w')
    text.write(writes)
    text.close()

#   
def read_file(filename):
    text = open(filename,'r').read()
    # text.close()
    return text
    


# 
alphabets = 'abcdefghijklmnopqrstuvwxyz'

# 
def encipher(filename, key):
    plaintext=read_file(filename)
    encryted_text = ''
    for l in plaintext.lower():
        try:
            i = (alphabets.index(l) + key) % 26
            encryted_text += alphabets[i]
        except ValueError:
            encryted_text += l
    write_file('ahmed.txt',encryted_text)
    
   

def decipher(filename ,key):
    plaintext=read_file(filename)
    decryted_text = ''
    for l in plaintext.lower():
        try:
            i = (alphabets.index(l) - key) % 26
            decryted_text += alphabets[i]
        except ValueError:
            decryted_text += l
    write_file('ahmed.txt',decryted_text)
    




# 
encipher('tony.txt',9)
decipher('ahmed.txt',9)

    




