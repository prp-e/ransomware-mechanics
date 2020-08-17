# Mechanics of a Ransomware in Ruby

__THIS IS FOR EDUCATIONAL PURPOSES ONLY. IF YOU DAMAGE OTHER PEOPLE'S PROPERTIES USING THIS SCRIPT, IT MAY RESULT IN SERIOUS LEGAL STATEMENTS__

## What's a Ransomware? 

A ransomware is a piece of software which bullies you by damaging your useful data. Ransomwares usually encrypt the data on your computer and then, ask for money. In the modern days, this money can be a bit of your private information, organization secrets or simply, a bit of bitcoin. 

## How this code works

This code uses `openssl` gem to do an encryption. First, it generates a random _key_ and a random _iv_ as well. Then, encrypts the destination file using the generated keys. You won't be able to open the destination file without knowing the key. The encrypted file will have `.enc` extension and the original file will be safe. 

After that, it accepts the encrypted file and does the decryption process using the same library. Decrypted file will have `.dec` extension. 