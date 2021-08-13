variable "region" {
   description = "specify region"
   type = "string"
   default = "us-east-1"
}

variable "description" {
    type = "string"
    default = "kms key creation"
}

variable "key_usage" {
    description = "Specifies the intended use of the key. Valid values: ENCRYPT_DECRYPT or SIGN_VERIFY. Defaults to ENCRYPT_DECRYPT"
    type = "string"
    default = "ENCRYPT_DECRYPT"
}

variable "customer_master_key_spec" {
     description = "Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC_DEFAULT, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, or ECC_SECG_P256K1. Defaults to SYMMETRIC_DEFAULT"
     type = "string"
     default = "SYMMETRIC_DEFAULT"
}

variable "deletion_window_in_days" {
    description = "Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days. Defaults to 30 days."
    type = "string"
    default = "30"
}

variable "enable_key_rotation" {
    description = "pecifies whether key rotation is enabled. Defaults to false."
    type = "string"
    default = "false"
}

variable "alias" {
    description = "provide service name that you are creating this key for"
    type = "string"
}

variable "policy" {
    description = "A valid policy JSON document. Although this is a key policy, not an IAM policy, an aws_iam_policy_document, in the form that designates a principal, can be used."
    type = "string"
    default = ""

}

variable "tags" {
    description = "tags for identifying"
    type = map(string)
    default = ""
}