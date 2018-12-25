package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.Window;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.chat.ChatFragment;

/* compiled from: SupportChatActivity.kt */
public final class SupportChatActivity extends SecuredActivity {
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;

    /* compiled from: SupportChatActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void start(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            context.startActivity(new Intent(context, SupportChatActivity.class).addFlags(131072));
        }

        public final void startActivity(Context context, Operation operation) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(operation, "operation");
            Intent intent = new Intent(context, SupportChatActivity.class);
            intent.putExtra(ChatFragment.KEY_OPERATION, operation);
            context.startActivity(intent.addFlags(131072));
        }
    }

    public static final void start(Context context) {
        Companion.start(context);
    }

    public static final void startActivity(Context context, Operation operation) {
        Companion.startActivity(context, operation);
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

    protected final void onCreate(Bundle bundle) {
        if (VERSION.SDK_INT >= 21) {
            getWindow().requestFeature(12);
        }
        if (VERSION.SDK_INT >= 16) {
            Window window = getWindow();
            Intrinsics.checkExpressionValueIsNotNull(window, "window");
            View decorView = window.getDecorView();
            Intrinsics.checkExpressionValueIsNotNull(decorView, "window.decorView");
            decorView.setSystemUiVisibility(1280);
        }
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_support_chat);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        if (bundle == null) {
            bundle = new ChatFragment();
            Operation operation = (Operation) getIntent().getParcelableExtra(ChatFragment.KEY_OPERATION);
            if (operation != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable(ChatFragment.KEY_OPERATION, operation);
                bundle.setArguments(bundle2);
            }
            getSupportFragmentManager().beginTransaction().add((int) C0859R.id.container, (Fragment) bundle).commit();
        }
    }

    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(supportFragmentManager, "supportFragmentManager");
        List<Fragment> fragments = supportFragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null) {
                    fragment.onActivityResult(i, i2, intent);
                }
            }
        }
    }
}
