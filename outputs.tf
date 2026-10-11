output "integrations_auth_configs_id" {
  description = "Map of id values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no id are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integrations_auth_configs_certificate_id" {
  description = "Map of certificate_id values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no certificate_id are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.certificate_id if v.certificate_id != null && length(v.certificate_id) > 0 }
}
output "integrations_auth_configs_client_certificate" {
  description = "Map of client_certificate values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no client_certificate are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => one(v.client_certificate) if v.client_certificate != null && length(v.client_certificate) > 0 }
}
output "integrations_auth_configs_create_time" {
  description = "Map of create_time values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no create_time are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "integrations_auth_configs_creator_email" {
  description = "Map of creator_email values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no creator_email are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.creator_email if v.creator_email != null && length(v.creator_email) > 0 }
}
output "integrations_auth_configs_credential_type" {
  description = "Map of credential_type values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no credential_type are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.credential_type if v.credential_type != null && length(v.credential_type) > 0 }
}
output "integrations_auth_configs_decrypted_credential" {
  description = "Map of decrypted_credential values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no decrypted_credential are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => one(v.decrypted_credential) if v.decrypted_credential != null && length(v.decrypted_credential) > 0 }
}
output "integrations_auth_configs_deletion_policy" {
  description = "Map of deletion_policy values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "integrations_auth_configs_description" {
  description = "Map of description values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no description are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "integrations_auth_configs_display_name" {
  description = "Map of display_name values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no display_name are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "integrations_auth_configs_encrypted_credential" {
  description = "Map of encrypted_credential values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no encrypted_credential are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.encrypted_credential if v.encrypted_credential != null && length(v.encrypted_credential) > 0 }
}
output "integrations_auth_configs_expiry_notification_duration" {
  description = "Map of expiry_notification_duration values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no expiry_notification_duration are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.expiry_notification_duration if v.expiry_notification_duration != null && length(v.expiry_notification_duration) > 0 }
}
output "integrations_auth_configs_last_modifier_email" {
  description = "Map of last_modifier_email values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no last_modifier_email are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.last_modifier_email if v.last_modifier_email != null && length(v.last_modifier_email) > 0 }
}
output "integrations_auth_configs_location" {
  description = "Map of location values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no location are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "integrations_auth_configs_name" {
  description = "Map of name values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no name are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "integrations_auth_configs_override_valid_time" {
  description = "Map of override_valid_time values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no override_valid_time are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.override_valid_time if v.override_valid_time != null && length(v.override_valid_time) > 0 }
}
output "integrations_auth_configs_project" {
  description = "Map of project values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no project are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "integrations_auth_configs_reason" {
  description = "Map of reason values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no reason are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.reason if v.reason != null && length(v.reason) > 0 }
}
output "integrations_auth_configs_state" {
  description = "Map of state values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no state are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "integrations_auth_configs_update_time" {
  description = "Map of update_time values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no update_time are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "integrations_auth_configs_valid_time" {
  description = "Map of valid_time values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no valid_time are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.valid_time if v.valid_time != null && length(v.valid_time) > 0 }
}
output "integrations_auth_configs_visibility" {
  description = "Map of visibility values across all integrations_auth_configs, keyed the same as var.integrations_auth_configs except keys with no visibility are omitted"
  value       = { for k, v in google_integrations_auth_config.integrations_auth_configs : k => v.visibility if v.visibility != null && length(v.visibility) > 0 }
}

