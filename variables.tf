variable "integrations_auth_configs" {
  description = <<EOT
Map of integrations_auth_configs, attributes below
Required:
    - display_name
    - location
Optional:
    - deletion_policy
    - description
    - expiry_notification_duration
    - override_valid_time
    - project
    - visibility
    - client_certificate (block):
        - encrypted_private_key (required)
        - passphrase (optional)
        - ssl_certificate (required)
    - decrypted_credential (block):
        - auth_token (optional, block):
            - token (optional)
            - type (optional)
        - credential_type (required)
        - jwt (optional, block):
            - jwt_header (optional)
            - jwt_payload (optional)
            - secret (optional)
        - oauth2_authorization_code (optional, block):
            - auth_endpoint (optional)
            - client_id (optional)
            - client_secret (optional)
            - scope (optional)
            - token_endpoint (optional)
        - oauth2_client_credentials (optional, block):
            - client_id (optional)
            - client_secret (optional)
            - request_type (optional)
            - scope (optional)
            - token_endpoint (optional)
            - token_params (optional, block):
                - entries (optional, block):
                    - key (optional, block):
                        - literal_value (optional, block):
                            - string_value (optional)
                    - value (optional, block):
                        - literal_value (optional, block):
                            - string_value (optional)
        - oidc_token (optional, block):
            - audience (optional)
            - service_account_email (optional)
        - service_account_credentials (optional, block):
            - scope (optional)
            - service_account (optional)
        - username_and_password (optional, block):
            - password (optional)
            - username (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name                 = string
    location                     = string
    deletion_policy              = optional(string)
    description                  = optional(string)
    expiry_notification_duration = optional(list(string))
    override_valid_time          = optional(string)
    project                      = optional(string)
    visibility                   = optional(string)
    client_certificate = optional(object({
      encrypted_private_key = string
      passphrase            = optional(string)
      ssl_certificate       = string
    }))
    decrypted_credential = optional(object({
      auth_token = optional(object({
        token = optional(string)
        type  = optional(string)
      }))
      credential_type = string
      jwt = optional(object({
        jwt_header  = optional(string)
        jwt_payload = optional(string)
        secret      = optional(string)
      }))
      oauth2_authorization_code = optional(object({
        auth_endpoint  = optional(string)
        client_id      = optional(string)
        client_secret  = optional(string)
        scope          = optional(string)
        token_endpoint = optional(string)
      }))
      oauth2_client_credentials = optional(object({
        client_id      = optional(string)
        client_secret  = optional(string)
        request_type   = optional(string)
        scope          = optional(string)
        token_endpoint = optional(string)
        token_params = optional(object({
          entries = optional(list(object({
            key = optional(object({
              literal_value = optional(object({
                string_value = optional(string)
              }))
            }))
            value = optional(object({
              literal_value = optional(object({
                string_value = optional(string)
              }))
            }))
          })))
        }))
      }))
      oidc_token = optional(object({
        audience              = optional(string)
        service_account_email = optional(string)
      }))
      service_account_credentials = optional(object({
        scope           = optional(string)
        service_account = optional(string)
      }))
      username_and_password = optional(object({
        password = optional(string)
        username = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

