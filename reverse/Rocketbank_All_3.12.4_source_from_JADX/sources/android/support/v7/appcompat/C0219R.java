package android.support.v7.appcompat;

import android.content.Context;
import android.content.res.ColorStateList;
import android.support.v4.content.ContextCompat;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.util.TypedValue;
import android.widget.TextView;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.mikepenz.iconics.typeface.ITypeface;
import com.nineoldandroids.animation.TypeEvaluator;
import java.io.Reader;
import java.lang.reflect.Field;
import java.util.LinkedList;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: android.support.v7.appcompat.R */
public final class C0219R {
    private final Field field;

    /* renamed from: android.support.v7.appcompat.R$attr */
    public static final class attr {
        public static JsonElement parse(Reader reader) throws JsonIOException, JsonSyntaxException {
            try {
                JsonReader jsonReader = new JsonReader(reader);
                reader = attr.parse(jsonReader);
                if ((reader instanceof JsonNull) || jsonReader.peek() == JsonToken.END_DOCUMENT) {
                    return reader;
                }
                throw new JsonSyntaxException("Did not consume the entire document.");
            } catch (Throwable e) {
                throw new JsonSyntaxException(e);
            } catch (Throwable e2) {
                throw new JsonIOException(e2);
            } catch (Throwable e22) {
                throw new JsonSyntaxException(e22);
            }
        }

        private static JsonElement parse(JsonReader jsonReader) throws JsonIOException, JsonSyntaxException {
            StringBuilder stringBuilder;
            boolean isLenient = jsonReader.isLenient();
            jsonReader.setLenient(true);
            try {
                JsonElement parse = Streams.parse(jsonReader);
                jsonReader.setLenient(isLenient);
                return parse;
            } catch (Throwable e) {
                stringBuilder = new StringBuilder("Failed parsing JSON source: ");
                stringBuilder.append(jsonReader);
                stringBuilder.append(" to Json");
                throw new JsonParseException(stringBuilder.toString(), e);
            } catch (Throwable e2) {
                stringBuilder = new StringBuilder("Failed parsing JSON source: ");
                stringBuilder.append(jsonReader);
                stringBuilder.append(" to Json");
                throw new JsonParseException(stringBuilder.toString(), e2);
            } catch (Throwable th) {
                jsonReader.setLenient(isLenient);
            }
        }
    }

    /* renamed from: android.support.v7.appcompat.R$bool */
    public static final class bool {
        public final double maxX;
        public final double maxY;
        public final double midX;
        public final double midY;
        public final double minX;
        public final double minY;

        public bool(double d, double d2, double d3, double d4) {
            this.minX = d;
            this.minY = d3;
            this.maxX = d2;
            this.maxY = d4;
            this.midX = (d + d2) / 2.0d;
            this.midY = (d3 + d4) / 2.0d;
        }

        public final boolean contains(double d, double d2) {
            return (this.minX > d || d > this.maxX || this.minY > d2 || d2 > this.maxY) ? 0.0d : Double.MIN_VALUE;
        }
    }

    /* renamed from: android.support.v7.appcompat.R$color */
    public static final class color {
        /* renamed from: x */
        public final double f5x;
        /* renamed from: y */
        public final double f6y;

        public color(double d, double d2) {
            this.f5x = d;
            this.f6y = d2;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder("Point{x=");
            stringBuilder.append(this.f5x);
            stringBuilder.append(", y=");
            stringBuilder.append(this.f6y);
            stringBuilder.append('}');
            return stringBuilder.toString();
        }
    }

    /* renamed from: android.support.v7.appcompat.R$dimen */
    public static final class dimen {
        public int endIndex;
        public ITypeface font;
        public String icon;
        public int startIndex;
        public StyleSpan styleSpan;

        public dimen(int i, int i2, String str, ITypeface iTypeface) {
            this.startIndex = i;
            this.endIndex = i2;
            this.icon = str;
            this.font = iTypeface;
        }

        public dimen(int i, int i2, StyleSpan styleSpan) {
            this.startIndex = i;
            this.endIndex = i2;
            this.styleSpan = styleSpan;
        }
    }

    /* renamed from: android.support.v7.appcompat.R$drawable */
    public static final class drawable {
        public SpannableStringBuilder spannableStringBuilder;
        public LinkedList<dimen> styleContainers;

        public drawable(SpannableStringBuilder spannableStringBuilder, LinkedList<dimen> linkedList) {
            this.spannableStringBuilder = spannableStringBuilder;
            this.styleContainers = linkedList;
        }
    }

    /* renamed from: android.support.v7.appcompat.R$id */
    public static final class id {
        private int mColorInt = 0;
        private int mColorRes = -1;

        public final void setColorInt(int i) {
            this.mColorInt = i;
        }

        public final void setColorRes(int i) {
            this.mColorRes = i;
        }

        public static int color$54b3a3d9(id idVar, Context context, int i, int i2) {
            int i3 = 0;
            if (idVar == null) {
                idVar = new TypedValue();
                if (context.getTheme().resolveAttribute(i, idVar, true) != 0) {
                    i3 = idVar.data;
                }
                if (i3 == 0) {
                    i3 = context.getResources().getColor(i2);
                }
                return i3;
            }
            if (idVar.mColorInt == 0 && idVar.mColorRes != -1) {
                idVar.mColorInt = ContextCompat.getColor(context, idVar.mColorRes);
            }
            idVar = idVar.mColorInt;
            if (idVar != null) {
                return idVar;
            }
            idVar = new TypedValue();
            if (context.getTheme().resolveAttribute(i, idVar, true) != 0) {
                i3 = idVar.data;
            }
            if (i3 == 0) {
                i3 = context.getResources().getColor(i2);
            }
            return i3;
        }

        public static void applyToOr$d8581ce(id idVar, TextView textView, ColorStateList colorStateList) {
            if (idVar == null || textView == null) {
                if (textView != null) {
                    textView.setTextColor(colorStateList);
                }
            } else if (idVar.mColorInt != 0) {
                textView.setTextColor(idVar.mColorInt);
            } else if (idVar.mColorRes != -1) {
                textView.setTextColor(ContextCompat.getColor(textView.getContext(), idVar.mColorRes));
            } else {
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                }
            }
        }
    }

    /* renamed from: android.support.v7.appcompat.R$layout */
    public static final class layout {
        private int mDp = Integer.MIN_VALUE;
        private int mPixel = Integer.MIN_VALUE;
        private int mResource = Integer.MIN_VALUE;

        public final void setDp(int i) {
            this.mDp = i;
        }

        public final int asPixel(Context context) {
            if (this.mPixel != Integer.MIN_VALUE) {
                return this.mPixel;
            }
            if (this.mDp != Integer.MIN_VALUE) {
                return (int) (((float) this.mDp) * (((float) context.getResources().getDisplayMetrics().densityDpi) / 160.0f));
            }
            return this.mResource != Integer.MIN_VALUE ? context.getResources().getDimensionPixelSize(this.mResource) : null;
        }
    }

    /* renamed from: android.support.v7.appcompat.R$string */
    public static final class string {
        private String mText;
        private int mTextRes = -1;

        public string(String str) {
            this.mText = str;
        }

        public string(int i) {
            this.mTextRes = i;
        }

        public static void applyTo$3730f3ac(string string, TextView textView) {
            if (!(string == null || textView == null)) {
                if (string.mText != null) {
                    textView.setText(string.mText);
                } else if (string.mTextRes != -1) {
                    textView.setText(string.mTextRes);
                } else {
                    textView.setText("");
                }
            }
        }

        public static boolean applyToOrHide$3730f3a8(string string, TextView textView) {
            if (string == null || textView == null) {
                if (textView == null) {
                    return false;
                }
                textView.setVisibility(8);
                return false;
            } else if (string.mText != null) {
                textView.setText(string.mText);
                textView.setVisibility(0);
                return true;
            } else if (string.mTextRes != -1) {
                textView.setText(string.mTextRes);
                textView.setVisibility(0);
                return true;
            } else {
                textView.setVisibility(8);
                return false;
            }
        }

        public String toString() {
            return this.mText;
        }
    }

    /* renamed from: android.support.v7.appcompat.R$styleable */
    public static final class styleable {
        public static final int[] ActionBar = new int[]{C0859R.attr.background, C0859R.attr.backgroundSplit, C0859R.attr.backgroundStacked, C0859R.attr.contentInsetEnd, C0859R.attr.contentInsetEndWithActions, C0859R.attr.contentInsetLeft, C0859R.attr.contentInsetRight, C0859R.attr.contentInsetStart, C0859R.attr.contentInsetStartWithNavigation, C0859R.attr.customNavigationLayout, C0859R.attr.displayOptions, C0859R.attr.divider, C0859R.attr.elevation, C0859R.attr.height, C0859R.attr.hideOnContentScroll, C0859R.attr.homeAsUpIndicator, C0859R.attr.homeLayout, C0859R.attr.icon, C0859R.attr.indeterminateProgressStyle, C0859R.attr.itemPadding, C0859R.attr.logo, C0859R.attr.navigationMode, C0859R.attr.popupTheme, C0859R.attr.progressBarPadding, C0859R.attr.progressBarStyle, C0859R.attr.subtitle, C0859R.attr.subtitleTextStyle, C0859R.attr.title, C0859R.attr.titleTextStyle};
        public static final int[] ActionBarLayout = new int[]{16842931};
        public static final int ActionBarLayout_android_layout_gravity = 0;
        public static final int ActionBar_background = 0;
        public static final int ActionBar_backgroundSplit = 1;
        public static final int ActionBar_backgroundStacked = 2;
        public static final int ActionBar_contentInsetEnd = 3;
        public static final int ActionBar_contentInsetStart = 7;
        public static final int ActionBar_customNavigationLayout = 9;
        public static final int ActionBar_displayOptions = 10;
        public static final int ActionBar_elevation = 12;
        public static final int ActionBar_height = 13;
        public static final int ActionBar_hideOnContentScroll = 14;
        public static final int ActionBar_homeAsUpIndicator = 15;
        public static final int ActionBar_icon = 17;
        public static final int ActionBar_logo = 20;
        public static final int ActionBar_popupTheme = 22;
        public static final int ActionBar_subtitle = 25;
        public static final int ActionBar_subtitleTextStyle = 26;
        public static final int ActionBar_title = 27;
        public static final int ActionBar_titleTextStyle = 28;
        public static final int[] ActionMenuItemView = new int[]{16843071};
        public static final int ActionMenuItemView_android_minWidth = 0;
        public static final int[] ActionMode = new int[]{C0859R.attr.background, C0859R.attr.backgroundSplit, C0859R.attr.closeItemLayout, C0859R.attr.height, C0859R.attr.subtitleTextStyle, C0859R.attr.titleTextStyle};
        public static final int ActionMode_background = 0;
        public static final int ActionMode_closeItemLayout = 2;
        public static final int ActionMode_height = 3;
        public static final int ActionMode_subtitleTextStyle = 4;
        public static final int ActionMode_titleTextStyle = 5;
        public static final int[] ActivityChooserView = new int[]{C0859R.attr.expandActivityOverflowButtonDrawable, C0859R.attr.initialActivityCount};
        public static final int ActivityChooserView_expandActivityOverflowButtonDrawable = 0;
        public static final int ActivityChooserView_initialActivityCount = 1;
        public static final int[] AlertDialog = new int[]{16842994, C0859R.attr.buttonIconDimen, C0859R.attr.buttonPanelSideLayout, C0859R.attr.listItemLayout, C0859R.attr.listLayout, C0859R.attr.multiChoiceItemLayout, C0859R.attr.showTitle, C0859R.attr.singleChoiceItemLayout};
        public static final int AlertDialog_android_layout = 0;
        public static final int AlertDialog_buttonIconDimen = 1;
        public static final int AlertDialog_buttonPanelSideLayout = 2;
        public static final int AlertDialog_listItemLayout = 3;
        public static final int AlertDialog_listLayout = 4;
        public static final int AlertDialog_multiChoiceItemLayout = 5;
        public static final int AlertDialog_showTitle = 6;
        public static final int AlertDialog_singleChoiceItemLayout = 7;
        public static final int[] AppCompatImageView = new int[]{16843033, C0859R.attr.srcCompat, C0859R.attr.tint, C0859R.attr.tintMode};
        public static final int AppCompatImageView_srcCompat = 1;
        public static final int AppCompatImageView_tint = 2;
        public static final int AppCompatImageView_tintMode = 3;
        public static final int[] AppCompatSeekBar = new int[]{16843074, C0859R.attr.tickMark, C0859R.attr.tickMarkTint, C0859R.attr.tickMarkTintMode};
        public static final int AppCompatSeekBar_android_thumb = 0;
        public static final int AppCompatSeekBar_tickMark = 1;
        public static final int AppCompatSeekBar_tickMarkTint = 2;
        public static final int AppCompatSeekBar_tickMarkTintMode = 3;
        public static final int[] AppCompatTextHelper = new int[]{16842804, 16843117, 16843118, 16843119, 16843120, 16843666, 16843667};
        public static final int AppCompatTextHelper_android_drawableBottom = 2;
        public static final int AppCompatTextHelper_android_drawableEnd = 6;
        public static final int AppCompatTextHelper_android_drawableLeft = 3;
        public static final int AppCompatTextHelper_android_drawableRight = 4;
        public static final int AppCompatTextHelper_android_drawableStart = 5;
        public static final int AppCompatTextHelper_android_drawableTop = 1;
        public static final int AppCompatTextHelper_android_textAppearance = 0;
        public static final int[] AppCompatTextView = new int[]{16842804, C0859R.attr.autoSizeMaxTextSize, C0859R.attr.autoSizeMinTextSize, C0859R.attr.autoSizePresetSizes, C0859R.attr.autoSizeStepGranularity, C0859R.attr.autoSizeTextType, C0859R.attr.fontFamily, C0859R.attr.textAllCaps};
        public static final int AppCompatTextView_autoSizeMaxTextSize = 1;
        public static final int AppCompatTextView_autoSizeMinTextSize = 2;
        public static final int AppCompatTextView_autoSizePresetSizes = 3;
        public static final int AppCompatTextView_autoSizeStepGranularity = 4;
        public static final int AppCompatTextView_autoSizeTextType = 5;
        public static final int[] AppCompatTheme = new int[]{16842839, 16842926, C0859R.attr.actionBarDivider, C0859R.attr.actionBarItemBackground, C0859R.attr.actionBarPopupTheme, C0859R.attr.actionBarSize, C0859R.attr.actionBarSplitStyle, C0859R.attr.actionBarStyle, C0859R.attr.actionBarTabBarStyle, C0859R.attr.actionBarTabStyle, C0859R.attr.actionBarTabTextStyle, C0859R.attr.actionBarTheme, C0859R.attr.actionBarWidgetTheme, C0859R.attr.actionButtonStyle, C0859R.attr.actionDropDownStyle, C0859R.attr.actionMenuTextAppearance, C0859R.attr.actionMenuTextColor, C0859R.attr.actionModeBackground, C0859R.attr.actionModeCloseButtonStyle, C0859R.attr.actionModeCloseDrawable, C0859R.attr.actionModeCopyDrawable, C0859R.attr.actionModeCutDrawable, C0859R.attr.actionModeFindDrawable, C0859R.attr.actionModePasteDrawable, C0859R.attr.actionModePopupWindowStyle, C0859R.attr.actionModeSelectAllDrawable, C0859R.attr.actionModeShareDrawable, C0859R.attr.actionModeSplitBackground, C0859R.attr.actionModeStyle, C0859R.attr.actionModeWebSearchDrawable, C0859R.attr.actionOverflowButtonStyle, C0859R.attr.actionOverflowMenuStyle, C0859R.attr.activityChooserViewStyle, C0859R.attr.alertDialogButtonGroupStyle, C0859R.attr.alertDialogCenterButtons, C0859R.attr.alertDialogStyle, C0859R.attr.alertDialogTheme, C0859R.attr.autoCompleteTextViewStyle, C0859R.attr.borderlessButtonStyle, C0859R.attr.buttonBarButtonStyle, C0859R.attr.buttonBarNegativeButtonStyle, C0859R.attr.buttonBarNeutralButtonStyle, C0859R.attr.buttonBarPositiveButtonStyle, C0859R.attr.buttonBarStyle, C0859R.attr.buttonStyle, C0859R.attr.buttonStyleSmall, C0859R.attr.checkboxStyle, C0859R.attr.checkedTextViewStyle, C0859R.attr.colorAccent, C0859R.attr.colorBackgroundFloating, C0859R.attr.colorButtonNormal, C0859R.attr.colorControlActivated, C0859R.attr.colorControlHighlight, C0859R.attr.colorControlNormal, C0859R.attr.colorError, C0859R.attr.colorPrimary, C0859R.attr.colorPrimaryDark, C0859R.attr.colorSwitchThumbNormal, C0859R.attr.controlBackground, C0859R.attr.dialogPreferredPadding, C0859R.attr.dialogTheme, C0859R.attr.dividerHorizontal, C0859R.attr.dividerVertical, C0859R.attr.dropDownListViewStyle, C0859R.attr.dropdownListPreferredItemHeight, C0859R.attr.editTextBackground, C0859R.attr.editTextColor, C0859R.attr.editTextStyle, C0859R.attr.homeAsUpIndicator, C0859R.attr.imageButtonStyle, C0859R.attr.listChoiceBackgroundIndicator, C0859R.attr.listDividerAlertDialog, C0859R.attr.listMenuViewStyle, C0859R.attr.listPopupWindowStyle, C0859R.attr.listPreferredItemHeight, C0859R.attr.listPreferredItemHeightLarge, C0859R.attr.listPreferredItemHeightSmall, C0859R.attr.listPreferredItemPaddingLeft, C0859R.attr.listPreferredItemPaddingRight, C0859R.attr.panelBackground, C0859R.attr.panelMenuListTheme, C0859R.attr.panelMenuListWidth, C0859R.attr.popupMenuStyle, C0859R.attr.popupWindowStyle, C0859R.attr.radioButtonStyle, C0859R.attr.ratingBarStyle, C0859R.attr.ratingBarStyleIndicator, C0859R.attr.ratingBarStyleSmall, C0859R.attr.searchViewStyle, C0859R.attr.seekBarStyle, C0859R.attr.selectableItemBackground, C0859R.attr.selectableItemBackgroundBorderless, C0859R.attr.spinnerDropDownItemStyle, C0859R.attr.spinnerStyle, C0859R.attr.switchStyle, C0859R.attr.textAppearanceLargePopupMenu, C0859R.attr.textAppearanceListItem, C0859R.attr.textAppearanceListItemSecondary, C0859R.attr.textAppearanceListItemSmall, C0859R.attr.textAppearancePopupMenuHeader, C0859R.attr.textAppearanceSearchResultSubtitle, C0859R.attr.textAppearanceSearchResultTitle, C0859R.attr.textAppearanceSmallPopupMenu, C0859R.attr.textColorAlertDialogListItem, C0859R.attr.textColorSearchUrl, C0859R.attr.toolbarNavigationButtonStyle, C0859R.attr.toolbarStyle, C0859R.attr.tooltipForegroundColor, C0859R.attr.tooltipFrameBackground, C0859R.attr.viewInflaterClass, C0859R.attr.windowActionBar, C0859R.attr.windowActionBarOverlay, C0859R.attr.windowActionModeOverlay, C0859R.attr.windowFixedHeightMajor, C0859R.attr.windowFixedHeightMinor, C0859R.attr.windowFixedWidthMajor, C0859R.attr.windowFixedWidthMinor, C0859R.attr.windowMinWidthMajor, C0859R.attr.windowMinWidthMinor, C0859R.attr.windowNoTitle};
        public static final int AppCompatTheme_android_windowAnimationStyle = 1;
        public static final int AppCompatTheme_android_windowIsFloating = 0;
        public static final int AppCompatTheme_panelBackground = 79;
        public static final int AppCompatTheme_viewInflaterClass = 109;
        public static final int AppCompatTheme_windowActionBar = 110;
        public static final int AppCompatTheme_windowActionBarOverlay = 111;
        public static final int AppCompatTheme_windowActionModeOverlay = 112;
        public static final int AppCompatTheme_windowFixedHeightMajor = 113;
        public static final int AppCompatTheme_windowFixedHeightMinor = 114;
        public static final int AppCompatTheme_windowFixedWidthMajor = 115;
        public static final int AppCompatTheme_windowFixedWidthMinor = 116;
        public static final int AppCompatTheme_windowMinWidthMajor = 117;
        public static final int AppCompatTheme_windowMinWidthMinor = 118;
        public static final int AppCompatTheme_windowNoTitle = 119;
        public static final int[] ButtonBarLayout = new int[]{C0859R.attr.allowStacking};
        public static final int ButtonBarLayout_allowStacking = 0;
        public static final int[] ColorStateListItem = new int[]{16843173, 16843551, C0859R.attr.alpha};
        public static final int ColorStateListItem_alpha = 2;
        public static final int ColorStateListItem_android_alpha = 1;
        public static final int ColorStateListItem_android_color = 0;
        public static final int[] CompoundButton = new int[]{16843015, C0859R.attr.buttonTint, C0859R.attr.buttonTintMode};
        public static final int CompoundButton_android_button = 0;
        public static final int CompoundButton_buttonTint = 1;
        public static final int CompoundButton_buttonTintMode = 2;
        public static final int[] CoordinatorLayout = new int[]{C0859R.attr.keylines, C0859R.attr.statusBarBackground};
        public static final int[] CoordinatorLayout_Layout = new int[]{16842931, C0859R.attr.layout_anchor, C0859R.attr.layout_anchorGravity, C0859R.attr.layout_behavior, C0859R.attr.layout_dodgeInsetEdges, C0859R.attr.layout_insetEdge, C0859R.attr.layout_keyline};
        public static final int[] DrawerArrowToggle = new int[]{C0859R.attr.arrowHeadLength, C0859R.attr.arrowShaftLength, C0859R.attr.barLength, C0859R.attr.color, C0859R.attr.drawableSize, C0859R.attr.gapBetweenBars, C0859R.attr.spinBars, C0859R.attr.thickness};
        public static final int DrawerArrowToggle_arrowHeadLength = 0;
        public static final int DrawerArrowToggle_arrowShaftLength = 1;
        public static final int DrawerArrowToggle_barLength = 2;
        public static final int DrawerArrowToggle_color = 3;
        public static final int DrawerArrowToggle_drawableSize = 4;
        public static final int DrawerArrowToggle_gapBetweenBars = 5;
        public static final int DrawerArrowToggle_spinBars = 6;
        public static final int DrawerArrowToggle_thickness = 7;
        public static final int[] FontFamily = new int[]{C0859R.attr.fontProviderAuthority, C0859R.attr.fontProviderCerts, C0859R.attr.fontProviderFetchStrategy, C0859R.attr.fontProviderFetchTimeout, C0859R.attr.fontProviderPackage, C0859R.attr.fontProviderQuery};
        public static final int[] FontFamilyFont = new int[]{16844082, 16844083, 16844095, C0859R.attr.font, C0859R.attr.fontStyle, C0859R.attr.fontWeight};
        public static final int[] LinearLayoutCompat = new int[]{16842927, 16842948, 16843046, 16843047, 16843048, C0859R.attr.divider, C0859R.attr.dividerPadding, C0859R.attr.measureWithLargestChild, C0859R.attr.showDividers};
        public static final int[] LinearLayoutCompat_Layout = new int[]{16842931, 16842996, 16842997, 16843137};
        public static final int LinearLayoutCompat_Layout_android_layout_gravity = 0;
        public static final int LinearLayoutCompat_Layout_android_layout_weight = 3;
        public static final int LinearLayoutCompat_android_baselineAligned = 2;
        public static final int LinearLayoutCompat_android_baselineAlignedChildIndex = 3;
        public static final int LinearLayoutCompat_android_gravity = 0;
        public static final int LinearLayoutCompat_android_orientation = 1;
        public static final int LinearLayoutCompat_android_weightSum = 4;
        public static final int LinearLayoutCompat_divider = 5;
        public static final int LinearLayoutCompat_dividerPadding = 6;
        public static final int LinearLayoutCompat_measureWithLargestChild = 7;
        public static final int LinearLayoutCompat_showDividers = 8;
        public static final int[] ListPopupWindow = new int[]{16843436, 16843437};
        public static final int ListPopupWindow_android_dropDownHorizontalOffset = 0;
        public static final int ListPopupWindow_android_dropDownVerticalOffset = 1;
        public static final int[] MenuGroup = new int[]{16842766, 16842960, 16843156, 16843230, 16843231, 16843232};
        public static final int MenuGroup_android_checkableBehavior = 5;
        public static final int MenuGroup_android_enabled = 0;
        public static final int MenuGroup_android_id = 1;
        public static final int MenuGroup_android_menuCategory = 3;
        public static final int MenuGroup_android_orderInCategory = 4;
        public static final int MenuGroup_android_visible = 2;
        public static final int[] MenuItem = new int[]{16842754, 16842766, 16842960, 16843014, 16843156, 16843230, 16843231, 16843233, 16843234, 16843235, 16843236, 16843237, 16843375, C0859R.attr.actionLayout, C0859R.attr.actionProviderClass, C0859R.attr.actionViewClass, C0859R.attr.alphabeticModifiers, C0859R.attr.contentDescription, C0859R.attr.iconTint, C0859R.attr.iconTintMode, C0859R.attr.numericModifiers, C0859R.attr.showAsAction, C0859R.attr.tooltipText};
        public static final int MenuItem_actionLayout = 13;
        public static final int MenuItem_actionProviderClass = 14;
        public static final int MenuItem_actionViewClass = 15;
        public static final int MenuItem_alphabeticModifiers = 16;
        public static final int MenuItem_android_alphabeticShortcut = 9;
        public static final int MenuItem_android_checkable = 11;
        public static final int MenuItem_android_checked = 3;
        public static final int MenuItem_android_enabled = 1;
        public static final int MenuItem_android_icon = 0;
        public static final int MenuItem_android_id = 2;
        public static final int MenuItem_android_menuCategory = 5;
        public static final int MenuItem_android_numericShortcut = 10;
        public static final int MenuItem_android_onClick = 12;
        public static final int MenuItem_android_orderInCategory = 6;
        public static final int MenuItem_android_title = 7;
        public static final int MenuItem_android_titleCondensed = 8;
        public static final int MenuItem_android_visible = 4;
        public static final int MenuItem_contentDescription = 17;
        public static final int MenuItem_iconTint = 18;
        public static final int MenuItem_iconTintMode = 19;
        public static final int MenuItem_numericModifiers = 20;
        public static final int MenuItem_showAsAction = 21;
        public static final int MenuItem_tooltipText = 22;
        public static final int[] MenuView = new int[]{16842926, 16843052, 16843053, 16843054, 16843055, 16843056, 16843057, C0859R.attr.preserveIconSpacing, C0859R.attr.subMenuArrow};
        public static final int MenuView_android_itemBackground = 5;
        public static final int MenuView_android_itemTextAppearance = 1;
        public static final int MenuView_preserveIconSpacing = 7;
        public static final int MenuView_subMenuArrow = 8;
        public static final int[] PopupWindow = new int[]{16843126, 16843465, C0859R.attr.overlapAnchor};
        public static final int[] PopupWindowBackgroundState = new int[]{C0859R.attr.state_above_anchor};
        public static final int PopupWindow_android_popupBackground = 0;
        public static final int PopupWindow_overlapAnchor = 2;
        public static final int[] RecycleListView = new int[]{C0859R.attr.paddingBottomNoButtons, C0859R.attr.paddingTopNoTitle};
        public static final int RecycleListView_paddingBottomNoButtons = 0;
        public static final int RecycleListView_paddingTopNoTitle = 1;
        public static final int[] SearchView = new int[]{16842970, 16843039, 16843296, 16843364, C0859R.attr.closeIcon, C0859R.attr.commitIcon, C0859R.attr.defaultQueryHint, C0859R.attr.goIcon, C0859R.attr.iconifiedByDefault, C0859R.attr.layout, C0859R.attr.queryBackground, C0859R.attr.queryHint, C0859R.attr.searchHintIcon, C0859R.attr.searchIcon, C0859R.attr.submitBackground, C0859R.attr.suggestionRowLayout, C0859R.attr.voiceIcon};
        public static final int SearchView_android_focusable = 0;
        public static final int SearchView_android_imeOptions = 3;
        public static final int SearchView_android_inputType = 2;
        public static final int SearchView_android_maxWidth = 1;
        public static final int SearchView_closeIcon = 4;
        public static final int SearchView_commitIcon = 5;
        public static final int SearchView_defaultQueryHint = 6;
        public static final int SearchView_goIcon = 7;
        public static final int SearchView_iconifiedByDefault = 8;
        public static final int SearchView_layout = 9;
        public static final int SearchView_queryBackground = 10;
        public static final int SearchView_queryHint = 11;
        public static final int SearchView_searchHintIcon = 12;
        public static final int SearchView_searchIcon = 13;
        public static final int SearchView_submitBackground = 14;
        public static final int SearchView_suggestionRowLayout = 15;
        public static final int SearchView_voiceIcon = 16;
        public static final int[] Spinner = new int[]{16842930, 16843126, 16843131, 16843362, C0859R.attr.popupTheme};
        public static final int Spinner_android_dropDownWidth = 3;
        public static final int Spinner_android_entries = 0;
        public static final int Spinner_android_popupBackground = 1;
        public static final int Spinner_android_prompt = 2;
        public static final int Spinner_popupTheme = 4;
        public static final int[] SwitchCompat = new int[]{16843044, 16843045, 16843074, C0859R.attr.showText, C0859R.attr.splitTrack, C0859R.attr.switchMinWidth, C0859R.attr.switchPadding, C0859R.attr.switchTextAppearance, C0859R.attr.thumbTextPadding, C0859R.attr.thumbTint, C0859R.attr.thumbTintMode, C0859R.attr.track, C0859R.attr.trackTint, C0859R.attr.trackTintMode};
        public static final int SwitchCompat_android_textOff = 1;
        public static final int SwitchCompat_android_textOn = 0;
        public static final int SwitchCompat_android_thumb = 2;
        public static final int SwitchCompat_showText = 3;
        public static final int SwitchCompat_splitTrack = 4;
        public static final int SwitchCompat_switchMinWidth = 5;
        public static final int SwitchCompat_switchPadding = 6;
        public static final int SwitchCompat_switchTextAppearance = 7;
        public static final int SwitchCompat_thumbTextPadding = 8;
        public static final int SwitchCompat_thumbTint = 9;
        public static final int SwitchCompat_thumbTintMode = 10;
        public static final int SwitchCompat_track = 11;
        public static final int SwitchCompat_trackTint = 12;
        public static final int SwitchCompat_trackTintMode = 13;
        public static final int[] TextAppearance = new int[]{16842901, 16842902, 16842903, 16842904, 16842906, 16842907, 16843105, 16843106, 16843107, 16843108, 16843692, C0859R.attr.fontFamily, C0859R.attr.textAllCaps};
        public static final int TextAppearance_android_fontFamily = 10;
        public static final int TextAppearance_android_shadowColor = 6;
        public static final int TextAppearance_android_shadowDx = 7;
        public static final int TextAppearance_android_shadowDy = 8;
        public static final int TextAppearance_android_shadowRadius = 9;
        public static final int TextAppearance_android_textColor = 3;
        public static final int TextAppearance_android_textColorHint = 4;
        public static final int TextAppearance_android_textColorLink = 5;
        public static final int TextAppearance_android_textSize = 0;
        public static final int TextAppearance_android_textStyle = 2;
        public static final int TextAppearance_android_typeface = 1;
        public static final int TextAppearance_fontFamily = 11;
        public static final int TextAppearance_textAllCaps = 12;
        public static final int[] Toolbar = new int[]{16842927, 16843072, C0859R.attr.buttonGravity, C0859R.attr.collapseContentDescription, C0859R.attr.collapseIcon, C0859R.attr.contentInsetEnd, C0859R.attr.contentInsetEndWithActions, C0859R.attr.contentInsetLeft, C0859R.attr.contentInsetRight, C0859R.attr.contentInsetStart, C0859R.attr.contentInsetStartWithNavigation, C0859R.attr.logo, C0859R.attr.logoDescription, C0859R.attr.maxButtonHeight, C0859R.attr.navigationContentDescription, C0859R.attr.navigationIcon, C0859R.attr.popupTheme, C0859R.attr.subtitle, C0859R.attr.subtitleTextAppearance, C0859R.attr.subtitleTextColor, C0859R.attr.title, C0859R.attr.titleMargin, C0859R.attr.titleMarginBottom, C0859R.attr.titleMarginEnd, C0859R.attr.titleMarginStart, C0859R.attr.titleMarginTop, C0859R.attr.titleMargins, C0859R.attr.titleTextAppearance, C0859R.attr.titleTextColor};
        public static final int Toolbar_android_gravity = 0;
        public static final int Toolbar_buttonGravity = 2;
        public static final int Toolbar_collapseContentDescription = 3;
        public static final int Toolbar_collapseIcon = 4;
        public static final int Toolbar_contentInsetEnd = 5;
        public static final int Toolbar_contentInsetEndWithActions = 6;
        public static final int Toolbar_contentInsetLeft = 7;
        public static final int Toolbar_contentInsetRight = 8;
        public static final int Toolbar_contentInsetStart = 9;
        public static final int Toolbar_contentInsetStartWithNavigation = 10;
        public static final int Toolbar_logo = 11;
        public static final int Toolbar_logoDescription = 12;
        public static final int Toolbar_maxButtonHeight = 13;
        public static final int Toolbar_navigationContentDescription = 14;
        public static final int Toolbar_navigationIcon = 15;
        public static final int Toolbar_popupTheme = 16;
        public static final int Toolbar_subtitle = 17;
        public static final int Toolbar_subtitleTextAppearance = 18;
        public static final int Toolbar_subtitleTextColor = 19;
        public static final int Toolbar_title = 20;
        public static final int Toolbar_titleMargin = 21;
        public static final int Toolbar_titleMarginBottom = 22;
        public static final int Toolbar_titleMarginEnd = 23;
        public static final int Toolbar_titleMarginStart = 24;
        public static final int Toolbar_titleMarginTop = 25;
        public static final int Toolbar_titleMargins = 26;
        public static final int Toolbar_titleTextAppearance = 27;
        public static final int Toolbar_titleTextColor = 28;
        public static final int[] View = new int[]{16842752, 16842970, C0859R.attr.paddingEnd, C0859R.attr.paddingStart, C0859R.attr.theme};
        public static final int[] ViewBackgroundHelper = new int[]{16842964, C0859R.attr.backgroundTint, C0859R.attr.backgroundTintMode};
        public static final int ViewBackgroundHelper_android_background = 0;
        public static final int ViewBackgroundHelper_backgroundTint = 1;
        public static final int ViewBackgroundHelper_backgroundTintMode = 2;
        public static final int[] ViewStubCompat = new int[]{16842960, 16842994, 16842995};
        public static final int ViewStubCompat_android_id = 0;
        public static final int ViewStubCompat_android_inflatedId = 2;
        public static final int ViewStubCompat_android_layout = 1;
        public static final int View_android_theme = 0;
        public static final int View_theme = 4;
    }

    /* renamed from: android.support.v7.appcompat.R$style */
    public static final class style implements TypeEvaluator {
        public final Object evaluate(float f, Object obj, Object obj2) {
            obj = ((Integer) obj).intValue();
            int i = obj >> 24;
            int i2 = (obj >> 16) & 255;
            int i3 = (obj >> 8) & 255;
            obj &= 255;
            obj2 = ((Integer) obj2).intValue();
            return Integer.valueOf(((((i + ((int) (((float) ((obj2 >> 24) - i)) * f))) << 24) | ((i2 + ((int) (((float) (((obj2 >> 16) & 255) - i2)) * f))) << 16)) | ((i3 + ((int) (((float) (((obj2 >> 8) & 255) - i3)) * f))) << 8)) | (obj + ((int) (f * ((float) ((obj2 & 255) - obj))))));
        }
    }

    public C0219R(Field field) {
        if (field == null) {
            throw new NullPointerException();
        }
        this.field = field;
    }
}
