package com.mikepenz.materialize;

import android.content.Context;
import com.facebook.appevents.AppEventsLogger;
import com.mikepenz.materialdrawer.util.DrawerUIUtils;
import com.mikepenz.materialize.util.KeyboardUtil;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.dagger.GeoLocationModule;
import ru.rocketbank.core.manager.FeedManager;
import ru.rocketbank.core.manager.GeolocationManager;
import ru.rocketbank.core.manager.loader.FeedLoader;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: com.mikepenz.materialize.R */
public final class C0665R {
    private final MaterializeBuilder mBuilder;
    private KeyboardUtil mKeyboardUtil = null;

    /* renamed from: com.mikepenz.materialize.R$color */
    public static final class color {
    }

    /* renamed from: com.mikepenz.materialize.R$styleable */
    public static final class styleable {
        public static final int[] ActionBar = new int[]{C0859R.attr.background, C0859R.attr.backgroundSplit, C0859R.attr.backgroundStacked, C0859R.attr.contentInsetEnd, C0859R.attr.contentInsetEndWithActions, C0859R.attr.contentInsetLeft, C0859R.attr.contentInsetRight, C0859R.attr.contentInsetStart, C0859R.attr.contentInsetStartWithNavigation, C0859R.attr.customNavigationLayout, C0859R.attr.displayOptions, C0859R.attr.divider, C0859R.attr.elevation, C0859R.attr.height, C0859R.attr.hideOnContentScroll, C0859R.attr.homeAsUpIndicator, C0859R.attr.homeLayout, C0859R.attr.icon, C0859R.attr.indeterminateProgressStyle, C0859R.attr.itemPadding, C0859R.attr.logo, C0859R.attr.navigationMode, C0859R.attr.popupTheme, C0859R.attr.progressBarPadding, C0859R.attr.progressBarStyle, C0859R.attr.subtitle, C0859R.attr.subtitleTextStyle, C0859R.attr.title, C0859R.attr.titleTextStyle};
        public static final int[] ActionBarLayout = new int[]{16842931};
        public static final int[] ActionMenuItemView = new int[]{16843071};
        public static final int[] ActionMenuView = new int[0];
        public static final int[] ActionMode = new int[]{C0859R.attr.background, C0859R.attr.backgroundSplit, C0859R.attr.closeItemLayout, C0859R.attr.height, C0859R.attr.subtitleTextStyle, C0859R.attr.titleTextStyle};
        public static final int[] ActivityChooserView = new int[]{C0859R.attr.expandActivityOverflowButtonDrawable, C0859R.attr.initialActivityCount};
        public static final int[] AlertDialog = new int[]{16842994, C0859R.attr.buttonIconDimen, C0859R.attr.buttonPanelSideLayout, C0859R.attr.listItemLayout, C0859R.attr.listLayout, C0859R.attr.multiChoiceItemLayout, C0859R.attr.showTitle, C0859R.attr.singleChoiceItemLayout};
        public static final int[] AppCompatTextView = new int[]{16842804, C0859R.attr.autoSizeMaxTextSize, C0859R.attr.autoSizeMinTextSize, C0859R.attr.autoSizePresetSizes, C0859R.attr.autoSizeStepGranularity, C0859R.attr.autoSizeTextType, C0859R.attr.fontFamily, C0859R.attr.textAllCaps};
        public static final int[] ButtonBarLayout = new int[]{C0859R.attr.allowStacking};
        public static final int[] CompoundButton = new int[]{16843015, C0859R.attr.buttonTint, C0859R.attr.buttonTintMode};
        public static final int[] DrawerArrowToggle = new int[]{C0859R.attr.arrowHeadLength, C0859R.attr.arrowShaftLength, C0859R.attr.barLength, C0859R.attr.color, C0859R.attr.drawableSize, C0859R.attr.gapBetweenBars, C0859R.attr.spinBars, C0859R.attr.thickness};
        public static final int[] LinearLayoutCompat = new int[]{16842927, 16842948, 16843046, 16843047, 16843048, C0859R.attr.divider, C0859R.attr.dividerPadding, C0859R.attr.measureWithLargestChild, C0859R.attr.showDividers};
        public static final int[] LinearLayoutCompat_Layout = new int[]{16842931, 16842996, 16842997, 16843137};
        public static final int[] ListPopupWindow = new int[]{16843436, 16843437};
        public static final int[] MaterialDrawer = new int[]{C0859R.attr.material_drawer_background, C0859R.attr.material_drawer_divider, C0859R.attr.material_drawer_header_selection_text, C0859R.attr.material_drawer_hint_icon, C0859R.attr.material_drawer_hint_text, C0859R.attr.material_drawer_primary_icon, C0859R.attr.material_drawer_primary_text, C0859R.attr.material_drawer_secondary_text, C0859R.attr.material_drawer_selected, C0859R.attr.material_drawer_selected_text, C0859R.attr.material_drawer_window_background};
        public static final int[] MenuGroup = new int[]{16842766, 16842960, 16843156, 16843230, 16843231, 16843232};
        public static final int[] MenuItem = new int[]{16842754, 16842766, 16842960, 16843014, 16843156, 16843230, 16843231, 16843233, 16843234, 16843235, 16843236, 16843237, 16843375, C0859R.attr.actionLayout, C0859R.attr.actionProviderClass, C0859R.attr.actionViewClass, C0859R.attr.alphabeticModifiers, C0859R.attr.contentDescription, C0859R.attr.iconTint, C0859R.attr.iconTintMode, C0859R.attr.numericModifiers, C0859R.attr.showAsAction, C0859R.attr.tooltipText};
        public static final int[] MenuView = new int[]{16842926, 16843052, 16843053, 16843054, 16843055, 16843056, 16843057, C0859R.attr.preserveIconSpacing, C0859R.attr.subMenuArrow};
        public static final int[] PopupWindow = new int[]{16843126, 16843465, C0859R.attr.overlapAnchor};
        public static final int[] PopupWindowBackgroundState = new int[]{C0859R.attr.state_above_anchor};
        public static final int[] ScrimInsetsView = new int[]{C0859R.attr.siv_insetForeground};
        public static final int ScrimInsetsView_siv_insetForeground = 0;
        public static final int[] SearchView = new int[]{16842970, 16843039, 16843296, 16843364, C0859R.attr.closeIcon, C0859R.attr.commitIcon, C0859R.attr.defaultQueryHint, C0859R.attr.goIcon, C0859R.attr.iconifiedByDefault, C0859R.attr.layout, C0859R.attr.queryBackground, C0859R.attr.queryHint, C0859R.attr.searchHintIcon, C0859R.attr.searchIcon, C0859R.attr.submitBackground, C0859R.attr.suggestionRowLayout, C0859R.attr.voiceIcon};
        public static final int[] Spinner = new int[]{16842930, 16843126, 16843131, 16843362, C0859R.attr.popupTheme};
        public static final int[] SwitchCompat = new int[]{16843044, 16843045, 16843074, C0859R.attr.showText, C0859R.attr.splitTrack, C0859R.attr.switchMinWidth, C0859R.attr.switchPadding, C0859R.attr.switchTextAppearance, C0859R.attr.thumbTextPadding, C0859R.attr.thumbTint, C0859R.attr.thumbTintMode, C0859R.attr.track, C0859R.attr.trackTint, C0859R.attr.trackTintMode};
        public static final int[] TextAppearance = new int[]{16842901, 16842902, 16842903, 16842904, 16842906, 16842907, 16843105, 16843106, 16843107, 16843108, 16843692, C0859R.attr.fontFamily, C0859R.attr.textAllCaps};
        public static final int[] Toolbar = new int[]{16842927, 16843072, C0859R.attr.buttonGravity, C0859R.attr.collapseContentDescription, C0859R.attr.collapseIcon, C0859R.attr.contentInsetEnd, C0859R.attr.contentInsetEndWithActions, C0859R.attr.contentInsetLeft, C0859R.attr.contentInsetRight, C0859R.attr.contentInsetStart, C0859R.attr.contentInsetStartWithNavigation, C0859R.attr.logo, C0859R.attr.logoDescription, C0859R.attr.maxButtonHeight, C0859R.attr.navigationContentDescription, C0859R.attr.navigationIcon, C0859R.attr.popupTheme, C0859R.attr.subtitle, C0859R.attr.subtitleTextAppearance, C0859R.attr.subtitleTextColor, C0859R.attr.title, C0859R.attr.titleMargin, C0859R.attr.titleMarginBottom, C0859R.attr.titleMarginEnd, C0859R.attr.titleMarginStart, C0859R.attr.titleMarginTop, C0859R.attr.titleMargins, C0859R.attr.titleTextAppearance, C0859R.attr.titleTextColor};
        public static final int[] View = new int[]{16842752, 16842970, C0859R.attr.paddingEnd, C0859R.attr.paddingStart, C0859R.attr.theme};
        public static final int[] ViewBackgroundHelper = new int[]{16842964, C0859R.attr.backgroundTint, C0859R.attr.backgroundTintMode};
        public static final int[] ViewStubCompat = new int[]{16842960, 16842994, 16842995};
    }

    /* renamed from: com.mikepenz.materialize.R$attr */
    public static final class attr implements Provider<AppEventsLogger> {
        private final Provider<Context> cProvider;
        private final DrawerUIUtils module$ec23d75;

        public attr(DrawerUIUtils drawerUIUtils, Provider<Context> provider) {
            this.module$ec23d75 = drawerUIUtils;
            this.cProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Context context = (Context) this.cProvider.get();
            Intrinsics.checkParameterIsNotNull(context, "c");
            AppEventsLogger newLogger = AppEventsLogger.newLogger(context);
            Intrinsics.checkExpressionValueIsNotNull(newLogger, "AppEventsLogger.newLogger(c)");
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (newLogger != null) {
                return newLogger;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: com.mikepenz.materialize.R$dimen */
    public static final class dimen implements Provider<FeedLoader> {
        private final Provider<Authorization> authorizationProvider;
        private final color module$5773aa63;
        private final Provider<OperationApi> operationApiProvider;

        public dimen(color color, Provider<Authorization> provider, Provider<OperationApi> provider2) {
            this.module$5773aa63 = color;
            this.authorizationProvider = provider;
            this.operationApiProvider = provider2;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Authorization authorization = (Authorization) this.authorizationProvider.get();
            OperationApi operationApi = (OperationApi) this.operationApiProvider.get();
            Intrinsics.checkParameterIsNotNull(authorization, "authorization");
            Intrinsics.checkParameterIsNotNull(operationApi, "operationApi");
            return new FeedLoader(authorization, operationApi);
        }
    }

    /* renamed from: com.mikepenz.materialize.R$id */
    public static final class id implements Provider<FeedManager> {
        private final Provider<Authorization> authorizationProvider;
        private final Provider<FeedLoader> feedLoaderProvider;
        private final color module$5773aa63;
        private final Provider<OperationApi> operationApiProvider;

        public id(color color, Provider<Authorization> provider, Provider<OperationApi> provider2, Provider<FeedLoader> provider3) {
            this.module$5773aa63 = color;
            this.authorizationProvider = provider;
            this.operationApiProvider = provider2;
            this.feedLoaderProvider = provider3;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Authorization authorization = (Authorization) this.authorizationProvider.get();
            OperationApi operationApi = (OperationApi) this.operationApiProvider.get();
            FeedLoader feedLoader = (FeedLoader) this.feedLoaderProvider.get();
            Intrinsics.checkParameterIsNotNull(authorization, "authorization");
            Intrinsics.checkParameterIsNotNull(operationApi, "operationApi");
            Intrinsics.checkParameterIsNotNull(feedLoader, "feedLoader");
            return new FeedManager(authorization, operationApi, feedLoader);
        }
    }

    /* renamed from: com.mikepenz.materialize.R$layout */
    public static final class layout implements Provider<GeolocationManager> {
        private final GeoLocationModule module;

        public layout(GeoLocationModule geoLocationModule) {
            this.module = geoLocationModule;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            GeolocationManager provideAuthorization = this.module.provideAuthorization();
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (provideAuthorization != null) {
                return provideAuthorization;
            }
            throw new NullPointerException(str);
        }
    }

    protected C0665R(MaterializeBuilder materializeBuilder) {
        this.mBuilder = materializeBuilder;
    }
}
