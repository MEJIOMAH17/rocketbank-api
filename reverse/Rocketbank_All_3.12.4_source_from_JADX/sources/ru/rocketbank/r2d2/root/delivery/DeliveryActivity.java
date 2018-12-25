package ru.rocketbank.r2d2.root.delivery;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableField;
import android.databinding.ViewDataBinding;
import android.graphics.drawable.ColorDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.PresenterManager;
import ru.rocketbank.core.widgets.RocketButton;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.PresenterSecuredActivity;
import ru.rocketbank.r2d2.activities.SupportChatActivity;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryActivityData;
import ru.rocketbank.r2d2.data.binding.delivery.DeliveryToolbarData;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.databinding.ActivityDeliveryBinding;
import ru.rocketbank.r2d2.databinding.DeliveryToolbarBinding;
import ru.rocketbank.r2d2.fragments.delivery.AbstractDeliveryFragment;
import ru.rocketbank.r2d2.fragments.delivery.DeliveryMapFragment;
import ru.rocketbank.r2d2.fragments.delivery.DeliveryScheduledFragment;
import ru.rocketbank.r2d2.fragments.delivery.DeliverySelectDateFragment;
import ru.rocketbank.r2d2.registration.fragment.ProgressRegistrationView;

/* compiled from: DeliveryActivity.kt */
public final class DeliveryActivity extends PresenterSecuredActivity<DeliveryActivityPresenter> implements OnClickListener, ToolbarWithButtonHandler, DeliveryActivityView {
    public static final Companion Companion = new Companion();
    private static final String KEY_COMPLETED = "completed";
    private static final String KEY_IS_LEAD = "is_lead";
    private static final String KEY_TOKEN = "token";
    private static final int STEP_SCHEDULED = 3;
    private static final int STEP_SELECT_ADDRESS = 1;
    private static final int STEP_SELECT_DATE = 2;
    private HashMap _$_findViewCache;
    private ActivityDeliveryBinding binding;
    private int currentStep = STEP_SELECT_ADDRESS;
    private final DeliveryActivityData data = new DeliveryActivityData();
    private boolean isCompleted;
    private boolean isUserLead;
    private AbstractDeliveryFragment<?> lasrFragment;
    private RocketButton repeatButton;
    private String token;
    private final DeliveryToolbarData toolbarData = new DeliveryToolbarData();

    /* compiled from: DeliveryActivity.kt */
    public static final class Companion {
        private static /* synthetic */ void KEY_COMPLETED$annotations() {
        }

        private static /* synthetic */ void KEY_IS_LEAD$annotations() {
        }

        private static /* synthetic */ void KEY_TOKEN$annotations() {
        }

        private static /* synthetic */ void STEP_SCHEDULED$annotations() {
        }

        private static /* synthetic */ void STEP_SELECT_ADDRESS$annotations() {
        }

        private static /* synthetic */ void STEP_SELECT_DATE$annotations() {
        }

        private Companion() {
        }

        public static /* bridge */ /* synthetic */ void startPending$default(Companion companion, Context context, String str, boolean z, int i, Object obj) {
            if ((i & 4) != 0) {
                z = false;
            }
            companion.startPending(context, str, z);
        }

        public final void startPending(Context context, String str, boolean z) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, DeliveryActivity.KEY_TOKEN);
            Intent intent = new Intent(context, DeliveryActivity.class);
            intent.putExtra(DeliveryActivity.KEY_TOKEN, str);
            intent.putExtra(DeliveryActivity.KEY_IS_LEAD, z);
            context.startActivity(intent);
        }

        public static /* bridge */ /* synthetic */ void startCompleted$default(Companion companion, Context context, String str, boolean z, int i, Object obj) {
            if ((i & 4) != 0) {
                z = false;
            }
            companion.startCompleted(context, str, z);
        }

        public final void startCompleted(Context context, String str, boolean z) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(str, DeliveryActivity.KEY_TOKEN);
            Intent intent = new Intent(context, DeliveryActivity.class);
            intent.putExtra(DeliveryActivity.KEY_TOKEN, str);
            intent.putExtra(DeliveryActivity.KEY_COMPLETED, true);
            intent.putExtra(DeliveryActivity.KEY_IS_LEAD, z);
            context.startActivity(intent);
        }
    }

    public static final void startCompleted(Context context, String str, boolean z) {
        Companion.startCompleted(context, str, z);
    }

    public static final void startPending(Context context, String str, boolean z) {
        Companion.startPending(context, str, z);
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

    public final DeliveryActivityPresenter createPresenter() {
        PresenterManager presenterManager = PresenterManager.INSTANCE;
        UUID fromString = UUID.fromString("985c387f-9433-4fd2-b055-9cffc963929e");
        Intrinsics.checkExpressionValueIsNotNull(fromString, "UUID.fromString(\"985c387…-4fd2-b055-9cffc963929e\")");
        return (DeliveryActivityPresenter) PresenterManager.getOrCreatePresenter(fromString, DeliveryActivityPresenter.class);
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, C0859R.layout.activity_delivery);
        Intrinsics.checkExpressionValueIsNotNull(contentView, "DataBindingUtil.setConte…layout.activity_delivery)");
        this.binding = (ActivityDeliveryBinding) contentView;
        ActivityDeliveryBinding activityDeliveryBinding = this.binding;
        if (activityDeliveryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityDeliveryBinding.setData(this.data);
        activityDeliveryBinding = this.binding;
        if (activityDeliveryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RocketButton rocketButton = activityDeliveryBinding.repeatButton;
        Intrinsics.checkExpressionValueIsNotNull(rocketButton, "binding.repeatButton");
        this.repeatButton = rocketButton;
        rocketButton = this.repeatButton;
        if (rocketButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("repeatButton");
        }
        rocketButton.setBackgroundResource(C0859R.drawable.orange_button_background);
        activityDeliveryBinding = this.binding;
        if (activityDeliveryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        DeliveryToolbarBinding deliveryToolbarBinding = activityDeliveryBinding.include;
        if (deliveryToolbarBinding == null) {
            Intrinsics.throwNpe();
        }
        setSupportActionBar(deliveryToolbarBinding.toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        boolean z = true;
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setBackgroundDrawable(new ColorDrawable(-1));
            if (VERSION.SDK_INT >= 21) {
                Intrinsics.checkExpressionValueIsNotNull(supportActionBar, "it");
                supportActionBar.setElevation$133aeb();
                activityDeliveryBinding = this.binding;
                if (activityDeliveryBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                deliveryToolbarBinding = activityDeliveryBinding.include;
                if (deliveryToolbarBinding == null) {
                    Intrinsics.throwNpe();
                }
                AppBarLayout appBarLayout = deliveryToolbarBinding.deliveryAppbar;
                Intrinsics.checkExpressionValueIsNotNull(appBarLayout, "binding.include!!.deliveryAppbar");
                appBarLayout.setElevation(BitmapDescriptorFactory.HUE_RED);
            }
        }
        this.toolbarData.getTitle().set(getString(C0859R.string.delivery));
        this.toolbarData.getButton().set(getString(C0859R.string.support));
        this.toolbarData.getButtonEnabled().set(true);
        activityDeliveryBinding = this.binding;
        if (activityDeliveryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityDeliveryBinding.setToolbarData(this.toolbarData);
        String stringExtra = getIntent().getStringExtra(KEY_TOKEN);
        CharSequence charSequence = stringExtra;
        if (charSequence != null) {
            if (charSequence.length() != 0) {
                z = false;
            }
        }
        if (z) {
            throw ((Throwable) new IllegalStateException("Delivery token is null!"));
        }
        Intrinsics.checkExpressionValueIsNotNull(stringExtra, KEY_TOKEN);
        this.token = stringExtra;
        this.isCompleted = getIntent().getBooleanExtra(KEY_COMPLETED, false);
        this.isUserLead = getIntent().getBooleanExtra(KEY_IS_LEAD, false);
        ((DeliveryActivityPresenter) getPresenter()).onCreate(bundle, this);
        if (this.isCompleted != null) {
            showProgressDialog();
            ((DeliveryActivityPresenter) getPresenter()).loadCompletedDeliveryDetails(stringExtra);
            return;
        }
        selectFragment(this.currentStep);
    }

    public final void onClick(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        view.setEnabled(false);
        if (view.getId() == C0859R.id.repeat_button) {
            showProgressDialog();
            DeliveryActivityPresenter deliveryActivityPresenter = (DeliveryActivityPresenter) getPresenter();
            String str = this.token;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException(KEY_TOKEN);
            }
            deliveryActivityPresenter.loadCompletedDeliveryDetails(str);
        }
        view.setEnabled(true);
    }

    public final void onDeliveryDetailsLoaded() {
        this.data.getRepeatButtonVisible().set(false);
        selectFragment(STEP_SCHEDULED);
        hideProgressDialog();
    }

    public final void onLoadFail() {
        Toast.makeText(this, C0859R.string.error_occur, 0).show();
        this.data.getRepeatButtonVisible().set(true);
        hideProgressDialog();
    }

    public final void nextPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        view.setEnabled(false);
        SupportChatActivity.Companion.start(this);
        view.setEnabled(true);
    }

    public final void onBackPressed() {
        if (this.currentStep == STEP_SELECT_DATE) {
            if (!this.isCompleted) {
                super.onBackPressed();
                this.currentStep--;
                ObservableField title = this.toolbarData.getTitle();
                AbstractDeliveryFragment abstractDeliveryFragment = this.lasrFragment;
                if (abstractDeliveryFragment == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("lasrFragment");
                }
                title.set(getString(abstractDeliveryFragment.getTitleResID()));
                return;
            }
        }
        finish();
    }

    public final void selectFragment(int i) {
        AbstractDeliveryFragment newInstance;
        this.currentStep = i;
        String str;
        if (i == STEP_SELECT_ADDRESS) {
            ru.rocketbank.r2d2.fragments.delivery.DeliveryMapFragment.Companion companion = DeliveryMapFragment.Companion;
            str = this.token;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException(KEY_TOKEN);
            }
            newInstance = companion.newInstance(str);
        } else if (i == STEP_SELECT_DATE) {
            ru.rocketbank.r2d2.fragments.delivery.DeliverySelectDateFragment.Companion companion2 = DeliverySelectDateFragment.Companion;
            str = this.token;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException(KEY_TOKEN);
            }
            newInstance = companion2.newInstance(str);
        } else if (i == STEP_SCHEDULED) {
            int height;
            ActivityDeliveryBinding activityDeliveryBinding;
            DeliveryToolbarBinding deliveryToolbarBinding;
            Toolbar toolbar;
            if (this.isUserLead) {
                activityDeliveryBinding = this.binding;
                if (activityDeliveryBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                deliveryToolbarBinding = activityDeliveryBinding.include;
                if (deliveryToolbarBinding == null) {
                    Intrinsics.throwNpe();
                }
                ProgressRegistrationView progressRegistrationView = deliveryToolbarBinding.registrationProgressView;
                Intrinsics.checkExpressionValueIsNotNull(progressRegistrationView, "binding.include!!.registrationProgressView");
                progressRegistrationView.setStep(2);
                this.toolbarData.isUserLead().set(true);
                activityDeliveryBinding = this.binding;
                if (activityDeliveryBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                deliveryToolbarBinding = activityDeliveryBinding.include;
                if (deliveryToolbarBinding == null) {
                    Intrinsics.throwNpe();
                }
                toolbar = deliveryToolbarBinding.toolbar;
                Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.include!!.toolbar");
                height = toolbar.getHeight() << 1;
            } else {
                activityDeliveryBinding = this.binding;
                if (activityDeliveryBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                deliveryToolbarBinding = activityDeliveryBinding.include;
                if (deliveryToolbarBinding == null) {
                    Intrinsics.throwNpe();
                }
                toolbar = deliveryToolbarBinding.toolbar;
                Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.include!!.toolbar");
                height = toolbar.getHeight();
            }
            ru.rocketbank.r2d2.fragments.delivery.DeliveryScheduledFragment.Companion companion3 = DeliveryScheduledFragment.Companion;
            String str2 = this.token;
            if (str2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(KEY_TOKEN);
            }
            newInstance = companion3.newInstance(str2, height);
        } else {
            throw new IllegalStateException("Incorrect Delivery step ".concat(String.valueOf(i)));
        }
        this.toolbarData.getTitle().set(getString(newInstance.getTitleResID()));
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        if (this.currentStep != STEP_SCHEDULED) {
            beginTransaction.add(C0859R.id.container, newInstance).addToBackStack(null);
        } else {
            beginTransaction.replace(C0859R.id.container, newInstance);
        }
        beginTransaction.commit();
        if (i == STEP_SELECT_ADDRESS) {
            this.lasrFragment = newInstance;
        }
    }

    protected final void onStart() {
        super.onStart();
        ActivityDeliveryBinding activityDeliveryBinding = this.binding;
        if (activityDeliveryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityDeliveryBinding.setHandler(this);
        activityDeliveryBinding = this.binding;
        if (activityDeliveryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityDeliveryBinding.setOnClickListener(this);
    }

    protected final void onStop() {
        super.onStop();
        hideProgressDialog();
        ActivityDeliveryBinding activityDeliveryBinding = this.binding;
        if (activityDeliveryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityDeliveryBinding.setHandler(null);
        activityDeliveryBinding = this.binding;
        if (activityDeliveryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityDeliveryBinding.setOnClickListener(null);
    }
}
