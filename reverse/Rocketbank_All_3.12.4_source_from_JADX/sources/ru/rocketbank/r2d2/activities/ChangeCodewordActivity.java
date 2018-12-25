package ru.rocketbank.r2d2.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.model.ChangeCodeWord;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.CheckCardFragment;

/* compiled from: ChangeCodewordActivity.kt */
public final class ChangeCodewordActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private static final String KEY_CHANGE_CODEWORD = "KEY_CHANGE_CODEWORD";
    private HashMap _$_findViewCache;
    public ChangeCodeWord changeCodeWord;

    /* compiled from: ChangeCodewordActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getKEY_CHANGE_CODEWORD() {
            return ChangeCodewordActivity.KEY_CHANGE_CODEWORD;
        }

        public final void start(Activity activity, ChangeCodeWord changeCodeWord) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            Intrinsics.checkParameterIsNotNull(changeCodeWord, "changeCodeWord");
            Intent intent = new Intent(activity, ChangeCodewordActivity.class);
            intent.putExtra(getKEY_CHANGE_CODEWORD(), changeCodeWord);
            activity.startActivity(intent);
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

    public final ChangeCodeWord getChangeCodeWord() {
        ChangeCodeWord changeCodeWord = this.changeCodeWord;
        if (changeCodeWord == null) {
            Intrinsics.throwUninitializedPropertyAccessException("changeCodeWord");
        }
        return changeCodeWord;
    }

    public final void setChangeCodeWord(ChangeCodeWord changeCodeWord) {
        Intrinsics.checkParameterIsNotNull(changeCodeWord, "<set-?>");
        this.changeCodeWord = changeCodeWord;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_change_codeword);
        Parcelable parcelableExtra = getIntent().getParcelableExtra(KEY_CHANGE_CODEWORD);
        Intrinsics.checkExpressionValueIsNotNull(parcelableExtra, "intent.getParcelableExtr…ord>(KEY_CHANGE_CODEWORD)");
        this.changeCodeWord = (ChangeCodeWord) parcelableExtra;
        View _$_findCachedViewById = _$_findCachedViewById(C0859R.id.toolbarShadow);
        Intrinsics.checkExpressionValueIsNotNull(_$_findCachedViewById, "toolbarShadow");
        _$_findCachedViewById.setVisibility(VERSION.SDK_INT >= 21 ? 8 : 0);
        if (bundle == null) {
            bundle = getSupportFragmentManager().beginTransaction();
            ChangeCodeWord changeCodeWord = this.changeCodeWord;
            if (changeCodeWord == null) {
                Intrinsics.throwUninitializedPropertyAccessException("changeCodeWord");
            }
            bundle.replace(C0859R.id.content, CheckCardFragment.newInstance(changeCodeWord.getCheckCard())).addToBackStack(null).commit();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onEventMainThread(ru.rocketbank.core.events.CheckCardEvent r5) {
        /*
        r4 = this;
        r0 = "checkCardEvent";
        kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0);
        r0 = r5.getException();
        if (r0 == 0) goto L_0x0017;
    L_0x000b:
        r5 = ru.rocketbank.r2d2.C0859R.id.content;
        r5 = r4._$_findCachedViewById(r5);
        r5 = (android.support.design.widget.CoordinatorLayout) r5;
        ru.rocketbank.r2d2.helpers.UIHelper.showSnackWithError(r5, r0);
        return;
    L_0x0017:
        r5 = r5.getPlasticsCheckResponse();
        r0 = 0;
        if (r5 == 0) goto L_0x0021;
    L_0x001e:
        r1 = r5.response;
        goto L_0x0022;
    L_0x0021:
        r1 = r0;
    L_0x0022:
        r2 = 0;
        if (r1 == 0) goto L_0x0051;
    L_0x0025:
        if (r5 != 0) goto L_0x002a;
    L_0x0027:
        kotlin.jvm.internal.Intrinsics.throwNpe();
    L_0x002a:
        r1 = r5.response;
        r3 = "plasticsCheckResponse!!.response";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r3);
        r1 = r1.getStatus();
        r3 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r1 == r3) goto L_0x0051;
    L_0x0039:
        r0 = r4;
        r0 = (android.content.Context) r0;
        r5 = r5.response;
        r1 = "plasticsCheckResponse.response";
        kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r1);
        r5 = r5.getDescription();
        r5 = (java.lang.CharSequence) r5;
        r5 = android.widget.Toast.makeText(r0, r5, r2);
        r5.show();
        return;
    L_0x0051:
        if (r5 == 0) goto L_0x0056;
    L_0x0053:
        r1 = r5.plastic;
        goto L_0x0057;
    L_0x0056:
        r1 = r0;
    L_0x0057:
        if (r1 == 0) goto L_0x00be;
    L_0x0059:
        if (r5 == 0) goto L_0x0064;
    L_0x005b:
        r1 = r5.plastic;
        if (r1 == 0) goto L_0x0064;
    L_0x005f:
        r1 = r1.getValidation();
        goto L_0x0065;
    L_0x0064:
        r1 = r0;
    L_0x0065:
        if (r1 == 0) goto L_0x00be;
    L_0x0067:
        if (r5 == 0) goto L_0x0078;
    L_0x0069:
        r1 = r5.plastic;
        if (r1 == 0) goto L_0x0078;
    L_0x006d:
        r1 = r1.getValidation();
        if (r1 == 0) goto L_0x0078;
    L_0x0073:
        r1 = r1.getId();
        goto L_0x0079;
    L_0x0078:
        r1 = r0;
    L_0x0079:
        if (r1 != 0) goto L_0x007c;
    L_0x007b:
        goto L_0x00be;
    L_0x007c:
        if (r5 == 0) goto L_0x008e;
    L_0x007e:
        r5 = r5.plastic;
        if (r5 == 0) goto L_0x008e;
    L_0x0082:
        r5 = r5.getValidation();
        if (r5 == 0) goto L_0x008e;
    L_0x0088:
        r5 = r5.getId();
        if (r5 != 0) goto L_0x0090;
    L_0x008e:
        r5 = "";
    L_0x0090:
        r1 = ru.rocketbank.r2d2.fragments.ChangeCodewordFragment.Companion;
        r2 = r4.changeCodeWord;
        if (r2 != 0) goto L_0x009b;
    L_0x0096:
        r3 = "changeCodeWord";
        kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3);
    L_0x009b:
        r5 = r1.newInstance(r2, r5);
        r1 = r4.getSupportFragmentManager();
        r1 = r1.beginTransaction();
        r0 = r1.addToBackStack(r0);
        r1 = 2131296517; // 0x7f090105 float:1.8210953E38 double:1.05300039E-314;
        r5 = (android.support.v4.app.Fragment) r5;
        r5 = r0.replace(r1, r5);
        r0 = 4097; // 0x1001 float:5.741E-42 double:2.024E-320;
        r5 = r5.setTransition(r0);
        r5.commit();
        return;
    L_0x00be:
        r5 = r4;
        r5 = (android.content.Context) r5;
        r0 = 2131820843; // 0x7f11012b float:1.9274412E38 double:1.0532594416E-314;
        r5 = android.widget.Toast.makeText(r5, r0, r2);
        r5.show();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.activities.ChangeCodewordActivity.onEventMainThread(ru.rocketbank.core.events.CheckCardEvent):void");
    }

    protected final void onPause() {
        KeyboardUtil.hideKeyboard(this);
        super.onPause();
    }

    public final void onBackPressed() {
        finish();
    }

    public final void onEventMainThread(NextButtonEvent nextButtonEvent) {
        Intrinsics.checkParameterIsNotNull(nextButtonEvent, "nextButtonEvent");
        if (nextButtonEvent.getFragment() == getSupportFragmentManager().findFragmentById(C0859R.id.content)) {
            RocketButton rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.btnNext);
            Intrinsics.checkExpressionValueIsNotNull(rocketButton, "btnNext");
            rocketButton.setEnabled(nextButtonEvent.isEnable());
            if (nextButtonEvent.getVisibility() != null) {
                rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.btnNext);
                Intrinsics.checkExpressionValueIsNotNull(rocketButton, "btnNext");
                Integer visibility = nextButtonEvent.getVisibility();
                rocketButton.setVisibility(visibility != null ? visibility.intValue() : 0);
            }
            if (nextButtonEvent.getTitle() != null) {
                rocketButton = (RocketButton) _$_findCachedViewById(C0859R.id.btnNext);
                Intrinsics.checkExpressionValueIsNotNull(rocketButton, "btnNext");
                rocketButton.setText(nextButtonEvent.getTitle());
            }
        }
    }
}
