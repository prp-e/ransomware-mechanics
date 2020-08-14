require 'openssl'

cipher = OpenSSL::Cipher.new('aes-256-cbc')
cipher.encrypt
key = cipher.random_key
iv = cipher.random_iv 

buffer = ""

File.open("target_file.enc", "wb") do |outf|
	File.open("target_file", "rb") do |inf|
		while inf.read(4096, buffer)
			outf << cipher.update(buffer)
		end
		outf << cipher.final
	end
end

#### Let's Decrypt #### 

cipher = OpenSSL::Cipher.new('aes-256-cbc')
cipher.decrypt
cipher.key = key
cipher.iv = iv

buffer = ""

File.open("target_file.dec", "wb") do |outf|
	File.open("target_file.enc", "rb") do |inf|
		while inf.read(4096, buffer)
			outf << cipher.update(buffer)
		end
		outf << cipher.final
	end
end
