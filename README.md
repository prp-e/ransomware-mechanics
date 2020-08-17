# Mechanics of a Ransomware in Ruby

__THIS IS FOR EDUCATIONAL PURPOSES ONLY. IF YOU DAMAGE OTHER PEOPLE'S PROPERTIES USING THIS SCRIPT, IT MAY RESULT IN SERIOUS LEGAL STATEMENTS__

## What's a Ransomware? 

A ransomware is a piece of software which bullies you by damaging your useful data. Ransomwares usually encrypt the data on your computer and then, ask for money. In the modern days, this money can be a bit of your private information, organization secrets or simply, a bit of bitcoin. 

## How this code works

This code uses `openssl` gem to do an encryption. First, it generates a random _key_ and a random _iv_ as well. Then, encrypts the destination file using the generated keys. You won't be able to open the destination file without knowing the key. The encrypted file will have `.enc` extension and the original file will be safe. 

After that, it accepts the encrypted file and does the decryption process using the same library. Decrypted file will have `.dec` extension. 

## What you should consider 

* This is just a demonstration of how those things work, not a real thing. 
* I'm NOT responsible if you do anything wrong with this code. Be human! 
* If you do not understand the code, please do not modify it. Because It has the ability to result in a permanent damage on your data. Just use `target_file` or give your useless text files, pictures, etc. as an input. 
* Do not make pranks using this code. Instead, teach people _not to panic_ and understand the risk of being infected by a ransomware. 