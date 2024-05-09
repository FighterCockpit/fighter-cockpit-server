certutil -addstore -f root ".\DriverCertificate.cer"
certutil -addstore -f TrustedPublisher ".\DriverCertificate.cer"

.\nefconc.exe --remove-device-node --hardware-id Root\VirtualDisplayDriver --class-guid "4D36E968-E325-11CE-BFC1-08002BE10318"
.\nefconc.exe --create-device-node --class-name Display --class-guid "4D36E968-E325-11CE-BFC1-08002BE10318" --hardware-id Root\VirtualDisplayDriver
.\nefconc.exe --install-driver --inf-path ".\VirtualDisplayDriver.inf"