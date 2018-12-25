package ru.rocketbank.core;

import android.content.Context;
import android.util.Log;
import com.mikepenz.materialize.util.KeyboardUtil;
import javax.inject.Provider;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.dagger.RetrofitModule;
import ru.rocketbank.core.dagger.UserModule;
import ru.rocketbank.core.manager.AppInfoManager;
import ru.rocketbank.core.manager.HeaderManager;
import ru.rocketbank.core.manager.KeyManager;
import ru.rocketbank.core.manager.TemplateManager;
import ru.rocketbank.core.network.adapter.OkClientRestAdapter;
import ru.rocketbank.core.network.api.DepositApi;
import ru.rocketbank.core.network.api.RegistrationApi;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.network.api.ShopApi;
import ru.rocketbank.core.network.api.TariffsApi;
import ru.rocketbank.core.network.api.TemplateApi;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.network.api.YandexMapApi;
import ru.rocketbank.core.user.AppInformationStorage;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: ru.rocketbank.core.R */
public final class C1328R implements Provider<RegistrationApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    /* renamed from: ru.rocketbank.core.R$raw */
    public static final class raw {
    }

    /* renamed from: ru.rocketbank.core.R$styleable */
    public static final class styleable {
        public static final int[] ActionBar = new int[]{C0859R.attr.background, C0859R.attr.backgroundSplit, C0859R.attr.backgroundStacked, C0859R.attr.contentInsetEnd, C0859R.attr.contentInsetEndWithActions, C0859R.attr.contentInsetLeft, C0859R.attr.contentInsetRight, C0859R.attr.contentInsetStart, C0859R.attr.contentInsetStartWithNavigation, C0859R.attr.customNavigationLayout, C0859R.attr.displayOptions, C0859R.attr.divider, C0859R.attr.elevation, C0859R.attr.height, C0859R.attr.hideOnContentScroll, C0859R.attr.homeAsUpIndicator, C0859R.attr.homeLayout, C0859R.attr.icon, C0859R.attr.indeterminateProgressStyle, C0859R.attr.itemPadding, C0859R.attr.logo, C0859R.attr.navigationMode, C0859R.attr.popupTheme, C0859R.attr.progressBarPadding, C0859R.attr.progressBarStyle, C0859R.attr.subtitle, C0859R.attr.subtitleTextStyle, C0859R.attr.title, C0859R.attr.titleTextStyle};
        public static final int[] ActionBarLayout = new int[]{16842931};
        public static final int[] ActionMenuItemView = new int[]{16843071};
        public static final int[] ActionMode = new int[]{C0859R.attr.background, C0859R.attr.backgroundSplit, C0859R.attr.closeItemLayout, C0859R.attr.height, C0859R.attr.subtitleTextStyle, C0859R.attr.titleTextStyle};
        public static final int[] ActivityChooserView = new int[]{C0859R.attr.expandActivityOverflowButtonDrawable, C0859R.attr.initialActivityCount};
        public static final int[] AlertDialog = new int[]{16842994, C0859R.attr.buttonIconDimen, C0859R.attr.buttonPanelSideLayout, C0859R.attr.listItemLayout, C0859R.attr.listLayout, C0859R.attr.multiChoiceItemLayout, C0859R.attr.showTitle, C0859R.attr.singleChoiceItemLayout};
        public static final int[] AppBarLayout = new int[]{16842964, 16843919, 16844096, C0859R.attr.elevation, C0859R.attr.expanded};
        public static final int[] AppBarLayoutStates = new int[]{C0859R.attr.state_collapsed, C0859R.attr.state_collapsible};
        public static final int[] AppBarLayout_Layout = new int[]{C0859R.attr.layout_scrollFlags, C0859R.attr.layout_scrollInterpolator};
        public static final int[] AppCompatImageView = new int[]{16843033, C0859R.attr.srcCompat, C0859R.attr.tint, C0859R.attr.tintMode};
        public static final int[] AppCompatSeekBar = new int[]{16843074, C0859R.attr.tickMark, C0859R.attr.tickMarkTint, C0859R.attr.tickMarkTintMode};
        public static final int[] AppCompatTextHelper = new int[]{16842804, 16843117, 16843118, 16843119, 16843120, 16843666, 16843667};
        public static final int[] AppCompatTextView = new int[]{16842804, C0859R.attr.autoSizeMaxTextSize, C0859R.attr.autoSizeMinTextSize, C0859R.attr.autoSizePresetSizes, C0859R.attr.autoSizeStepGranularity, C0859R.attr.autoSizeTextType, C0859R.attr.fontFamily, C0859R.attr.textAllCaps};
        public static final int[] AppCompatTheme = new int[]{16842839, 16842926, C0859R.attr.actionBarDivider, C0859R.attr.actionBarItemBackground, C0859R.attr.actionBarPopupTheme, C0859R.attr.actionBarSize, C0859R.attr.actionBarSplitStyle, C0859R.attr.actionBarStyle, C0859R.attr.actionBarTabBarStyle, C0859R.attr.actionBarTabStyle, C0859R.attr.actionBarTabTextStyle, C0859R.attr.actionBarTheme, C0859R.attr.actionBarWidgetTheme, C0859R.attr.actionButtonStyle, C0859R.attr.actionDropDownStyle, C0859R.attr.actionMenuTextAppearance, C0859R.attr.actionMenuTextColor, C0859R.attr.actionModeBackground, C0859R.attr.actionModeCloseButtonStyle, C0859R.attr.actionModeCloseDrawable, C0859R.attr.actionModeCopyDrawable, C0859R.attr.actionModeCutDrawable, C0859R.attr.actionModeFindDrawable, C0859R.attr.actionModePasteDrawable, C0859R.attr.actionModePopupWindowStyle, C0859R.attr.actionModeSelectAllDrawable, C0859R.attr.actionModeShareDrawable, C0859R.attr.actionModeSplitBackground, C0859R.attr.actionModeStyle, C0859R.attr.actionModeWebSearchDrawable, C0859R.attr.actionOverflowButtonStyle, C0859R.attr.actionOverflowMenuStyle, C0859R.attr.activityChooserViewStyle, C0859R.attr.alertDialogButtonGroupStyle, C0859R.attr.alertDialogCenterButtons, C0859R.attr.alertDialogStyle, C0859R.attr.alertDialogTheme, C0859R.attr.autoCompleteTextViewStyle, C0859R.attr.borderlessButtonStyle, C0859R.attr.buttonBarButtonStyle, C0859R.attr.buttonBarNegativeButtonStyle, C0859R.attr.buttonBarNeutralButtonStyle, C0859R.attr.buttonBarPositiveButtonStyle, C0859R.attr.buttonBarStyle, C0859R.attr.buttonStyle, C0859R.attr.buttonStyleSmall, C0859R.attr.checkboxStyle, C0859R.attr.checkedTextViewStyle, C0859R.attr.colorAccent, C0859R.attr.colorBackgroundFloating, C0859R.attr.colorButtonNormal, C0859R.attr.colorControlActivated, C0859R.attr.colorControlHighlight, C0859R.attr.colorControlNormal, C0859R.attr.colorError, C0859R.attr.colorPrimary, C0859R.attr.colorPrimaryDark, C0859R.attr.colorSwitchThumbNormal, C0859R.attr.controlBackground, C0859R.attr.dialogPreferredPadding, C0859R.attr.dialogTheme, C0859R.attr.dividerHorizontal, C0859R.attr.dividerVertical, C0859R.attr.dropDownListViewStyle, C0859R.attr.dropdownListPreferredItemHeight, C0859R.attr.editTextBackground, C0859R.attr.editTextColor, C0859R.attr.editTextStyle, C0859R.attr.homeAsUpIndicator, C0859R.attr.imageButtonStyle, C0859R.attr.listChoiceBackgroundIndicator, C0859R.attr.listDividerAlertDialog, C0859R.attr.listMenuViewStyle, C0859R.attr.listPopupWindowStyle, C0859R.attr.listPreferredItemHeight, C0859R.attr.listPreferredItemHeightLarge, C0859R.attr.listPreferredItemHeightSmall, C0859R.attr.listPreferredItemPaddingLeft, C0859R.attr.listPreferredItemPaddingRight, C0859R.attr.panelBackground, C0859R.attr.panelMenuListTheme, C0859R.attr.panelMenuListWidth, C0859R.attr.popupMenuStyle, C0859R.attr.popupWindowStyle, C0859R.attr.radioButtonStyle, C0859R.attr.ratingBarStyle, C0859R.attr.ratingBarStyleIndicator, C0859R.attr.ratingBarStyleSmall, C0859R.attr.searchViewStyle, C0859R.attr.seekBarStyle, C0859R.attr.selectableItemBackground, C0859R.attr.selectableItemBackgroundBorderless, C0859R.attr.spinnerDropDownItemStyle, C0859R.attr.spinnerStyle, C0859R.attr.switchStyle, C0859R.attr.textAppearanceLargePopupMenu, C0859R.attr.textAppearanceListItem, C0859R.attr.textAppearanceListItemSecondary, C0859R.attr.textAppearanceListItemSmall, C0859R.attr.textAppearancePopupMenuHeader, C0859R.attr.textAppearanceSearchResultSubtitle, C0859R.attr.textAppearanceSearchResultTitle, C0859R.attr.textAppearanceSmallPopupMenu, C0859R.attr.textColorAlertDialogListItem, C0859R.attr.textColorSearchUrl, C0859R.attr.toolbarNavigationButtonStyle, C0859R.attr.toolbarStyle, C0859R.attr.tooltipForegroundColor, C0859R.attr.tooltipFrameBackground, C0859R.attr.viewInflaterClass, C0859R.attr.windowActionBar, C0859R.attr.windowActionBarOverlay, C0859R.attr.windowActionModeOverlay, C0859R.attr.windowFixedHeightMajor, C0859R.attr.windowFixedHeightMinor, C0859R.attr.windowFixedWidthMajor, C0859R.attr.windowFixedWidthMinor, C0859R.attr.windowMinWidthMajor, C0859R.attr.windowMinWidthMinor, C0859R.attr.windowNoTitle};
        public static final int[] AutofitTextView = new int[]{C0859R.attr.minTextSize, C0859R.attr.precision, C0859R.attr.sizeToFit};
        public static final int[] BarChartView = new int[]{C0859R.attr.bar_round_x, C0859R.attr.bar_round_y, C0859R.attr.bar_width, C0859R.attr.hint_color, C0859R.attr.hint_count, C0859R.attr.hint_font, C0859R.attr.hint_padding, C0859R.attr.hint_size, C0859R.attr.label_font, C0859R.attr.label_text_color, C0859R.attr.label_text_size, C0859R.attr.label_width, C0859R.attr.line_color, C0859R.attr.space_between_label, C0859R.attr.space_label_top};
        public static final int BarChartView_bar_round_x = 0;
        public static final int BarChartView_bar_round_y = 1;
        public static final int BarChartView_bar_width = 2;
        public static final int BarChartView_hint_color = 3;
        public static final int BarChartView_hint_count = 4;
        public static final int BarChartView_hint_font = 5;
        public static final int BarChartView_hint_padding = 6;
        public static final int BarChartView_hint_size = 7;
        public static final int BarChartView_label_font = 8;
        public static final int BarChartView_label_text_color = 9;
        public static final int BarChartView_label_text_size = 10;
        public static final int BarChartView_label_width = 11;
        public static final int BarChartView_line_color = 12;
        public static final int BarChartView_space_between_label = 13;
        public static final int BarChartView_space_label_top = 14;
        public static final int[] BezelImageView = new int[]{C0859R.attr.biv_drawCircularShadow, C0859R.attr.biv_maskDrawable, C0859R.attr.biv_selectorOnPress};
        public static final int[] BottomNavigationView = new int[]{C0859R.attr.elevation, C0859R.attr.itemBackground, C0859R.attr.itemIconTint, C0859R.attr.itemTextColor, C0859R.attr.menu};
        public static final int[] BottomSheetBehavior_Layout = new int[]{C0859R.attr.behavior_hideable, C0859R.attr.behavior_peekHeight, C0859R.attr.behavior_skipCollapsed};
        public static final int[] ButtonBarLayout = new int[]{C0859R.attr.allowStacking};
        public static final int[] CardView = new int[]{16843071, 16843072, C0859R.attr.cardBackgroundColor, C0859R.attr.cardCornerRadius, C0859R.attr.cardElevation, C0859R.attr.cardMaxElevation, C0859R.attr.cardPreventCornerOverlap, C0859R.attr.cardUseCompatPadding, C0859R.attr.contentPadding, C0859R.attr.contentPaddingBottom, C0859R.attr.contentPaddingLeft, C0859R.attr.contentPaddingRight, C0859R.attr.contentPaddingTop};
        public static final int[] CirclePageIndicator = new int[]{16842948, 16842964, C0859R.attr.centered, C0859R.attr.fillColor, C0859R.attr.pageColor, C0859R.attr.radius, C0859R.attr.snap, C0859R.attr.strokeColor, C0859R.attr.strokeWidth};
        public static final int CirclePageIndicator_android_background = 1;
        public static final int CirclePageIndicator_android_orientation = 0;
        public static final int CirclePageIndicator_centered = 2;
        public static final int CirclePageIndicator_fillColor = 3;
        public static final int CirclePageIndicator_pageColor = 4;
        public static final int CirclePageIndicator_radius = 5;
        public static final int CirclePageIndicator_snap = 6;
        public static final int CirclePageIndicator_strokeColor = 7;
        public static final int CirclePageIndicator_strokeWidth = 8;
        public static final int[] CollapsingToolbarLayout = new int[]{C0859R.attr.collapsedTitleGravity, C0859R.attr.collapsedTitleTextAppearance, C0859R.attr.contentScrim, C0859R.attr.expandedTitleGravity, C0859R.attr.expandedTitleMargin, C0859R.attr.expandedTitleMarginBottom, C0859R.attr.expandedTitleMarginEnd, C0859R.attr.expandedTitleMarginStart, C0859R.attr.expandedTitleMarginTop, C0859R.attr.expandedTitleTextAppearance, C0859R.attr.scrimAnimationDuration, C0859R.attr.scrimVisibleHeightTrigger, C0859R.attr.statusBarScrim, C0859R.attr.title, C0859R.attr.titleEnabled, C0859R.attr.toolbarId};
        public static final int[] CollapsingToolbarLayout_Layout = new int[]{C0859R.attr.layout_collapseMode, C0859R.attr.layout_collapseParallaxMultiplier};
        public static final int[] ColorStateListItem = new int[]{16843173, 16843551, C0859R.attr.alpha};
        public static final int[] CompoundButton = new int[]{16843015, C0859R.attr.buttonTint, C0859R.attr.buttonTintMode};
        public static final int[] ConstraintLayout_Layout = new int[]{16842948, 16843039, 16843040, 16843071, 16843072, C0859R.attr.barrierAllowsGoneWidgets, C0859R.attr.barrierDirection, C0859R.attr.chainUseRtl, C0859R.attr.constraintSet, C0859R.attr.constraint_referenced_ids, C0859R.attr.layout_constrainedHeight, C0859R.attr.layout_constrainedWidth, C0859R.attr.layout_constraintBaseline_creator, C0859R.attr.layout_constraintBaseline_toBaselineOf, C0859R.attr.layout_constraintBottom_creator, C0859R.attr.layout_constraintBottom_toBottomOf, C0859R.attr.layout_constraintBottom_toTopOf, C0859R.attr.layout_constraintCircle, C0859R.attr.layout_constraintCircleAngle, C0859R.attr.layout_constraintCircleRadius, C0859R.attr.layout_constraintDimensionRatio, C0859R.attr.layout_constraintEnd_toEndOf, C0859R.attr.layout_constraintEnd_toStartOf, C0859R.attr.layout_constraintGuide_begin, C0859R.attr.layout_constraintGuide_end, C0859R.attr.layout_constraintGuide_percent, C0859R.attr.layout_constraintHeight_default, C0859R.attr.layout_constraintHeight_max, C0859R.attr.layout_constraintHeight_min, C0859R.attr.layout_constraintHeight_percent, C0859R.attr.layout_constraintHorizontal_bias, C0859R.attr.layout_constraintHorizontal_chainStyle, C0859R.attr.layout_constraintHorizontal_weight, C0859R.attr.layout_constraintLeft_creator, C0859R.attr.layout_constraintLeft_toLeftOf, C0859R.attr.layout_constraintLeft_toRightOf, C0859R.attr.layout_constraintRight_creator, C0859R.attr.layout_constraintRight_toLeftOf, C0859R.attr.layout_constraintRight_toRightOf, C0859R.attr.layout_constraintStart_toEndOf, C0859R.attr.layout_constraintStart_toStartOf, C0859R.attr.layout_constraintTop_creator, C0859R.attr.layout_constraintTop_toBottomOf, C0859R.attr.layout_constraintTop_toTopOf, C0859R.attr.layout_constraintVertical_bias, C0859R.attr.layout_constraintVertical_chainStyle, C0859R.attr.layout_constraintVertical_weight, C0859R.attr.layout_constraintWidth_default, C0859R.attr.layout_constraintWidth_max, C0859R.attr.layout_constraintWidth_min, C0859R.attr.layout_constraintWidth_percent, C0859R.attr.layout_editor_absoluteX, C0859R.attr.layout_editor_absoluteY, C0859R.attr.layout_goneMarginBottom, C0859R.attr.layout_goneMarginEnd, C0859R.attr.layout_goneMarginLeft, C0859R.attr.layout_goneMarginRight, C0859R.attr.layout_goneMarginStart, C0859R.attr.layout_goneMarginTop, C0859R.attr.layout_optimizationLevel};
        public static final int[] ConstraintLayout_placeholder = new int[]{C0859R.attr.content, C0859R.attr.emptyVisibility};
        public static final int[] ConstraintSet = new int[]{16842948, 16842960, 16842972, 16842996, 16842997, 16842999, 16843000, 16843001, 16843002, 16843551, 16843552, 16843553, 16843554, 16843555, 16843556, 16843557, 16843558, 16843559, 16843560, 16843701, 16843702, 16843770, 16843840, C0859R.attr.layout_constrainedHeight, C0859R.attr.layout_constrainedWidth, C0859R.attr.layout_constraintBaseline_creator, C0859R.attr.layout_constraintBaseline_toBaselineOf, C0859R.attr.layout_constraintBottom_creator, C0859R.attr.layout_constraintBottom_toBottomOf, C0859R.attr.layout_constraintBottom_toTopOf, C0859R.attr.layout_constraintCircle, C0859R.attr.layout_constraintCircleAngle, C0859R.attr.layout_constraintCircleRadius, C0859R.attr.layout_constraintDimensionRatio, C0859R.attr.layout_constraintEnd_toEndOf, C0859R.attr.layout_constraintEnd_toStartOf, C0859R.attr.layout_constraintGuide_begin, C0859R.attr.layout_constraintGuide_end, C0859R.attr.layout_constraintGuide_percent, C0859R.attr.layout_constraintHeight_default, C0859R.attr.layout_constraintHeight_max, C0859R.attr.layout_constraintHeight_min, C0859R.attr.layout_constraintHeight_percent, C0859R.attr.layout_constraintHorizontal_bias, C0859R.attr.layout_constraintHorizontal_chainStyle, C0859R.attr.layout_constraintHorizontal_weight, C0859R.attr.layout_constraintLeft_creator, C0859R.attr.layout_constraintLeft_toLeftOf, C0859R.attr.layout_constraintLeft_toRightOf, C0859R.attr.layout_constraintRight_creator, C0859R.attr.layout_constraintRight_toLeftOf, C0859R.attr.layout_constraintRight_toRightOf, C0859R.attr.layout_constraintStart_toEndOf, C0859R.attr.layout_constraintStart_toStartOf, C0859R.attr.layout_constraintTop_creator, C0859R.attr.layout_constraintTop_toBottomOf, C0859R.attr.layout_constraintTop_toTopOf, C0859R.attr.layout_constraintVertical_bias, C0859R.attr.layout_constraintVertical_chainStyle, C0859R.attr.layout_constraintVertical_weight, C0859R.attr.layout_constraintWidth_default, C0859R.attr.layout_constraintWidth_max, C0859R.attr.layout_constraintWidth_min, C0859R.attr.layout_constraintWidth_percent, C0859R.attr.layout_editor_absoluteX, C0859R.attr.layout_editor_absoluteY, C0859R.attr.layout_goneMarginBottom, C0859R.attr.layout_goneMarginEnd, C0859R.attr.layout_goneMarginLeft, C0859R.attr.layout_goneMarginRight, C0859R.attr.layout_goneMarginStart, C0859R.attr.layout_goneMarginTop};
        public static final int[] ContactAvatarView = new int[]{C0859R.attr.textSize};
        public static final int ContactAvatarView_textSize = 0;
        public static final int[] CoordinatorLayout = new int[]{C0859R.attr.keylines, C0859R.attr.statusBarBackground};
        public static final int[] CoordinatorLayout_Layout = new int[]{16842931, C0859R.attr.layout_anchor, C0859R.attr.layout_anchorGravity, C0859R.attr.layout_behavior, C0859R.attr.layout_dodgeInsetEdges, C0859R.attr.layout_insetEdge, C0859R.attr.layout_keyline};
        public static final int[] CreditCardView = new int[]{C0859R.attr.cvv_is_visible, C0859R.attr.expiration_is_visible, C0859R.attr.mode, C0859R.attr.pan_editable, C0859R.attr.show_name, C0859R.attr.show_new_card};
        public static final int CreditCardView_cvv_is_visible = 0;
        public static final int CreditCardView_expiration_is_visible = 1;
        public static final int CreditCardView_mode = 2;
        public static final int CreditCardView_pan_editable = 3;
        public static final int CreditCardView_show_name = 4;
        public static final int CreditCardView_show_new_card = 5;
        public static final int[] CustomTextView = new int[]{C0859R.attr.drawableBottomCompat, C0859R.attr.drawableLeftCompat, C0859R.attr.drawableRightCompat, C0859R.attr.drawableTopCompat};
        public static final int CustomTextView_drawableBottomCompat = 0;
        public static final int CustomTextView_drawableLeftCompat = 1;
        public static final int CustomTextView_drawableRightCompat = 2;
        public static final int CustomTextView_drawableTopCompat = 3;
        public static final int[] DesignTheme = new int[]{C0859R.attr.bottomSheetDialogTheme, C0859R.attr.bottomSheetStyle, C0859R.attr.textColorError};
        public static final int[] DrawerArrowToggle = new int[]{C0859R.attr.arrowHeadLength, C0859R.attr.arrowShaftLength, C0859R.attr.barLength, C0859R.attr.color, C0859R.attr.drawableSize, C0859R.attr.gapBetweenBars, C0859R.attr.spinBars, C0859R.attr.thickness};
        public static final int[] FloatingActionButton = new int[]{C0859R.attr.backgroundTint, C0859R.attr.backgroundTintMode, C0859R.attr.borderWidth, C0859R.attr.elevation, C0859R.attr.fabCustomSize, C0859R.attr.fabSize, C0859R.attr.pressedTranslationZ, C0859R.attr.rippleColor, C0859R.attr.useCompatPadding};
        public static final int[] FloatingActionButton_Behavior_Layout = new int[]{C0859R.attr.behavior_autoHide};
        public static final int[] FontFamily = new int[]{C0859R.attr.fontProviderAuthority, C0859R.attr.fontProviderCerts, C0859R.attr.fontProviderFetchStrategy, C0859R.attr.fontProviderFetchTimeout, C0859R.attr.fontProviderPackage, C0859R.attr.fontProviderQuery};
        public static final int[] FontFamilyFont = new int[]{16844082, 16844083, 16844095, C0859R.attr.font, C0859R.attr.fontStyle, C0859R.attr.fontWeight};
        public static final int[] ForegroundLinearLayout = new int[]{16843017, 16843264, C0859R.attr.foregroundInsidePadding};
        public static final int[] GridLayout = new int[]{C0859R.attr.alignmentMode, C0859R.attr.columnCount, C0859R.attr.columnOrderPreserved, C0859R.attr.orientation, C0859R.attr.rowCount, C0859R.attr.rowOrderPreserved, C0859R.attr.useDefaultMargins};
        public static final int[] GridLayout_Layout = new int[]{16842996, 16842997, 16842998, 16842999, 16843000, 16843001, 16843002, C0859R.attr.layout_column, C0859R.attr.layout_columnSpan, C0859R.attr.layout_columnWeight, C0859R.attr.layout_gravity, C0859R.attr.layout_row, C0859R.attr.layout_rowSpan, C0859R.attr.layout_rowWeight};
        public static final int[] Iconics = new int[]{C0859R.attr.ico_background_color, C0859R.attr.ico_color, C0859R.attr.ico_contour_color, C0859R.attr.ico_contour_width, C0859R.attr.ico_corner_radius, C0859R.attr.ico_icon, C0859R.attr.ico_offset_x, C0859R.attr.ico_offset_y, C0859R.attr.ico_padding, C0859R.attr.ico_size};
        public static final int[] IconicsImageView = new int[]{C0859R.attr.iiv_background_color, C0859R.attr.iiv_color, C0859R.attr.iiv_contour_color, C0859R.attr.iiv_contour_width, C0859R.attr.iiv_corner_radius, C0859R.attr.iiv_icon, C0859R.attr.iiv_padding, C0859R.attr.iiv_size};
        public static final int[] LinearConstraintLayout = new int[]{16842948};
        public static final int[] LinearLayoutCompat = new int[]{16842927, 16842948, 16843046, 16843047, 16843048, C0859R.attr.divider, C0859R.attr.dividerPadding, C0859R.attr.measureWithLargestChild, C0859R.attr.showDividers};
        public static final int[] LinearLayoutCompat_Layout = new int[]{16842931, 16842996, 16842997, 16843137};
        public static final int[] ListPopupWindow = new int[]{16843436, 16843437};
        public static final int[] LoadingImageView = new int[]{C0859R.attr.circleCrop, C0859R.attr.imageAspectRatio, C0859R.attr.imageAspectRatioAdjust};
        public static final int[] MapAttrs = new int[]{C0859R.attr.ambientEnabled, C0859R.attr.cameraBearing, C0859R.attr.cameraMaxZoomPreference, C0859R.attr.cameraMinZoomPreference, C0859R.attr.cameraTargetLat, C0859R.attr.cameraTargetLng, C0859R.attr.cameraTilt, C0859R.attr.cameraZoom, C0859R.attr.latLngBoundsNorthEastLatitude, C0859R.attr.latLngBoundsNorthEastLongitude, C0859R.attr.latLngBoundsSouthWestLatitude, C0859R.attr.latLngBoundsSouthWestLongitude, C0859R.attr.liteMode, C0859R.attr.mapType, C0859R.attr.uiCompass, C0859R.attr.uiMapToolbar, C0859R.attr.uiRotateGestures, C0859R.attr.uiScrollGestures, C0859R.attr.uiTiltGestures, C0859R.attr.uiZoomControls, C0859R.attr.uiZoomGestures, C0859R.attr.useViewLifecycle, C0859R.attr.zOrderOnTop};
        public static final int[] MaterialDrawer = new int[]{C0859R.attr.material_drawer_background, C0859R.attr.material_drawer_divider, C0859R.attr.material_drawer_header_selection_text, C0859R.attr.material_drawer_hint_icon, C0859R.attr.material_drawer_hint_text, C0859R.attr.material_drawer_primary_icon, C0859R.attr.material_drawer_primary_text, C0859R.attr.material_drawer_secondary_text, C0859R.attr.material_drawer_selected, C0859R.attr.material_drawer_selected_text, C0859R.attr.material_drawer_window_background};
        public static final int[] MaterialProgressBar = new int[]{16843041, C0859R.attr.mpb_progressStyle, C0859R.attr.mpb_setBothDrawables, C0859R.attr.mpb_showTrack, C0859R.attr.mpb_tintMode, C0859R.attr.mpb_useIntrinsicPadding};
        public static final int[] MenuGroup = new int[]{16842766, 16842960, 16843156, 16843230, 16843231, 16843232};
        public static final int[] MenuItem = new int[]{16842754, 16842766, 16842960, 16843014, 16843156, 16843230, 16843231, 16843233, 16843234, 16843235, 16843236, 16843237, 16843375, C0859R.attr.actionLayout, C0859R.attr.actionProviderClass, C0859R.attr.actionViewClass, C0859R.attr.alphabeticModifiers, C0859R.attr.contentDescription, C0859R.attr.iconTint, C0859R.attr.iconTintMode, C0859R.attr.numericModifiers, C0859R.attr.showAsAction, C0859R.attr.tooltipText};
        public static final int[] MenuView = new int[]{16842926, 16843052, 16843053, 16843054, 16843055, 16843056, 16843057, C0859R.attr.preserveIconSpacing, C0859R.attr.subMenuArrow};
        public static final int[] NavigationView = new int[]{16842964, 16842973, 16843039, C0859R.attr.elevation, C0859R.attr.headerLayout, C0859R.attr.itemBackground, C0859R.attr.itemIconTint, C0859R.attr.itemTextAppearance, C0859R.attr.itemTextColor, C0859R.attr.menu};
        public static final int[] PercentLayout_Layout = new int[]{C0859R.attr.layout_aspectRatio, C0859R.attr.layout_heightPercent, C0859R.attr.layout_marginBottomPercent, C0859R.attr.layout_marginEndPercent, C0859R.attr.layout_marginLeftPercent, C0859R.attr.layout_marginPercent, C0859R.attr.layout_marginRightPercent, C0859R.attr.layout_marginStartPercent, C0859R.attr.layout_marginTopPercent, C0859R.attr.layout_widthPercent};
        public static final int[] PinEntryView = new int[]{C0859R.attr.accentType, C0859R.attr.accentWidth, C0859R.attr.digitBackground, C0859R.attr.digitElevation, C0859R.attr.digitHeight, C0859R.attr.digitSpacing, C0859R.attr.digitTextColor, C0859R.attr.digitTextSize, C0859R.attr.digitWidth, C0859R.attr.mask, C0859R.attr.numDigits, C0859R.attr.pinAccentColor, C0859R.attr.pinInputType};
        public static final int[] PopupWindow = new int[]{16843126, 16843465, C0859R.attr.overlapAnchor};
        public static final int[] PopupWindowBackgroundState = new int[]{C0859R.attr.state_above_anchor};
        public static final int[] RecycleListView = new int[]{C0859R.attr.paddingBottomNoButtons, C0859R.attr.paddingTopNoTitle};
        public static final int[] RecyclerView = new int[]{16842948, 16842993, C0859R.attr.fastScrollEnabled, C0859R.attr.fastScrollHorizontalThumbDrawable, C0859R.attr.fastScrollHorizontalTrackDrawable, C0859R.attr.fastScrollVerticalThumbDrawable, C0859R.attr.fastScrollVerticalTrackDrawable, C0859R.attr.layoutManager, C0859R.attr.reverseLayout, C0859R.attr.spanCount, C0859R.attr.stackFromEnd};
        public static final int[] RocketAnimationDrawable = new int[]{C0859R.attr.oneshot, C0859R.attr.variablePadding, C0859R.attr.visible};
        public static final int[] RocketAnimationDrawableItem = new int[]{C0859R.attr.drawable, C0859R.attr.duration};
        public static final int RocketAnimationDrawableItem_drawable = 0;
        public static final int RocketAnimationDrawableItem_duration = 1;
        public static final int RocketAnimationDrawable_oneshot = 0;
        public static final int RocketAnimationDrawable_variablePadding = 1;
        public static final int RocketAnimationDrawable_visible = 2;
        public static final int[] RocketAutofitTextView = new int[]{C0859R.attr.rocket_font};
        public static final int RocketAutofitTextView_rocket_font = 0;
        public static final int[] RocketButton = new int[]{C0859R.attr.rocket_font};
        public static final int RocketButton_rocket_font = 0;
        public static final int[] RocketEditText = new int[]{C0859R.attr.rawInputType, C0859R.attr.rocket_font};
        public static final int[] RocketEditTextPhone = new int[]{C0859R.attr.rocket_font};
        public static final int RocketEditText_rawInputType = 0;
        public static final int RocketEditText_rocket_font = 1;
        public static final int[] RocketNumpadButton = new int[]{C0859R.attr.number};
        public static final int RocketNumpadButton_number = 0;
        public static final int[] RocketSMSGroup = new int[]{C0859R.attr.allow_code_reset, C0859R.attr.group_title};
        public static final int RocketSMSGroup_allow_code_reset = 0;
        public static final int RocketSMSGroup_group_title = 1;
        public static final int[] RocketSMSInput = new int[]{C0859R.attr.small};
        public static final int RocketSMSInput_small = 0;
        public static final int[] RocketTextInputLayout = new int[]{16842906, 16843088, C0859R.attr.counterEnabled, C0859R.attr.counterMaxLength, C0859R.attr.counterOverflowTextAppearance, C0859R.attr.counterTextAppearance, C0859R.attr.errorEnabled, C0859R.attr.errorTextAppearance, C0859R.attr.error_font, C0859R.attr.hintAnimationEnabled, C0859R.attr.hintTextAppearance, C0859R.attr.hint_font, C0859R.attr.rocket_font};
        public static final int RocketTextInputLayout_android_hint = 1;
        public static final int RocketTextInputLayout_android_textColorHint = 0;
        public static final int RocketTextInputLayout_counterEnabled = 2;
        public static final int RocketTextInputLayout_counterMaxLength = 3;
        public static final int RocketTextInputLayout_counterOverflowTextAppearance = 4;
        public static final int RocketTextInputLayout_counterTextAppearance = 5;
        public static final int RocketTextInputLayout_errorEnabled = 6;
        public static final int RocketTextInputLayout_errorTextAppearance = 7;
        public static final int RocketTextInputLayout_error_font = 8;
        public static final int RocketTextInputLayout_hintAnimationEnabled = 9;
        public static final int RocketTextInputLayout_hintTextAppearance = 10;
        public static final int RocketTextInputLayout_hint_font = 11;
        public static final int[] RocketTextView = new int[]{C0859R.attr.rocket_font};
        public static final int RocketTextView_rocket_font = 0;
        public static final int[] ScrimInsetsFrameLayout = new int[]{C0859R.attr.insetForeground};
        public static final int[] ScrimInsetsView = new int[]{C0859R.attr.siv_insetForeground};
        public static final int[] ScrollingViewBehavior_Layout = new int[]{C0859R.attr.behavior_overlapTop};
        public static final int[] ScrollingWithHeaderViewBehavior = new int[]{C0859R.attr.active_color, C0859R.attr.header, C0859R.attr.passive_color};
        public static final int[] SearchView = new int[]{16842970, 16843039, 16843296, 16843364, C0859R.attr.closeIcon, C0859R.attr.commitIcon, C0859R.attr.defaultQueryHint, C0859R.attr.goIcon, C0859R.attr.iconifiedByDefault, C0859R.attr.layout, C0859R.attr.queryBackground, C0859R.attr.queryHint, C0859R.attr.searchHintIcon, C0859R.attr.searchIcon, C0859R.attr.submitBackground, C0859R.attr.suggestionRowLayout, C0859R.attr.voiceIcon};
        public static final int[] SignInButton = new int[]{C0859R.attr.buttonSize, C0859R.attr.colorScheme, C0859R.attr.scopeUris};
        public static final int[] SnackbarLayout = new int[]{16843039, C0859R.attr.elevation, C0859R.attr.maxActionInlineWidth};
        public static final int SnackbarLayout_android_maxWidth = 0;
        public static final int SnackbarLayout_elevation = 1;
        public static final int SnackbarLayout_maxActionInlineWidth = 2;
        public static final int[] Spinner = new int[]{16842930, 16843126, 16843131, 16843362, C0859R.attr.popupTheme};
        public static final int[] SwitchCard = new int[]{C0859R.attr.cardTextSize, C0859R.attr.cornerRadius, C0859R.attr.leftText, C0859R.attr.rightText, C0859R.attr.textColor, C0859R.attr.thumbColor, C0859R.attr.trackColor};
        public static final int[] SwitchCompat = new int[]{16843044, 16843045, 16843074, C0859R.attr.showText, C0859R.attr.splitTrack, C0859R.attr.switchMinWidth, C0859R.attr.switchPadding, C0859R.attr.switchTextAppearance, C0859R.attr.thumbTextPadding, C0859R.attr.thumbTint, C0859R.attr.thumbTintMode, C0859R.attr.track, C0859R.attr.trackTint, C0859R.attr.trackTintMode};
        public static final int[] TabItem = new int[]{16842754, 16842994, 16843087};
        public static final int[] TabLayout = new int[]{C0859R.attr.tabBackground, C0859R.attr.tabContentStart, C0859R.attr.tabGravity, C0859R.attr.tabIndicatorColor, C0859R.attr.tabIndicatorHeight, C0859R.attr.tabMaxWidth, C0859R.attr.tabMinWidth, C0859R.attr.tabMode, C0859R.attr.tabPadding, C0859R.attr.tabPaddingBottom, C0859R.attr.tabPaddingEnd, C0859R.attr.tabPaddingStart, C0859R.attr.tabPaddingTop, C0859R.attr.tabSelectedTextColor, C0859R.attr.tabTextAppearance, C0859R.attr.tabTextColor};
        public static final int[] TextAppearance = new int[]{16842901, 16842902, 16842903, 16842904, 16842906, 16842907, 16843105, 16843106, 16843107, 16843108, 16843692, C0859R.attr.fontFamily, C0859R.attr.textAllCaps};
        public static final int[] TextInputLayout = new int[]{16842906, 16843088, C0859R.attr.counterEnabled, C0859R.attr.counterMaxLength, C0859R.attr.counterOverflowTextAppearance, C0859R.attr.counterTextAppearance, C0859R.attr.errorEnabled, C0859R.attr.errorTextAppearance, C0859R.attr.hintAnimationEnabled, C0859R.attr.hintEnabled, C0859R.attr.hintTextAppearance, C0859R.attr.passwordToggleContentDescription, C0859R.attr.passwordToggleDrawable, C0859R.attr.passwordToggleEnabled, C0859R.attr.passwordToggleTint, C0859R.attr.passwordToggleTintMode};
        public static final int[] TitlePageIndicator = new int[]{16842901, 16842904, 16842964, C0859R.attr.clipPadding, C0859R.attr.footerColor, C0859R.attr.footerIndicatorHeight, C0859R.attr.footerIndicatorStyle, C0859R.attr.footerIndicatorUnderlinePadding, C0859R.attr.footerLineHeight, C0859R.attr.footerPadding, C0859R.attr.linePosition, C0859R.attr.selectedBold, C0859R.attr.selectedColor, C0859R.attr.titlePadding, C0859R.attr.topPadding};
        public static final int[] Toolbar = new int[]{16842927, 16843072, C0859R.attr.buttonGravity, C0859R.attr.collapseContentDescription, C0859R.attr.collapseIcon, C0859R.attr.contentInsetEnd, C0859R.attr.contentInsetEndWithActions, C0859R.attr.contentInsetLeft, C0859R.attr.contentInsetRight, C0859R.attr.contentInsetStart, C0859R.attr.contentInsetStartWithNavigation, C0859R.attr.logo, C0859R.attr.logoDescription, C0859R.attr.maxButtonHeight, C0859R.attr.navigationContentDescription, C0859R.attr.navigationIcon, C0859R.attr.popupTheme, C0859R.attr.subtitle, C0859R.attr.subtitleTextAppearance, C0859R.attr.subtitleTextColor, C0859R.attr.title, C0859R.attr.titleMargin, C0859R.attr.titleMarginBottom, C0859R.attr.titleMarginEnd, C0859R.attr.titleMarginStart, C0859R.attr.titleMarginTop, C0859R.attr.titleMargins, C0859R.attr.titleTextAppearance, C0859R.attr.titleTextColor};
        public static final int[] View = new int[]{16842752, 16842970, C0859R.attr.paddingEnd, C0859R.attr.paddingStart, C0859R.attr.theme};
        public static final int[] ViewBackgroundHelper = new int[]{16842964, C0859R.attr.backgroundTint, C0859R.attr.backgroundTintMode};
        public static final int[] ViewPagerIndicator = new int[]{C0859R.attr.vpiCirclePageIndicatorStyle, C0859R.attr.vpiIconPageIndicatorStyle, C0859R.attr.vpiLinePageIndicatorStyle, C0859R.attr.vpiTabPageIndicatorStyle, C0859R.attr.vpiTitlePageIndicatorStyle, C0859R.attr.vpiUnderlinePageIndicatorStyle};
        public static final int[] ViewStubCompat = new int[]{16842960, 16842994, 16842995};
        public static final int[] com_facebook_like_view = new int[]{C0859R.attr.com_facebook_auxiliary_view_position, C0859R.attr.com_facebook_foreground_color, C0859R.attr.com_facebook_horizontal_alignment, C0859R.attr.com_facebook_object_id, C0859R.attr.com_facebook_object_type, C0859R.attr.com_facebook_style};
        public static final int[] com_facebook_login_view = new int[]{C0859R.attr.com_facebook_confirm_logout, C0859R.attr.com_facebook_login_text, C0859R.attr.com_facebook_logout_text, C0859R.attr.com_facebook_tooltip_mode};
        public static final int[] com_facebook_profile_picture_view = new int[]{C0859R.attr.com_facebook_is_cropped, C0859R.attr.com_facebook_preset_size};
        public static final int[] swirl_Swirl = new int[]{C0859R.attr.swirl_state};
    }

    /* renamed from: ru.rocketbank.core.R$anim */
    public static final class anim implements Provider<RocketAPI> {
        private final KeyboardUtil module$3d1596a7;
        private final Provider<Retrofit> retrofitProvider;

        public anim(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
            this.module$3d1596a7 = keyboardUtil;
            this.retrofitProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
            Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
            Object create = retrofit.create(RocketAPI.class);
            Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(RocketAPI::class.java)");
            RocketAPI rocketAPI = (RocketAPI) create;
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (rocketAPI != null) {
                return rocketAPI;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ru.rocketbank.core.R$attr */
    public static final class attr implements Provider<ShopApi> {
        private final KeyboardUtil module$3d1596a7;
        private final Provider<Retrofit> retrofitProvider;

        public attr(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
            this.module$3d1596a7 = keyboardUtil;
            this.retrofitProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
            Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
            Object create = retrofit.create(ShopApi.class);
            Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(ShopApi::class.java)");
            ShopApi shopApi = (ShopApi) create;
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (shopApi != null) {
                return shopApi;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ru.rocketbank.core.R$bool */
    public static final class bool implements Provider<TariffsApi> {
        private final KeyboardUtil module$3d1596a7;
        private final Provider<Retrofit> retrofitProvider;

        public bool(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
            this.module$3d1596a7 = keyboardUtil;
            this.retrofitProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
            Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
            Object create = retrofit.create(TariffsApi.class);
            Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(TariffsApi::class.java)");
            TariffsApi tariffsApi = (TariffsApi) create;
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (tariffsApi != null) {
                return tariffsApi;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ru.rocketbank.core.R$color */
    public static final class color implements Provider<TemplateApi> {
        private final KeyboardUtil module$3d1596a7;
        private final Provider<Retrofit> retrofitProvider;

        public color(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
            this.module$3d1596a7 = keyboardUtil;
            this.retrofitProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
            Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
            Object create = retrofit.create(TemplateApi.class);
            Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(TemplateApi::class.java)");
            TemplateApi templateApi = (TemplateApi) create;
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (templateApi != null) {
                return templateApi;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ru.rocketbank.core.R$dimen */
    public static final class dimen implements Provider<UserApi> {
        private final KeyboardUtil module$3d1596a7;
        private final Provider<Retrofit> retrofitProvider;

        public dimen(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
            this.module$3d1596a7 = keyboardUtil;
            this.retrofitProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
            Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
            Object create = retrofit.create(UserApi.class);
            Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(UserApi::class.java)");
            UserApi userApi = (UserApi) create;
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (userApi != null) {
                return userApi;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ru.rocketbank.core.R$drawable */
    public static final class drawable implements Provider<YandexMapApi> {
        private final KeyboardUtil module$3d1596a7;
        private final Provider<Retrofit> retrofitProvider;

        public drawable(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
            this.module$3d1596a7 = keyboardUtil;
            this.retrofitProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
            Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
            Object create = retrofit.create(YandexMapApi.class);
            Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(YandexMapApi::class.java)");
            YandexMapApi yandexMapApi = (YandexMapApi) create;
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (yandexMapApi != null) {
                return yandexMapApi;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ru.rocketbank.core.R$id */
    public static final class id implements Provider<DepositApi> {
        private final KeyboardUtil module$3d1596a7;
        private final Provider<Retrofit> retrofitProvider;

        public id(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
            this.module$3d1596a7 = keyboardUtil;
            this.retrofitProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
            Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
            Object create = retrofit.create(DepositApi.class);
            Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(DepositApi::class.java)");
            DepositApi depositApi = (DepositApi) create;
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (depositApi != null) {
                return depositApi;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ru.rocketbank.core.R$integer */
    public static final class integer implements Provider<Retrofit> {
        private final Provider<HeaderManager> headerManagerProvider;
        private final RetrofitModule module;

        public integer(RetrofitModule retrofitModule, Provider<HeaderManager> provider) {
            this.module = retrofitModule;
            this.headerManagerProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Retrofit provideRetorofitAdapterWidget = RetrofitModule.provideRetorofitAdapterWidget((HeaderManager) this.headerManagerProvider.get());
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (provideRetorofitAdapterWidget != null) {
                return provideRetorofitAdapterWidget;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ru.rocketbank.core.R$layout */
    public static final class layout implements Provider<Retrofit> {
        private final Provider<HeaderManager> headerManagerProvider;
        private final RetrofitModule module;

        public layout(RetrofitModule retrofitModule, Provider<HeaderManager> provider) {
            this.module = retrofitModule;
            this.headerManagerProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            HeaderManager headerManager = (HeaderManager) this.headerManagerProvider.get();
            Intrinsics.checkParameterIsNotNull(headerManager, "headerManager");
            Retrofit build = new OkClientRestAdapter(headerManager).create().build();
            Intrinsics.checkExpressionValueIsNotNull(build, "okClientRestAdapter.create().build()");
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (build != null) {
                return build;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ru.rocketbank.core.R$mipmap */
    public static final class mipmap implements Provider<Retrofit> {
        private final RetrofitModule module;

        public mipmap(RetrofitModule retrofitModule) {
            this.module = retrofitModule;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            Retrofit provideRetrofitForYandex = RetrofitModule.provideRetrofitForYandex();
            String str = "Cannot return null from a non-@Nullable @Provides method";
            if (provideRetrofitForYandex != null) {
                return provideRetrofitForYandex;
            }
            throw new NullPointerException(str);
        }
    }

    /* renamed from: ru.rocketbank.core.R$plurals */
    public static final class plurals implements Provider<TemplateManager> {
        private final ExceptionsKt__ExceptionsKt module$10f37941;
        private final Provider<RocketAPI> rocketAPIProvider;

        public plurals(ExceptionsKt__ExceptionsKt exceptionsKt__ExceptionsKt, Provider<RocketAPI> provider) {
            this.module$10f37941 = exceptionsKt__ExceptionsKt;
            this.rocketAPIProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            RocketAPI rocketAPI = (RocketAPI) this.rocketAPIProvider.get();
            Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketAPI");
            Log.v("TemplateModule", "Creating TemplateManager");
            return new TemplateManager(rocketAPI);
        }
    }

    /* renamed from: ru.rocketbank.core.R$string */
    public static final class string implements Provider<AppInfoManager> {
        private final Provider<AppInformationStorage> appInformationStorageProvider;
        private final Provider<Context> contextProvider;
        private final UserModule module;

        public string(UserModule userModule, Provider<Context> provider, Provider<AppInformationStorage> provider2) {
            this.module = userModule;
            this.contextProvider = provider;
            this.appInformationStorageProvider = provider2;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            return UserModule.provideAppInfoManager((Context) this.contextProvider.get(), (AppInformationStorage) this.appInformationStorageProvider.get());
        }
    }

    /* renamed from: ru.rocketbank.core.R$style */
    public static final class style implements Provider<AppInformationStorage> {
        private final Provider<KeyManager> keyManagerProvider;
        private final UserModule module;

        public style(UserModule userModule, Provider<KeyManager> provider) {
            this.module = userModule;
            this.keyManagerProvider = provider;
        }

        public final /* bridge */ /* synthetic */ Object get() {
            return UserModule.provideAppInfoStorage((KeyManager) this.keyManagerProvider.get());
        }
    }

    public C1328R(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(RegistrationApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(RegistrationApi::class.java)");
        RegistrationApi registrationApi = (RegistrationApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (registrationApi != null) {
            return registrationApi;
        }
        throw new NullPointerException(str);
    }
}
