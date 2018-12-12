diff --git a/Telegraph/TGTelegramNetworking.m b/Telegraph/TGTelegramNetworking.m
index 7f526549..a17dd021 100644
--- a/Telegraph/TGTelegramNetworking.m
+++ b/Telegraph/TGTelegramNetworking.m
@@ -259,17 +259,27 @@ static TGTelegramNetworking *singleton = nil;
         
         if (_isTestingEnvironment)
         {
+#ifndef PATCH_BY_NEBULACHAT
             [_context updateAddressSetForDatacenterWithId:1 addressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
                 [[MTDatacenterAddress alloc] initWithIp:@"149.154.175.10" port:443 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil]
             ]] forceUpdateSchemes:true];
             [_context updateAddressSetForDatacenterWithId:2 addressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
                 [[MTDatacenterAddress alloc] initWithIp:@"149.154.167.40" port:443 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil]
             ]] forceUpdateSchemes:true];
+#else
+            [_context updateAddressSetForDatacenterWithId:1 addressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
+                [[MTDatacenterAddress alloc] initWithIp:@"192.168.0.112" port:12345 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil]
+                ]] forceUpdateSchemes:true];
+            [_context updateAddressSetForDatacenterWithId:2 addressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
+                [[MTDatacenterAddress alloc] initWithIp:@"192.168.0.112" port:12345 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil]
+                ]] forceUpdateSchemes:true];
+#endif
         }
         else
         {
             [_context performBatchUpdates:^
             {
+#ifndef PATCH_BY_NEBULACHAT
                 [_context setSeedAddressSetForDatacenterWithId:1 seedAddressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
                     [[MTDatacenterAddress alloc] initWithIp:@"149.154.175.50" port:443 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil],
                     [[MTDatacenterAddress alloc] initWithIp:@"2001:b28:f23d:f001::a" port:443 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil]
@@ -294,6 +304,27 @@ static TGTelegramNetworking *singleton = nil;
                     [[MTDatacenterAddress alloc] initWithIp:@"149.154.171.5" port:443 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil],
                     [[MTDatacenterAddress alloc] initWithIp:@"2001:b28:f23f:f005::a" port:443 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil]
                 ]]];
+#else
+                [_context setSeedAddressSetForDatacenterWithId:1 seedAddressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
+                    [[MTDatacenterAddress alloc] initWithIp:@"192.168.0.112" port:12345 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil],
+                    ]]];
+                
+                [_context setSeedAddressSetForDatacenterWithId:2 seedAddressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
+                    [[MTDatacenterAddress alloc] initWithIp:@"192.168.0.112" port:12345 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil],
+                    ]]];
+                
+                [_context setSeedAddressSetForDatacenterWithId:3 seedAddressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
+                    [[MTDatacenterAddress alloc] initWithIp:@"192.168.0.112" port:12345 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil],
+                    ]]];
+                
+                [_context setSeedAddressSetForDatacenterWithId:4 seedAddressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
+                    [[MTDatacenterAddress alloc] initWithIp:@"192.168.0.112" port:12345 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil],
+                    ]]];
+                
+                [_context setSeedAddressSetForDatacenterWithId:5 seedAddressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
+                    [[MTDatacenterAddress alloc] initWithIp:@"192.168.0.112" port:12345 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil],
+                    ]]];
+#endif
             }];
         }
         
@@ -301,12 +332,21 @@ static TGTelegramNetworking *singleton = nil;
         
         if (_isTestingEnvironment)
         {
+#ifndef PATCH_BY_NEBULACHAT
             [_context updateAddressSetForDatacenterWithId:1 addressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
                 [[MTDatacenterAddress alloc] initWithIp:@"149.154.175.10" port:443 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil]
             ]] forceUpdateSchemes:true];
             [_context updateAddressSetForDatacenterWithId:2 addressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
                 [[MTDatacenterAddress alloc] initWithIp:@"149.154.167.40" port:443 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil]
             ]] forceUpdateSchemes:true];
+#else
+            [_context updateAddressSetForDatacenterWithId:1 addressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
+                [[MTDatacenterAddress alloc] initWithIp:@"192.168.0.112" port:12345 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil]
+                ]] forceUpdateSchemes:true];
+            [_context updateAddressSetForDatacenterWithId:2 addressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[
+                [[MTDatacenterAddress alloc] initWithIp:@"192.168.0.112" port:12345 preferForMedia:false restrictToTcp:false cdn:false preferForProxy:false secret:nil]
+                ]] forceUpdateSchemes:true];
+#endif
         } else {
 #if DEBUG
             //[_context updateAddressSetForDatacenterWithId:1 addressSet:[[MTDatacenterAddressSet alloc] initWithAddressList:@[]] forceUpdateSchemes:true];
