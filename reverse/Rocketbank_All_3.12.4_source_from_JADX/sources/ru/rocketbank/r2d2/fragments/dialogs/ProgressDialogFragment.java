package ru.rocketbank.r2d2.fragments.dialogs;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: ProgressDialogFragment.kt */
public final class ProgressDialogFragment extends DialogFragment {
    public static final Companion Companion = new Companion();
    private static final String MESSAGE_KEY = "message";
    private static final String MESSAGE_TEXT_KEY = "message_text";
    private HashMap _$_findViewCache;

    /* compiled from: ProgressDialogFragment.kt */
    public static final class Companion {
        public final ProgressDialogFragment newInstance() {
            return newInstance$default(this, 0, 1, null);
        }

        private Companion() {
        }

        public static /* bridge */ /* synthetic */ ProgressDialogFragment newInstance$default(Companion companion, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = C0859R.string.please_wait;
            }
            return companion.newInstance(i);
        }

        public final ProgressDialogFragment newInstance(int i) {
            ProgressDialogFragment progressDialogFragment = new ProgressDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("message", i);
            progressDialogFragment.setArguments(bundle);
            return progressDialogFragment;
        }

        public final ProgressDialogFragment newInstance(String str) {
            Intrinsics.checkParameterIsNotNull(str, "messageString");
            ProgressDialogFragment progressDialogFragment = new ProgressDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putString(ProgressDialogFragment.MESSAGE_TEXT_KEY, str);
            progressDialogFragment.setArguments(bundle);
            return progressDialogFragment;
        }
    }

    public static final ProgressDialogFragment newInstance(String str) {
        return Companion.newInstance(str);
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

    public final /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.app.Dialog onCreateDialog(android.os.Bundle r5) {
        /*
        r4 = this;
        r5 = new android.app.ProgressDialog;
        r0 = r4.getActivity();
        r0 = (android.content.Context) r0;
        r5.<init>(r0);
        r0 = 1;
        r5.setIndeterminate(r0);
        r0 = 0;
        r5.setProgressStyle(r0);
        r1 = r4.getArguments();
        r2 = 2131821445; // 0x7f110385 float:1.9275633E38 double:1.053259739E-314;
        if (r1 == 0) goto L_0x0044;
    L_0x001c:
        r3 = "message";
        r3 = r1.containsKey(r3);
        if (r3 == 0) goto L_0x002f;
    L_0x0024:
        r3 = "message";
        r1 = r1.getInt(r3);
        r1 = r4.getString(r1);
        goto L_0x0042;
    L_0x002f:
        r3 = "message_text";
        r3 = r1.containsKey(r3);
        if (r3 == 0) goto L_0x003e;
    L_0x0037:
        r3 = "message_text";
        r1 = r1.getString(r3);
        goto L_0x0042;
    L_0x003e:
        r1 = r4.getString(r2);
    L_0x0042:
        if (r1 != 0) goto L_0x0048;
    L_0x0044:
        r1 = r4.getString(r2);
    L_0x0048:
        r1 = (java.lang.CharSequence) r1;
        r5.setMessage(r1);
        r4.setCancelable(r0);
        r5 = (android.app.Dialog) r5;
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.fragments.dialogs.ProgressDialogFragment.onCreateDialog(android.os.Bundle):android.app.Dialog");
    }
}
