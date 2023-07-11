<#
This example is used to test new resources and showcase the usage of new resources being worked on.
It is not meant to use as a production baseline.
#>

Configuration Example
{
#     Import-DscResource -ModuleName Microsoft365DSC

#     Node granite
    {
#         AADAuthenticationMethodPolicySoftware "AADAuthenticationMethodPolicySoftware-SoftwareOath"
        {
#             ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
#             CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
#             Ensure                = "Present";
#             ExcludeTargets        = @(
#                 MSFT_AADAuthenticationMethodPolicySoftwareExcludeTarget{
#                     Id = 'group1'
#                     TargetType = 'group'
                }
#                 MSFT_AADAuthenticationMethodPolicySoftwareExcludeTarget{
#                     Id = 'group2'
#                     TargetType = 'group'
                }
            );
#             Id                    = "SoftwareOath";
#             IncludeTargets        = @(
#                 MSFT_AADAuthenticationMethodPolicySoftwareIncludeTarget{
#                     Id = 'fakegroup3'
#                     TargetType = 'group'
                }
#                 MSFT_AADAuthenticationMethodPolicySoftwareIncludeTarget{
#                     Id = 'group4'
#                     TargetType = 'group'
                }
            );
#             State                 = "enabled";
#             TenantId              = $ConfigurationData.NodeData.TenantId;
        }
    }
}
