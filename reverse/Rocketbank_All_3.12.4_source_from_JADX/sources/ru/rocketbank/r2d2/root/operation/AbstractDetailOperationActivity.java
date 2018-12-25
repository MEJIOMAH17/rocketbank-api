package ru.rocketbank.r2d2.root.operation;

import android.annotation.TargetApi;
import android.content.Context;
import android.databinding.DataBindingUtil;
import android.databinding.ViewDataBinding;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.graphics.drawable.DrawerArrowDrawable;
import android.support.v7.widget.Toolbar;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.widget.FrameLayout;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.mikepenz.materialdrawer.util.KeyboardUtil;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.ParallaxActivity;
import ru.rocketbank.r2d2.activities.operation.model.OperationReceiptModel;
import ru.rocketbank.r2d2.adapters.ParallaxAdapter;
import ru.rocketbank.r2d2.adapters.operations.BarChartAdapter;
import ru.rocketbank.r2d2.data.binding.parallax.ParallaxData;
import ru.rocketbank.r2d2.databinding.ActivityOperationModernReceiptBinding;
import ru.rocketbank.r2d2.root.operation.OperationContract.Presenter;
import ru.rocketbank.r2d2.root.operation.data.OperationViewInputData;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.statistics.StatisticsAdapter;

/* compiled from: AbstractDetailOperationActivity.kt */
public abstract class AbstractDetailOperationActivity<Presenter extends Presenter> extends ParallaxActivity implements SurfaceTextureListener, OperationDataUpdateListener {
    public static final Companion Companion = new Companion();
    private static final String OPERATION_EXTRA = "OPERATION_EXTRA";
    private static final String OUT_STATE_COMMENT = "COMMENT_TMP";
    private static final String OUT_STATE_COMMENT_SAVED = "COMMENT_SAVED";
    private static final String TAG = "OperationActivity";
    private HashMap _$_findViewCache;
    public BarChartAdapter barchartAdapter;
    public ActivityOperationModernReceiptBinding binding;
    private final OperationReceiptModel data = new OperationReceiptModel();
    private final Handler handler = new Handler();
    private MediaPlayer mediaPlayer;
    private Presenter operationPresenter;
    protected View sputnik;
    public StatisticsAdapter statisticsAdapter;
    private Runnable updateRunnable;

    /* compiled from: AbstractDetailOperationActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getTAG() {
            return AbstractDetailOperationActivity.TAG;
        }

        public final String getOPERATION_EXTRA() {
            return AbstractDetailOperationActivity.OPERATION_EXTRA;
        }

        public final String getOUT_STATE_COMMENT() {
            return AbstractDetailOperationActivity.OUT_STATE_COMMENT;
        }

        public final String getOUT_STATE_COMMENT_SAVED() {
            return AbstractDetailOperationActivity.OUT_STATE_COMMENT_SAVED;
        }

        @TargetApi(16)
        public final void start(Context context, Operation operation, ActivityOptionsCompat activityOptionsCompat) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(operation, "operation");
            Intrinsics.checkParameterIsNotNull(activityOptionsCompat, "options");
            if (operation.isRocketRubleOperation()) {
                DetailRocketrubleOperationActivity.Companion.start(context, operation, activityOptionsCompat);
            } else {
                DetailOperationActivity.Companion.start(context, operation, activityOptionsCompat);
            }
        }

        public final void start(Context context, Operation operation) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(operation, "operation");
            if (operation.isRocketRubleOperation()) {
                DetailRocketrubleOperationActivity.Companion.start(context, operation);
            } else {
                DetailOperationActivity.Companion.start(context, operation);
            }
        }
    }

    /* compiled from: AbstractDetailOperationActivity.kt */
    public final class RefreshUpdate implements Runnable {
        public final void run() {
            AbstractDetailOperationActivity.access$getOperationPresenter$p(AbstractDetailOperationActivity.this).refresh();
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
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

    public abstract Presenter createPresenter();

    public abstract void fillFullAdapter(OperationViewInputData operationViewInputData);

    public abstract String getComment();

    public void onError() {
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public static final /* synthetic */ MediaPlayer access$getMediaPlayer$p(AbstractDetailOperationActivity abstractDetailOperationActivity) {
        abstractDetailOperationActivity = abstractDetailOperationActivity.mediaPlayer;
        if (abstractDetailOperationActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
        }
        return abstractDetailOperationActivity;
    }

    public static final /* synthetic */ Presenter access$getOperationPresenter$p(AbstractDetailOperationActivity abstractDetailOperationActivity) {
        abstractDetailOperationActivity = abstractDetailOperationActivity.operationPresenter;
        if (abstractDetailOperationActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationPresenter");
        }
        return abstractDetailOperationActivity;
    }

    public void updateText(String str, String str2, String str3) {
        Intrinsics.checkParameterIsNotNull(str, "money");
        Intrinsics.checkParameterIsNotNull(str2, "subTitle");
        Intrinsics.checkParameterIsNotNull(str3, "toolbarTitle");
        this.data.getAmountValue().set(str);
        this.data.getRocketAmountValue().set(str2);
        this.data.getTitleAmountValue().set(str3);
    }

    public void dispatchClose() {
        finish();
    }

    public final ActivityOperationModernReceiptBinding getBinding() {
        ActivityOperationModernReceiptBinding activityOperationModernReceiptBinding = this.binding;
        if (activityOperationModernReceiptBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return activityOperationModernReceiptBinding;
    }

    public final void setBinding(ActivityOperationModernReceiptBinding activityOperationModernReceiptBinding) {
        Intrinsics.checkParameterIsNotNull(activityOperationModernReceiptBinding, "<set-?>");
        this.binding = activityOperationModernReceiptBinding;
    }

    public final BarChartAdapter getBarchartAdapter() {
        BarChartAdapter barChartAdapter = this.barchartAdapter;
        if (barChartAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("barchartAdapter");
        }
        return barChartAdapter;
    }

    public final void setBarchartAdapter(BarChartAdapter barChartAdapter) {
        Intrinsics.checkParameterIsNotNull(barChartAdapter, "<set-?>");
        this.barchartAdapter = barChartAdapter;
    }

    public final StatisticsAdapter getStatisticsAdapter() {
        StatisticsAdapter statisticsAdapter = this.statisticsAdapter;
        if (statisticsAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("statisticsAdapter");
        }
        return statisticsAdapter;
    }

    public final void setStatisticsAdapter(StatisticsAdapter statisticsAdapter) {
        Intrinsics.checkParameterIsNotNull(statisticsAdapter, "<set-?>");
        this.statisticsAdapter = statisticsAdapter;
    }

    protected final View getSputnik() {
        View view = this.sputnik;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sputnik");
        }
        return view;
    }

    protected final void setSputnik(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.sputnik = view;
    }

    public void onCommentUpdateFinished(boolean z, String str) {
        Intrinsics.checkParameterIsNotNull(str, "comment");
        OperationAdapter operationAdapter = (OperationAdapter) getParallaxAdapter();
        if (operationAdapter != null) {
            operationAdapter.getAdapterData().getUpdateInProgress().set(false);
            operationAdapter.getAdapterData().getSaveActionsActive().set(z ^ 1);
            if (z) {
                operationAdapter.getAdapterData().setCurrentComment(str);
            }
        }
    }

    public void hideKeyboard() {
        KeyboardUtil.hideKeyboard(this);
    }

    public void scrollToPosition(int i) {
        scrollToTop(i);
    }

    public void dispatchUpdate() {
        ParallaxAdapter parallaxAdapter = getParallaxAdapter();
        if (parallaxAdapter != null) {
            parallaxAdapter.clearAll();
        }
        Handler handler = this.handler;
        Runnable runnable = this.updateRunnable;
        if (runnable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("updateRunnable");
        }
        handler.post(runnable);
    }

    public void dispatchHideProgress() {
        hideProgressDialog();
    }

    public void dispatchShowProgress() {
        showProgressDialog();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.updateRunnable = new RefreshUpdate();
        this.operationPresenter = createPresenter();
        Context context = this;
        this.barchartAdapter = new BarChartAdapter(context);
        this.statisticsAdapter = new StatisticsAdapter();
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, C0859R.layout.activity_operation_modern_receipt);
        Intrinsics.checkExpressionValueIsNotNull(contentView, "DataBindingUtil.setConte…operation_modern_receipt)");
        this.binding = (ActivityOperationModernReceiptBinding) contentView;
        ActivityOperationModernReceiptBinding activityOperationModernReceiptBinding = this.binding;
        if (activityOperationModernReceiptBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityOperationModernReceiptBinding.setReceipt(this.data);
        activityOperationModernReceiptBinding = this.binding;
        if (activityOperationModernReceiptBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Toolbar toolbar = activityOperationModernReceiptBinding.toolbar;
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.toolbar");
        ActivityOperationModernReceiptBinding activityOperationModernReceiptBinding2 = this.binding;
        if (activityOperationModernReceiptBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Toolbar toolbar2 = activityOperationModernReceiptBinding2.realToolbar;
        Intrinsics.checkExpressionValueIsNotNull(toolbar2, "binding.realToolbar");
        ActivityOperationModernReceiptBinding activityOperationModernReceiptBinding3 = this.binding;
        if (activityOperationModernReceiptBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        FrameLayout frameLayout = activityOperationModernReceiptBinding3.header;
        Intrinsics.checkExpressionValueIsNotNull(frameLayout, "binding.header");
        setupView(toolbar, toolbar2, frameLayout);
        if (getParallaxAdapter() == null) {
            Presenter presenter = this.operationPresenter;
            if (presenter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("operationPresenter");
            }
            ParallaxData parallaxData = this.data;
            ActivityOperationModernReceiptBinding activityOperationModernReceiptBinding4 = this.binding;
            if (activityOperationModernReceiptBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            FrameLayout frameLayout2 = activityOperationModernReceiptBinding4.header;
            Intrinsics.checkExpressionValueIsNotNull(frameLayout2, "binding.header");
            setParallaxAdapter(new OperationAdapter(presenter, parallaxData, frameLayout2, getHeaderHeight() - getStatusBarHeight()));
        }
        OperationAdapter currentAdapter;
        if (bundle != null) {
            currentAdapter = getCurrentAdapter();
            if (currentAdapter == null) {
                Intrinsics.throwNpe();
            }
            currentAdapter.getAdapterData().setLastComment(bundle.getString(OUT_STATE_COMMENT));
            currentAdapter = getCurrentAdapter();
            if (currentAdapter == null) {
                Intrinsics.throwNpe();
            }
            currentAdapter.getAdapterData().setCurrentComment(bundle.getString(OUT_STATE_COMMENT_SAVED));
        } else {
            AbstractDetailOperationActivity abstractDetailOperationActivity = this;
            currentAdapter = getCurrentAdapter();
            if (currentAdapter == null) {
                Intrinsics.throwNpe();
            }
            currentAdapter.getAdapterData().setCurrentComment(getComment());
        }
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.operation.setOnTouchListener(new AbstractDetailOperationActivity$onCreate$3(this));
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ObservableRecyclerView observableRecyclerView = bundle.operation;
        Intrinsics.checkExpressionValueIsNotNull(observableRecyclerView, "binding.operation");
        ParallaxActivity.createParallax$default(this, observableRecyclerView, (ParallaxData) this.data, null, 0, 12, null);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.video;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.video");
        parallaxHeightToView((View) bundle);
        bundle = new DrawerArrowDrawable(context);
        bundle.setColor(-1);
        bundle.setProgress(1.0f);
        DrawerArrowDrawable drawerArrowDrawable = new DrawerArrowDrawable(context);
        drawerArrowDrawable.setColor(ContextCompat.getColor(context, C0859R.color.rocketBlack));
        drawerArrowDrawable.setProgress(1.0f);
        activityOperationModernReceiptBinding = this.binding;
        if (activityOperationModernReceiptBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        toolbar = activityOperationModernReceiptBinding.toolbar;
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "binding.toolbar");
        toolbar.setNavigationIcon((Drawable) bundle);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.toolbar.setNavigationOnClickListener(new AbstractDetailOperationActivity$onCreate$4(this));
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.realToolbar;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.realToolbar");
        bundle.setNavigationIcon(drawerArrowDrawable);
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.realToolbar.setNavigationOnClickListener(new AbstractDetailOperationActivity$onCreate$5(this));
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.sputnik;
        Intrinsics.checkExpressionValueIsNotNull(bundle, "binding.sputnik");
        this.sputnik = (View) bundle;
    }

    protected void onResume() {
        super.onResume();
        ActivityOperationModernReceiptBinding activityOperationModernReceiptBinding = this.binding;
        if (activityOperationModernReceiptBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        TextureView textureView = activityOperationModernReceiptBinding.video;
        Intrinsics.checkExpressionValueIsNotNull(textureView, "binding.video");
        textureView.setSurfaceTextureListener(this);
        StatisticsAdapter statisticsAdapter = this.statisticsAdapter;
        if (statisticsAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("statisticsAdapter");
        }
        statisticsAdapter.clear();
        Presenter presenter = this.operationPresenter;
        if (presenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationPresenter");
        }
        presenter.onStart(this);
        activityOperationModernReceiptBinding = this.binding;
        if (activityOperationModernReceiptBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Presenter presenter2 = this.operationPresenter;
        if (presenter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationPresenter");
        }
        activityOperationModernReceiptBinding.setHandler(presenter2);
        getParallaxAdapter();
    }

    public final OperationAdapter getCurrentAdapter() {
        return (OperationAdapter) getParallaxAdapter();
    }

    protected void onPause() {
        Handler handler = this.handler;
        Runnable runnable = this.updateRunnable;
        if (runnable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("updateRunnable");
        }
        handler.removeCallbacks(runnable);
        ActivityOperationModernReceiptBinding activityOperationModernReceiptBinding = this.binding;
        if (activityOperationModernReceiptBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activityOperationModernReceiptBinding.setHandler(null);
        Presenter presenter = this.operationPresenter;
        if (presenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationPresenter");
        }
        presenter.onStop();
        super.onPause();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "outState");
        super.onSaveInstanceState(bundle);
        OperationAdapter currentAdapter = getCurrentAdapter();
        if (currentAdapter != null) {
            bundle.putString(OUT_STATE_COMMENT_SAVED, currentAdapter.getAdapterData().getCurrentComment());
            bundle.putString(OUT_STATE_COMMENT, currentAdapter.getAdapterData().getLastComment());
        }
    }

    public void onOperationUpdate(OperationViewInputData operationViewInputData) {
        Intrinsics.checkParameterIsNotNull(operationViewInputData, "operationViewInputData");
        StatisticsAdapter statisticsAdapter = this.statisticsAdapter;
        if (statisticsAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("statisticsAdapter");
        }
        statisticsAdapter.setItems(operationViewInputData.getShortListValues(), operationViewInputData.getFullListValues(), operationViewInputData.getTotal());
        fillFullAdapter(operationViewInputData);
        OperationAdapter currentAdapter = getCurrentAdapter();
        if (currentAdapter == null) {
            Intrinsics.throwNpe();
        }
        currentAdapter.getAdapterData().setCurrentComment(operationViewInputData.getOperation().getComment());
        this.data.getPlaceName().set(operationViewInputData.getPlaceName());
        this.data.getDataValue().set(operationViewInputData.getDateString());
        BarChartAdapter barChartAdapter = this.barchartAdapter;
        if (barChartAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("barchartAdapter");
        }
        barChartAdapter.setValues(operationViewInputData.getMonthValues());
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        try {
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.setSurface(null);
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.release();
        } catch (SurfaceTexture surfaceTexture2) {
            AnalyticsManager.logException(surfaceTexture2);
        }
        return true;
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        i = new Surface(surfaceTexture);
        surfaceTexture = Uri.parse(getRawPath(C0859R.raw.operation_video));
        try {
            this.mediaPlayer = getInjector().getMediaPlayer();
            i2 = this.mediaPlayer;
            if (i2 == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            i2.reset();
            i2 = this.mediaPlayer;
            if (i2 == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            i2.setDataSource(this, surfaceTexture);
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.setLooping(0);
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.setSurface(i);
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.prepareAsync();
            surfaceTexture = this.mediaPlayer;
            if (surfaceTexture == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mediaPlayer");
            }
            surfaceTexture.setOnPreparedListener((OnPreparedListener) new AbstractDetailOperationActivity$onSurfaceTextureAvailable$1(this));
        } catch (SurfaceTexture surfaceTexture2) {
            AnalyticsManager.logException(surfaceTexture2);
        }
    }

    public final String getRawPath(int i) {
        StringBuilder stringBuilder = new StringBuilder("android.resource://");
        stringBuilder.append(getPackageName());
        stringBuilder.append('/');
        stringBuilder.append(i);
        return stringBuilder.toString();
    }
}
