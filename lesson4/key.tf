resource "tls_private_key" "pvtkey" { 
    rsa_bits = 4096
    algorithm = "RSA"
    
}

resource "local_file" "key_details" { 
    filename = "key.pem"
    content = tls_private_key.pvtkey.private_key_pem
}