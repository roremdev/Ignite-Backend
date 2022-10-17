# ℹ️ Description
# Specifies the AWS Secrets Manager provider for secrets.

# 📚 AWS Secrets Manager
# - name: Friendly name of the new secret.
# - recovery_window_in_days: Number of days that AWS Secrets Manager waits before it can delete the secret.
resource "aws_secretsmanager_secret" "doppler" {
  name                    = "development/m5b3SpL9kG/doppler"
  description             = "Doppler secret for development environment"
  recovery_window_in_days = 0

}
