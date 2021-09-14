ui = true

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

storage "file" {
  path = "/vault/file"
}

seal "awskms" {
  region     = "us-east-2"
  access_key = "[ACCESS_KEY]"
  secret_key = "[SECRET_KEY]"
  kms_key_id = "[KMS_KEY_ID]"
}

api_addr = "http://127.0.0.1:8200"

disable_mlock = "true"