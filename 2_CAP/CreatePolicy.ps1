Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
    conditions      = @{
        applications               = @{
            includeApplications                         = @(
                "All"
            )
            excludeApplications                         = @(
            )
            includeUserActions                          = @(
            )
            includeAuthenticationContextClassReferences = @(
            )
            globalSecureAccess                          = $null
        }
        clients                    = $null
        users                      = @{
            includeUsers                 = @(
                "All"
            )
            excludeUsers                 = @(
                "42991f84-5361-4b44-baa7-061bed1f6d4c"
            )
            includeGroups                = @(
            )
            excludeGroups                = @(
            )
            includeRoles                 = @(
            )
            excludeRoles                 = @(
            )
            includeGuestsOrExternalUsers = $null
            excludeGuestsOrExternalUsers = $null
        }
        clientApplications         = $null
        platforms                  = $null
        locations                  = $null
        userRiskLevels             = @(
        )
        signInRiskLevels           = @(
        )
        signInRiskDetections       = $null
        clientAppTypes             = @(
            "all"
        )
        times                      = $null
        devices                    = @{
            deviceFilter   = @{
                mode = "include"
                rule = "device.deviceId -eq `"1`""
            }
            includeDevices = @(
            )
            excludeDevices = @(
            )
        }
        servicePrincipalRiskLevels = @(
        )
        authenticationFlows        = $null
    }
    displayName     = "ONLY FOR DEMO DELETE"
    grantControls   = @{
        operator                    = "AND"
        builtInControls             = @(
        )
        customAuthenticationFactors = @(
        )
        termsOfUse                  = @(
        )
        authenticationStrength      = @{
            id = "00000000-0000-0000-0000-000000000002"
        }
    }
    sessionControls = $null
    state           = "disabled"
}

New-MgBetaIdentityConditionalAccessPolicy -BodyParameter $params