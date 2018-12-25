package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.enums.BlockReason;
import ru.rocketbank.core.model.enums.Status;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.cardblock.CardblockFragment;
import ru.rocketbank.r2d2.helpers.UIHelper;

/* compiled from: CardBlockActivity.kt */
public final class CardBlockActivity extends SecuredActivity {
    private static final String BLOCK_REASON = "block_reason";
    public static final Companion Companion = new Companion();
    public static final String IS_BLOCK = "is_block";
    private static final String IS_FROM_FEED = "is_from_feed";
    public static final int PASSPORT_PHOTOS = 1029;
    private HashMap _$_findViewCache;
    private BlockReason blockReason;
    private boolean isFromFeed = true;

    /* compiled from: CardBlockActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public static /* bridge */ /* synthetic */ void start$default(Companion companion, Context context, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = true;
            }
            companion.start(context, z);
        }

        public final void start(Context context, boolean z) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            context.startActivity(new Intent(context, CardBlockActivity.class).addFlags(268468224).putExtra(CardBlockActivity.IS_BLOCK, true).putExtra(CardBlockActivity.IS_FROM_FEED, z));
        }

        public static /* bridge */ /* synthetic */ void start$default(Companion companion, Context context, BlockReason blockReason, boolean z, int i, Object obj) {
            if ((i & 4) != 0) {
                z = true;
            }
            companion.start(context, blockReason, z);
        }

        public final void start(Context context, BlockReason blockReason, boolean z) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            z = new Intent(context, CardBlockActivity.class).addFlags(268468224).putExtra(CardBlockActivity.IS_BLOCK, true).putExtra(CardBlockActivity.IS_FROM_FEED, z);
            if (blockReason != null) {
                z.putExtra(CardBlockActivity.BLOCK_REASON, blockReason.getReason());
            }
            context.startActivity(z);
        }
    }

    public static final void start(Context context, BlockReason blockReason, boolean z) {
        Companion.start(context, blockReason, z);
    }

    public static final void start(Context context, boolean z) {
        Companion.start(context, z);
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

    private final void setFromFeed(boolean z) {
        this.isFromFeed = z;
    }

    public final boolean isFromFeed() {
        return this.isFromFeed;
    }

    private final void setBlockReason(BlockReason blockReason) {
        this.blockReason = blockReason;
    }

    public final BlockReason getBlockReason() {
        return this.blockReason;
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_card_block);
        this.isFromFeed = getIntent().getBooleanExtra(IS_FROM_FEED, true);
        bundle = getIntent().getStringExtra(BLOCK_REASON);
        if (bundle != null) {
            this.blockReason = BlockReason.Companion.fromString(bundle);
        }
        getSupportFragmentManager().beginTransaction().replace(C0859R.id.block_content, CardblockFragment.newCardblockFragment(this.blockReason)).commitAllowingStateLoss();
    }

    public final void onUserModel(UserModel userModel) {
        super.onUserModel(userModel);
        hideProgressDialog();
        if (userModel != null && userModel.getStatus() == Status.ACTIVE) {
            startActivity(new Intent(this, MainActivity.class));
            finish();
        }
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == PASSPORT_PHOTOS) {
            if (i2 == -1) {
                startActivity(new Intent(this, MainActivity.class));
                finish();
            }
        }
    }

    protected final void onStart() {
        super.onStart();
        showProgressDialog();
        getInjector().getAuthorization().refreshBackgroundProfile();
    }

    protected final void onStop() {
        hideProgressDialog();
        super.onStop();
    }

    public final void onBackPressed() {
        UIHelper.goToHome(this);
    }
}
