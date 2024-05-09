certutil -delstore -f root "DriverCertificate"
certutil -delstore -f TrustedPublisher "DriverCertificate"

.\nefconc.exe --remove-device-node --hardware-id Root\VirtualDisplayDriver --class-guid "4D36E968-E325-11CE-BFC1-08002BE10318"