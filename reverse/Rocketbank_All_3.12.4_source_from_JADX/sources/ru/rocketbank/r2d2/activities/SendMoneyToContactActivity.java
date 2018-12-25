package ru.rocketbank.r2d2.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.friends.TransferFriendAmountFragment;

/* compiled from: SendMoneyToContactActivity.kt */
public final class SendMoneyToContactActivity extends SecuredActivity {
    private static final String CONTACT_EXTRA = "contact";
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;
    public Button btnNext;
    public Toolbar toolbar;

    /* compiled from: SendMoneyToContactActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void startForResult(Activity activity, Contact contact, int i) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            Intrinsics.checkParameterIsNotNull(contact, SendMoneyToContactActivity.CONTACT_EXTRA);
            Intent intent = new Intent(activity, SendMoneyToContactActivity.class);
            intent.putExtra(SendMoneyToContactActivity.CONTACT_EXTRA, contact);
            activity.startActivityForResult(intent, i);
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

    public final Button getBtnNext() {
        Button button = this.btnNext;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnNext");
        }
        return button;
    }

    public final void setBtnNext(Button button) {
        Intrinsics.checkParameterIsNotNull(button, "<set-?>");
        this.btnNext = button;
    }

    public final Toolbar getToolbar() {
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        return toolbar;
    }

    public final void setToolbar(Toolbar toolbar) {
        Intrinsics.checkParameterIsNotNull(toolbar, "<set-?>");
        this.toolbar = toolbar;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_send_money_to_contact);
        View findViewById = findViewById(C0859R.id.btnNext);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
        }
        this.btnNext = (Button) findViewById;
        findViewById = findViewById(C0859R.id.toolbar);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.Toolbar");
        }
        this.toolbar = (Toolbar) findViewById;
        Toolbar toolbar = this.toolbar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbar");
        }
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar == null) {
                Intrinsics.throwNpe();
            }
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar = getSupportActionBar();
            if (supportActionBar == null) {
                Intrinsics.throwNpe();
            }
            supportActionBar.setDisplayShowHomeEnabled$1385ff();
        }
        Serializable serializableExtra = getIntent().getSerializableExtra(CONTACT_EXTRA);
        if (serializableExtra == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.core.model.contact.Contact");
        }
        Contact contact = (Contact) serializableExtra;
        if (bundle == null) {
            bundle = getSupportFragmentManager().beginTransaction();
            bundle.replace(C0859R.id.userfeed_transfers_container, TransferFriendAmountFragment.Companion.newInstance(contact), TransferFriendAmountFragment.class.getName());
            bundle.commit();
        }
        bundle = this.btnNext;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnNext");
        }
        bundle.setOnClickListener(new SendMoneyToContactActivity$onCreate$1(this));
    }

    public final void onEventMainThread(NextButtonEvent nextButtonEvent) {
        Intrinsics.checkParameterIsNotNull(nextButtonEvent, "nextButtonEvent");
        setEnabledButtonNext(nextButtonEvent.isEnable());
    }

    private final void setEnabledButtonNext(boolean z) {
        Button button = this.btnNext;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnNext");
        }
        button.setEnabled(z);
    }
}
