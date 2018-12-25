package ru.rocketbank.r2d2.activities.safe;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.SafeAccount;
import ru.rocketbank.core.model.dto.GenericRequestResponseData;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.StatusActivity;
import rx.Observable;

/* compiled from: CloseSafeStatusActivity.kt */
public final class CloseSafeStatusActivity extends StatusActivity<GenericRequestResponseData> {
    public static final Companion Companion = new Companion();
    private static final String KEY_DATA = "KEY_DATA";
    private HashMap _$_findViewCache;
    private String token = "";

    /* compiled from: CloseSafeStatusActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getKEY_DATA() {
            return CloseSafeStatusActivity.KEY_DATA;
        }

        public final Intent createIntent(Context context, SafeAccount safeAccount) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(safeAccount, "safeAccount");
            context = StatusActivity.Companion.createIntent(context, CloseSafeStatusActivity.class, C0859R.string.close_safe_account);
            context.putExtra(getKEY_DATA(), safeAccount);
            Intrinsics.checkExpressionValueIsNotNull(context, "intent");
            return context;
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public final String getToken() {
        return this.token;
    }

    public final void setToken(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.token = str;
    }

    protected final Observable<GenericRequestResponseData> getOperation() {
        Observable<GenericRequestResponseData> accountsClose = this.rocketApi.accountsClose(this.token, "");
        Intrinsics.checkExpressionValueIsNotNull(accountsClose, "rocketApi.accountsClose(token, \"\")");
        return accountsClose;
    }

    public final void onCreate(Bundle bundle) {
        Parcelable parcelableExtra = getIntent().getParcelableExtra(KEY_DATA);
        Intrinsics.checkExpressionValueIsNotNull(parcelableExtra, "intent.getParcelableExtra<SafeAccount>(KEY_DATA)");
        String token = ((SafeAccount) parcelableExtra).getToken();
        Intrinsics.checkExpressionValueIsNotNull(token, "intent.getParcelableExtr…eAccount>(KEY_DATA).token");
        this.token = token;
        super.onCreate(bundle);
    }
}
