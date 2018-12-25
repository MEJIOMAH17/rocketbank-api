package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.facebook.AccessTokenSource;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient.Request;
import com.facebook.login.LoginClient.Result;

abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {
    abstract boolean tryAuthorize(Request request);

    NativeAppLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    NativeAppLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    boolean onActivityResult(int i, int i2, Intent intent) {
        i = this.loginClient.getPendingRequest();
        if (intent == null) {
            i = Result.createCancelResult(i, "Operation canceled");
        } else if (i2 == 0) {
            i = handleResultCancel(i, intent);
        } else if (i2 != -1) {
            i = Result.createErrorResult(i, "Unexpected resultCode from authorization.", null);
        } else {
            i = handleResultOk(i, intent);
        }
        if (i != 0) {
            this.loginClient.completeAndValidate(i);
        } else {
            this.loginClient.tryNextHandler();
        }
        return true;
    }

    private Result handleResultOk(Request request, Intent intent) {
        intent = intent.getExtras();
        String error = getError(intent);
        String string = intent.getString(NativeProtocol.BRIDGE_ARG_ERROR_CODE);
        String errorMessage = getErrorMessage(intent);
        String string2 = intent.getString("e2e");
        if (!Utility.isNullOrEmpty(string2)) {
            logWebLoginCompleted(string2);
        }
        if (error == null && string == null && errorMessage == null) {
            try {
                return Result.createTokenResult(request, LoginMethodHandler.createAccessTokenFromWebBundle(request.getPermissions(), intent, AccessTokenSource.FACEBOOK_APPLICATION_WEB, request.getApplicationId()));
            } catch (Intent intent2) {
                return Result.createErrorResult(request, null, intent2.getMessage());
            }
        } else if (ServerProtocol.errorsProxyAuthDisabled.contains(error) != null) {
            return null;
        } else {
            if (ServerProtocol.errorsUserCanceled.contains(error) != null) {
                return Result.createCancelResult(request, null);
            }
            return Result.createErrorResult(request, error, errorMessage, string);
        }
    }

    private Result handleResultCancel(Request request, Intent intent) {
        intent = intent.getExtras();
        String error = getError(intent);
        String string = intent.getString(NativeProtocol.BRIDGE_ARG_ERROR_CODE);
        if (ServerProtocol.errorConnectionFailure.equals(string)) {
            return Result.createErrorResult(request, error, getErrorMessage(intent), string);
        }
        return Result.createCancelResult(request, error);
    }

    private String getError(Bundle bundle) {
        String string = bundle.getString("error");
        return string == null ? bundle.getString(NativeProtocol.BRIDGE_ARG_ERROR_TYPE) : string;
    }

    private String getErrorMessage(Bundle bundle) {
        String string = bundle.getString(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE);
        return string == null ? bundle.getString(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION) : string;
    }

    protected boolean tryIntent(android.content.Intent r3, int r4) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r0 = 0;
        if (r3 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r1 = r2.loginClient;	 Catch:{ ActivityNotFoundException -> 0x000f }
        r1 = r1.getFragment();	 Catch:{ ActivityNotFoundException -> 0x000f }
        r1.startActivityForResult(r3, r4);	 Catch:{ ActivityNotFoundException -> 0x000f }
        r3 = 1;
        return r3;
    L_0x000f:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.NativeAppLoginMethodHandler.tryIntent(android.content.Intent, int):boolean");
    }
}
