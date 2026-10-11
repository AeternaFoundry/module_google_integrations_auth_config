resource "google_integrations_auth_config" "integrations_auth_configs" {
  for_each = var.integrations_auth_configs

  display_name                 = each.value.display_name
  location                     = each.value.location
  deletion_policy              = each.value.deletion_policy
  description                  = each.value.description
  expiry_notification_duration = each.value.expiry_notification_duration
  override_valid_time          = each.value.override_valid_time
  project                      = each.value.project
  visibility                   = each.value.visibility

  dynamic "client_certificate" {
    for_each = each.value.client_certificate != null ? [each.value.client_certificate] : []
    content {
      encrypted_private_key = client_certificate.value.encrypted_private_key
      passphrase            = client_certificate.value.passphrase
      ssl_certificate       = client_certificate.value.ssl_certificate
    }
  }

  dynamic "decrypted_credential" {
    for_each = each.value.decrypted_credential != null ? [each.value.decrypted_credential] : []
    content {
      dynamic "auth_token" {
        for_each = decrypted_credential.value.auth_token != null ? [decrypted_credential.value.auth_token] : []
        content {
          token = auth_token.value.token
          type  = auth_token.value.type
        }
      }
      credential_type = decrypted_credential.value.credential_type
      dynamic "jwt" {
        for_each = decrypted_credential.value.jwt != null ? [decrypted_credential.value.jwt] : []
        content {
          jwt_header  = jwt.value.jwt_header
          jwt_payload = jwt.value.jwt_payload
          secret      = jwt.value.secret
        }
      }
      dynamic "oauth2_authorization_code" {
        for_each = decrypted_credential.value.oauth2_authorization_code != null ? [decrypted_credential.value.oauth2_authorization_code] : []
        content {
          auth_endpoint  = oauth2_authorization_code.value.auth_endpoint
          client_id      = oauth2_authorization_code.value.client_id
          client_secret  = oauth2_authorization_code.value.client_secret
          scope          = oauth2_authorization_code.value.scope
          token_endpoint = oauth2_authorization_code.value.token_endpoint
        }
      }
      dynamic "oauth2_client_credentials" {
        for_each = decrypted_credential.value.oauth2_client_credentials != null ? [decrypted_credential.value.oauth2_client_credentials] : []
        content {
          client_id      = oauth2_client_credentials.value.client_id
          client_secret  = oauth2_client_credentials.value.client_secret
          request_type   = oauth2_client_credentials.value.request_type
          scope          = oauth2_client_credentials.value.scope
          token_endpoint = oauth2_client_credentials.value.token_endpoint
          dynamic "token_params" {
            for_each = oauth2_client_credentials.value.token_params != null ? [oauth2_client_credentials.value.token_params] : []
            content {
              dynamic "entries" {
                for_each = token_params.value.entries != null ? token_params.value.entries : []
                content {
                  dynamic "key" {
                    for_each = entries.value.key != null ? [entries.value.key] : []
                    content {
                      dynamic "literal_value" {
                        for_each = key.value.literal_value != null ? [key.value.literal_value] : []
                        content {
                          string_value = literal_value.value.string_value
                        }
                      }
                    }
                  }
                  dynamic "value" {
                    for_each = entries.value.value != null ? [entries.value.value] : []
                    content {
                      dynamic "literal_value" {
                        for_each = value.value.literal_value != null ? [value.value.literal_value] : []
                        content {
                          string_value = literal_value.value.string_value
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      dynamic "oidc_token" {
        for_each = decrypted_credential.value.oidc_token != null ? [decrypted_credential.value.oidc_token] : []
        content {
          audience              = oidc_token.value.audience
          service_account_email = oidc_token.value.service_account_email
        }
      }
      dynamic "service_account_credentials" {
        for_each = decrypted_credential.value.service_account_credentials != null ? [decrypted_credential.value.service_account_credentials] : []
        content {
          scope           = service_account_credentials.value.scope
          service_account = service_account_credentials.value.service_account
        }
      }
      dynamic "username_and_password" {
        for_each = decrypted_credential.value.username_and_password != null ? [decrypted_credential.value.username_and_password] : []
        content {
          password = username_and_password.value.password
          username = username_and_password.value.username
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

