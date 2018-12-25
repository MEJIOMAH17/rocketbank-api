package com.mikepenz.materialdrawer;

import android.content.Context;
import com.mattprecious.swirl.C1265R.drawable;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.dagger.CurrencyModule;
import ru.rocketbank.core.dagger.DiscountsModule;
import ru.rocketbank.core.manager.AtmsManager;
import ru.rocketbank.core.manager.CardManager;
import ru.rocketbank.core.manager.CurrencyManager;
import ru.rocketbank.core.manager.DeliveryManager;
import ru.rocketbank.core.manager.loader.cacher.discounts.DiscountCache;
import ru.rocketbank.core.manager.security.CertificateManager;
import ru.rocketbank.core.manager.security.CertificateManagerImpl;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: com.mikepenz.materialdrawer.R */
public final class C1266R implements Provider<AtmsManager> {
    private final Provider<Authorization> authorizationProvider;
    private final drawable module$37486e3e;
    private final Provider<RocketAPI> rocketAPIProvider;

    /* renamed from: com.mikepenz.materialdrawer.R$attr */
    public static final class attr {
    }

    /* renamed from: com.mikepenz.materialdrawer.R$dimen */
    public static final class dimen {
    }

    /* renamed from: com.mikepenz.materialdrawer.R$layout */
    public static final class layout {
    }

    /* renamed from: com.mikepenz.materialdrawer.R$styleable */
    public static final class styleable {
        public static final int[] ActionBar = new int[]{C0859R.attr.background, C0859R.attr.backgroundSplit, C0859R.attr.backgroundStacked, C0859R.attr.contentInsetEnd, C0859R.attr.contentInsetEndWithActions, C0859R.attr.contentInsetLeft, C0859R.attr.contentInsetRight, C0859R.attr.contentInsetStart, C0859R.attr.contentInsetStartWithNavigation, C0859R.attr.customNavigationLayout, C0859R.attr.displayOptions, C0859R.attr.divider, C0859R.attr.elevation, C0859R.attr.height, C0859R.attr.hideOnContentScroll, C0859R.attr.homeAsUpIndicator, C0859R.attr.homeLayout, C0859R.attr.icon, C0859R.attr.indeterminateProgressStyle, C0859R.attr.itemPadding, C0859R.attr.logo, C0859R.attr.navigationMode, C0859R.attr.popupTheme, C0859R.attr.progressBarPadding, C0859R.attr.progressBarStyle, C0859R.attr.subtitle, C0859R.attr.subtitleTextStyle, C0859R.attr.title, C0859R.attr.titleTextStyle};
        public static final int[] ActionBarLayout = new int[]{16842931};
        public static final int[] ActionMenuItemView = new int[]{16843071};
        public static final int[] ActionMenuView = new int[0];
        public static final int[] ActionMode = new int[]{C0859R.attr.background, C0859R.attr.backgroundSplit, C0859R.attr.closeItemLayout, C0859R.attr.height, C0859R.attr.subtitleTextStyle, C0859R.attr.titleTextStyle};
        public static final int[] ActivityChooserView = new int[]{C0859R.attr.expandActivityOverflowButtonDrawable, C0859R.attr.initialActivityCount};
        public static final int[] AlertDialog = new int[]{16842994, C0859R.attr.buttonIconDimen, C0859R.attr.buttonPanelSideLayout, C0859R.attr.listItemLayout, C0859R.attr.listLayout, C0859R.attr.multiChoiceItemLayout, C0859R.attr.showTitle, C0859R.attr.singleChoiceItemLayout};
        public static final int[] AppCompatTextView = new int[]{16842804, C0859R.attr.autoSizeMaxTextSize, C0859R.attr.autoSizeMinTextSize, C0859R.attr.autoSizePresetSizes, C0859R.attr.autoSizeStepGranularity, C0859R.attr.autoSizeTextType, C0859R.attr.fontFamily, C0859R.attr.textAllCaps};
        public static final int[] BezelImageView = new int[]{C0859R.attr.biv_drawCircularShadow, C0859R.attr.biv_maskDrawable, C0859R.attr.biv_selectorOnPress};
        public static final int BezelImageView_biv_drawCircularShadow = 0;
        public static final int BezelImageView_biv_maskDrawable = 1;
        public static final int BezelImageView_biv_selectorOnPress = 2;
        public static final int[] ButtonBarLayout = new int[]{C0859R.attr.allowStacking};
        public static final int[] CompoundButton = new int[]{16843015, C0859R.attr.buttonTint, C0859R.attr.buttonTintMode};
        public static final int[] DrawerArrowToggle = new int[]{C0859R.attr.arrowHeadLength, C0859R.attr.arrowShaftLength, C0859R.attr.barLength, C0859R.attr.color, C0859R.attr.drawableSize, C0859R.attr.gapBetweenBars, C0859R.attr.spinBars, C0859R.attr.thickness};
        public static final int[] Iconics = new int[]{C0859R.attr.ico_background_color, C0859R.attr.ico_color, C0859R.attr.ico_contour_color, C0859R.attr.ico_contour_width, C0859R.attr.ico_corner_radius, C0859R.attr.ico_icon, C0859R.attr.ico_offset_x, C0859R.attr.ico_offset_y, C0859R.attr.ico_padding, C0859R.attr.ico_size};
        public static final int[] IconicsImageView = new int[]{C0859R.attr.iiv_background_color, C0859R.attr.iiv_color, C0859R.attr.iiv_contour_color, C0859R.attr.iiv_contour_width, C0859R.attr.iiv_corner_radius, C0859R.attr.iiv_icon, C0859R.attr.iiv_padding, C0859R.attr.iiv_size};
        public static final int[] LinearLayoutCompat = new int[]{16842927, 16842948, 16843046, 16843047, 16843048, C0859R.attr.divider, C0859R.attr.dividerPadding, C0859R.attr.measureWithLargestChild, C0859R.attr.showDividers};
        public static final int[] LinearLayoutCompat_Layout = new int[]{16842931, 16842996, 16842997, 16843137};
        public static final int[] ListPopupWindow = new int[]{16843436, 16843437};
        public static final int[] MaterialDrawer = new int[]{C0859R.attr.material_drawer_background, C0859R.attr.material_drawer_divider, C0859R.attr.material_drawer_header_selection_text, C0859R.attr.material_drawer_hint_icon, C0859R.attr.material_drawer_hint_text, C0859R.attr.material_drawer_primary_icon, C0859R.attr.material_drawer_primary_text, C0859R.attr.material_drawer_secondary_text, C0859R.attr.material_drawer_selected, C0859R.attr.material_drawer_selected_text, C0859R.attr.material_drawer_window_background};
        public static final int[] MenuGroup = new int[]{16842766, 16842960, 16843156, 16843230, 16843231, 16843232};
        public static final int[] MenuItem = new int[]{16842754, 16842766, 16842960, 16843014, 16843156, 16843230, 16843231, 16843233, 16843234, 16843235, 16843236, 16843237, 16843375, C0859R.attr.actionLayout, C0859R.attr.actionProviderClass, C0859R.attr.actionViewClass, C0859R.attr.alphabeticModifiers, C0859R.attr.contentDescription, C0859R.attr.iconTint, C0859R.attr.iconTintMode, C0859R.attr.numericModifiers, C0859R.attr.showAsAction, C0859R.attr.tooltipText};
        public static final int[] MenuView = new int[]{16842926, 16843052, 16843053, 16843054, 16843055, 16843056, 16843057, C0859R.attr.preserveIconSpacing, C0859R.attr.subMenuArrow};
        public static final int[] PopupWindow = new int[]{16843126, 16843465, C0859R.attr.overlapAnchor};
        public static final int[] PopupWindowBackgroundState = new int[]{C0859R.attr.state_above_anchor};
        public static final int[] RecyclerView = new int[]{16842948, 16842993, C0859R.attr.fastScrollEnabled, C0859R.attr.fastScrollHorizontalThumbDrawable, C0859R.attr.fastScrollHorizontalTrackDrawable, C0859R.attr.fastScrollVerticalThumbDrawable, C0859R.attr.fastScrollVerticalTrackDrawable, C0859R.attr.layoutManager, C0859R.attr.reverseLayout, C0859R.attr.spanCount, C0859R.attr.stackFromEnd};
        public static final int[] ScrimInsetsView = new int[]{C0859R.attr.siv_insetForeground};
        public static final int[] SearchView = new int[]{16842970, 16843039, 16843296, 16843364, C0859R.attr.closeIcon, C0859R.attr.commitIcon, C0859R.attr.defaultQueryHint, C0859R.attr.goIcon, C0859R.attr.iconifiedByDefault, C0859R.attr.layout, C0859R.attr.queryBackground, C0859R.attr.queryHint, C0859R.attr.searchHintIcon, C0859R.attr.searchIcon, C0859R.attr.submitBackground, C0859R.attr.suggestionRowLayout, C0859R.attr.voiceIcon};
        public static final int[] Spinner = new int[]{16842930, 16843126, 16843131, 16843362, C0859R.attr.popupTheme};
        public static final int[] SwitchCompat = new int[]{16843044, 16843045, 16843074, C0859R.attr.showText, C0859R.attr.splitTrack, C0859R.attr.switchMinWidth, C0859R.attr.switchPadding, C0859R.attr.switchTextAppearance, C0859R.attr.thumbTextPadding, C0859R.attr.thumbTint, C0859R.attr.thumbTintMode, C0859R.attr.track, C0859R.attr.trackTint, C0859R.attr.trackTintMode};
        public static final int[] TextAppearance = new int[]{16842901, 16842902, 16842903, 16842904, 16842906, 16842907, 16843105, 16843106, 16843107, 16843108, 16843692, C0859R.attr.fontFamily, C0859R.attr.textAllCaps};
        public static final int[] Toolbar = new int[]{16842927, 16843072, C0859R.attr.buttonGravity, C0859R.attr.collapseContentDescription, C0859R.attr.collapseIcon, C0859R.attr.contentInsetEnd, C0859R.attr.contentInsetEndWithActions, C0859R.attr.contentInsetLeft, C0859R.attr.contentInsetRight, C0859R.attr.contentInsetStart, C0859R.attr.contentInsetStartWithNavigation, C0859R.attr.logo, C0859R.attr.logoDescription, C0859R.attr.maxButtonHeight, C0859R.attr.navigationContentDescription, C0859R.attr.navigationIcon, C0859R.attr.popupTheme, C0859R.attr.subtitle, C0859R.attr.subtitleTextAppearance, C0859R.attr.subtitleTextColor, C0859R.attr.title, C0859R.attr.titleMargin, C0859R.attr.titleMarginBottom, C0859R.attr.titleMarginEnd, C0859R.attr.titleMarginStart, C0859R.attr.titleMarginTop, C0859R.attr.titleMargins, C0859R.attr.titleTextAppearance, C0859R.attr.titleTextColor};
        public static final int[] View = new int[]{16842752, 16842970, C0859R.attr.paddingEnd, C0859R.attr.paddingStart, C0859R.attr.theme};
        public static final int[] ViewBackgroundHelper = new int[]{16842964, C0859R.attr.backgroundTint, C0859R.attr.backgroundTintMode};
        public static final int[] ViewStubCompat = new int[]{16842960, 16842994, 16842995};
    }

    /* renamed from: com.mikepenz.materialdrawer.R$color */
    public static final class color implements Provider<CardManager> {
        private final attr module$5fcde415;
        private final Provider<RocketAPI> rocketAPIProvider;

        public color(attr attr, Provider<RocketAPI> provider) {
            this.module$5fcde415 = attr;
            this.rocketAPIProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            RocketAPI rocketAPI = (RocketAPI) this.rocketAPIProvider.get();
            Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketAPI");
            return new CardManager(rocketAPI);
        }
    }

    /* renamed from: com.mikepenz.materialdrawer.R$drawable */
    public static final class drawable implements Provider<CertificateManager> {
        private final Provider<Context> contextProvider;
        private final dimen module$7940e6c;

        public drawable(dimen dimen, Provider<Context> provider) {
            this.module$7940e6c = dimen;
            this.contextProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Context context = (Context) this.contextProvider.get();
            Intrinsics.checkParameterIsNotNull(context, "context");
            return new CertificateManagerImpl(context);
        }
    }

    /* renamed from: com.mikepenz.materialdrawer.R$id */
    public static final class id implements Provider<CurrencyManager> {
        private final CurrencyModule module;

        public id(CurrencyModule currencyModule) {
            this.module = currencyModule;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            CurrencyManager currencyManager = this.module.getCurrencyManager();
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (currencyManager != null) {
                return currencyManager;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: com.mikepenz.materialdrawer.R$string */
    public static final class string implements Provider<DeliveryManager> {
        private final layout module$19fe5379;

        public string(layout layout) {
            this.module$19fe5379 = layout;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            return new DeliveryManager();
        }
    }

    /* renamed from: com.mikepenz.materialdrawer.R$style */
    public static final class style implements Provider<DiscountCache> {
        private final DiscountsModule module;

        public style(DiscountsModule discountsModule) {
            this.module = discountsModule;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            DiscountCache provideDiscountsCache = this.module.provideDiscountsCache();
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (provideDiscountsCache != null) {
                return provideDiscountsCache;
            }
            throw new NullPointerException(str);
        }
    }

    public C1266R(drawable drawable, Provider<Authorization> provider, Provider<RocketAPI> provider2) {
        this.module$37486e3e = drawable;
        this.authorizationProvider = provider;
        this.rocketAPIProvider = provider2;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Authorization authorization = (Authorization) this.authorizationProvider.get();
        RocketAPI rocketAPI = (RocketAPI) this.rocketAPIProvider.get();
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketAPI");
        return new AtmsManager(authorization, rocketAPI);
    }
}
