package ru.rocketbank.r2d2.registration.new_passport;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: NewPassportReadyFragment.kt */
public final class NewPassportReadyFragment extends NewPassportStepFragment {
    public static final Companion Companion = new Companion();
    private static final String KEY_ID = "ID";
    private HashMap _$_findViewCache;
    private Long operationId;

    /* compiled from: NewPassportReadyFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public static /* bridge */ /* synthetic */ NewPassportReadyFragment newInstance$default(Companion companion, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = 0;
            }
            return companion.newInstance(j);
        }

        public final NewPassportReadyFragment newInstance(long j) {
            NewPassportReadyFragment newPassportReadyFragment = new NewPassportReadyFragment();
            Bundle bundle = new Bundle();
            if (j != 0) {
                bundle.putLong(NewPassportReadyFragment.KEY_ID, j);
            }
            newPassportReadyFragment.setArguments(bundle);
            return newPassportReadyFragment;
        }
    }

    public static final NewPassportReadyFragment newInstance(long j) {
        return Companion.newInstance(j);
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
        if (view == null) {
            view = getView();
            if (view == null) {
                return null;
            }
            view = view.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view);
        }
        return view;
    }

    protected final String getBottomButtonText() {
        return null;
    }

    protected final int getStep() {
        return 4;
    }

    protected final int getStepImgRes() {
        return C0859R.drawable.yees;
    }

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected final String getStepTitle() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        String string = context.getString(C0859R.string.new_passport_ready);
        Intrinsics.checkExpressionValueIsNotNull(string, "context!!.getString(R.string.new_passport_ready)");
        return string;
    }

    protected final String getHelpText() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        String string = context.getString(C0859R.string.we_get_photos);
        Intrinsics.checkExpressionValueIsNotNull(string, "context!!.getString(R.string.we_get_photos)");
        return string;
    }

    protected final String getMainButtonText() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        String string = context.getString(C0859R.string.ready);
        Intrinsics.checkExpressionValueIsNotNull(string, "context!!.getString(R.string.ready)");
        return string;
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = getArguments();
        bundle = bundle != null ? Long.valueOf(bundle.getLong(KEY_ID)) : null;
        if (bundle != null) {
            if (bundle.longValue() == 0) {
                bundle = null;
            }
        }
        this.operationId = bundle;
    }

    public final void onMainButtonClicked() {
        ((NewPassportStepPresenter) getPresenter()).onReadyClicked(this.operationId);
    }
}
