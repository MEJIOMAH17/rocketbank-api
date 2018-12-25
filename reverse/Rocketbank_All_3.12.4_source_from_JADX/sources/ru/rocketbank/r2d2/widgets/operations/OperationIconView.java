package ru.rocketbank.r2d2.widgets.operations;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import de.hdodenhof.circleimageview.CircleImageView;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.card.LinkedCard;
import ru.rocketbank.core.model.dto.operations.Friend;
import ru.rocketbank.core.model.dto.operations.Merchant;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.network.model.operation.OperationContextType;
import ru.rocketbank.core.utils.CategoryMappingUtil;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.root.feed.viewholder.OperationViewHolder;
import ru.rocketbank.r2d2.widgets.OperationsUtils;

/* compiled from: OperationIconView.kt */
public final class OperationIconView extends FrameLayout {
    public static final Companion Companion = new Companion();
    private static final int STATUS_IN = 437;
    private static final int STATUS_NONE = 0;
    private static final int STATUS_OUT = 368;
    private HashMap _$_findViewCache;
    public TextView categoryGlymphView;
    public CircleImageView image;
    public TextView operationIconTextView;
    public ImageView statusImageView;

    /* compiled from: OperationIconView.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OperationContextType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[OperationContextType.InternalCashIn.ordinal()] = 1;
            $EnumSwitchMapping$0[OperationContextType.TransferCashIn.ordinal()] = 2;
            $EnumSwitchMapping$0[OperationContextType.Card2CardCashIn.ordinal()] = 3;
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

    public final CircleImageView getImage() {
        CircleImageView circleImageView = this.image;
        if (circleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        return circleImageView;
    }

    public final void setImage(CircleImageView circleImageView) {
        Intrinsics.checkParameterIsNotNull(circleImageView, "<set-?>");
        this.image = circleImageView;
    }

    public final TextView getOperationIconTextView() {
        TextView textView = this.operationIconTextView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationIconTextView");
        }
        return textView;
    }

    public final void setOperationIconTextView(TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.operationIconTextView = textView;
    }

    public final ImageView getStatusImageView() {
        ImageView imageView = this.statusImageView;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("statusImageView");
        }
        return imageView;
    }

    public final void setStatusImageView(ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
        this.statusImageView = imageView;
    }

    public final TextView getCategoryGlymphView() {
        TextView textView = this.categoryGlymphView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("categoryGlymphView");
        }
        return textView;
    }

    public final void setCategoryGlymphView(TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.categoryGlymphView = textView;
    }

    public OperationIconView(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        init(context);
    }

    public OperationIconView(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        init(context);
    }

    public OperationIconView(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        init(context);
    }

    @TargetApi(21)
    public OperationIconView(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i, i2);
        init(context);
    }

    private final void init(Context context) {
        context = LayoutInflater.from(context).inflate(C0859R.layout.view_operation_icon, this, true);
        View findViewById = context.findViewById(C0859R.id.roundImage);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type de.hdodenhof.circleimageview.CircleImageView");
        }
        this.image = (CircleImageView) findViewById;
        findViewById = context.findViewById(C0859R.id.operationIconText);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.operationIconTextView = (TextView) findViewById;
        findViewById = context.findViewById(C0859R.id.statusImage);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
        }
        this.statusImageView = (ImageView) findViewById;
        context = context.findViewById(C0859R.id.categoryGlymph);
        if (context == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.categoryGlymphView = (TextView) context;
    }

    public final void setOperation(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        if (operation.isRocketRubleOperation()) {
            setRocketRubleOperation(operation);
        } else {
            setMoneyOperation(operation);
        }
    }

    private final View setMoneyOperation(Operation operation) {
        Friend friend = operation.getFriend();
        TextView textView = this.operationIconTextView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationIconTextView");
        }
        textView.setVisibility(4);
        textView = this.categoryGlymphView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("categoryGlymphView");
        }
        textView.setVisibility(4);
        setImage(null);
        setStatusIcon(OperationViewHolder.Companion.getSTATUS_NONE());
        if (friend == null) {
            switch (WhenMappings.$EnumSwitchMapping$0[operation.getContextType().ordinal()]) {
                case 1:
                    setCashIn(operation);
                    break;
                case 2:
                    setTransferCashIn(operation);
                    break;
                case 3:
                    setCard(operation);
                    break;
                default:
                    setOtherOperation(operation);
                    break;
            }
        }
        setFriendView(operation, friend);
        return this;
    }

    public final void setCard(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        LinkedCard linkedCard = operation.getLinkedCard();
        if (linkedCard == null || TextUtils.isEmpty(linkedCard.getFeedIconUrl())) {
            operation = operation.getCategory();
            if (operation == null) {
                Intrinsics.throwNpe();
            }
            setCategoryGlymph(operation.getId());
            return;
        }
        operation = this.image;
        if (operation == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        operation = Glide.with(operation.getContext()).load(linkedCard.getFeedIconUrl()).diskCacheStrategy(DiskCacheStrategy.ALL);
        CircleImageView circleImageView = this.image;
        if (circleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        operation.into(circleImageView);
    }

    public final void setOtherOperation(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        Merchant merchant = operation.getMerchant();
        TextView textView = this.operationIconTextView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationIconTextView");
        }
        textView.setVisibility(8);
        if (merchant == null || TextUtils.isEmpty(merchant.getIcon())) {
            operation = operation.getCategory();
            if (operation != null) {
                setCategoryGlymph(operation.getId());
                return;
            }
            return;
        }
        CircleImageView circleImageView = this.image;
        if (circleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        RequestManager with = Glide.with(circleImageView.getContext());
        operation = operation.getMerchant();
        if (operation == null) {
            Intrinsics.throwNpe();
        }
        operation = with.load(operation.getIcon()).diskCacheStrategy(DiskCacheStrategy.ALL);
        circleImageView = this.image;
        if (circleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        operation.into(circleImageView);
    }

    public final void setTransferCashIn(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        Merchant merchant = operation.getMerchant();
        if (merchant == null || TextUtils.isEmpty(merchant.getIcon())) {
            operation = operation.getDisplayMoney();
            if (operation == null) {
                Intrinsics.throwNpe();
            }
            operation = operation.getCurrencyCode();
            OperationsUtils operationsUtils = OperationsUtils.INSTANCE;
            Context context = getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            Intrinsics.checkExpressionValueIsNotNull(operation, "currencyCode");
            setBackgroundWithText(operation, operationsUtils.colorFromCurrency(context, operation), true);
            return;
        }
        CircleImageView circleImageView = this.image;
        if (circleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        RequestManager with = Glide.with(circleImageView.getContext());
        operation = operation.getMerchant();
        operation = with.load(operation != null ? operation.getIcon() : null).diskCacheStrategy(DiskCacheStrategy.ALL);
        circleImageView = this.image;
        if (circleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        operation.into(circleImageView);
    }

    public final void setCashIn(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        Merchant merchant = operation.getMerchant();
        if (merchant == null || TextUtils.isEmpty(merchant.getIcon())) {
            operation = operation.getDisplayMoney();
            if (operation == null) {
                Intrinsics.throwNpe();
            }
            operation = operation.getCurrencyCode();
            OperationsUtils operationsUtils = OperationsUtils.INSTANCE;
            Context context = getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            Intrinsics.checkExpressionValueIsNotNull(operation, "currencyCode");
            setBackgroundWithText(operation, operationsUtils.colorFromCurrency(context, operation), true);
            return;
        }
        CircleImageView circleImageView = this.image;
        if (circleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        RequestManager with = Glide.with(circleImageView.getContext());
        operation = operation.getMerchant();
        if (operation == null) {
            Intrinsics.throwNpe();
        }
        operation = with.load(operation.getIcon()).diskCacheStrategy(DiskCacheStrategy.ALL);
        circleImageView = this.image;
        if (circleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        operation.into(circleImageView);
    }

    public final void setStatusIcon(int i) {
        if (i == STATUS_NONE) {
            i = this.statusImageView;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("statusImageView");
            }
            i.setVisibility(4);
            i = this.statusImageView;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("statusImageView");
            }
            i.setImageDrawable(null);
        } else if (i == STATUS_IN) {
            i = this.statusImageView;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("statusImageView");
            }
            i.setVisibility(0);
            i = this.statusImageView;
            if (i == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("statusImageView");
            }
            i.setImageResource(C0859R.drawable.ic_badge_in);
        } else {
            if (i == STATUS_OUT) {
                i = this.statusImageView;
                if (i == 0) {
                    Intrinsics.throwUninitializedPropertyAccessException("statusImageView");
                }
                i.setVisibility(0);
                i = this.statusImageView;
                if (i == 0) {
                    Intrinsics.throwUninitializedPropertyAccessException("statusImageView");
                }
                i.setImageResource(C0859R.drawable.ic_badge_out);
            }
        }
    }

    private final void setCategoryGlymph(long j) {
        TextView textView = this.categoryGlymphView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("categoryGlymphView");
        }
        textView.setVisibility(0);
        textView = this.operationIconTextView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationIconTextView");
        }
        textView.setVisibility(8);
        j = CategoryMappingUtil.INSTANCE.getCategory(j);
        TextView textView2 = this.categoryGlymphView;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("categoryGlymphView");
        }
        textView2.setText(String.valueOf(((Character) j.getSecond()).charValue()));
        CircleImageView circleImageView = this.image;
        if (circleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        OperationsUtils operationsUtils = OperationsUtils.INSTANCE;
        j = j.getFirst();
        if (j == null) {
            Intrinsics.throwNpe();
        }
        circleImageView.setImageDrawable(operationsUtils.getColorDrawable(((Number) j).intValue()));
    }

    private final void setBackgroundWithText(String str, int i, boolean z) {
        TextView textView = this.categoryGlymphView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("categoryGlymphView");
        }
        textView.setVisibility(4);
        textView = this.operationIconTextView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationIconTextView");
        }
        textView.setVisibility(0);
        textView = this.operationIconTextView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationIconTextView");
        }
        textView.setText(str);
        str = this.image;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        str.setImageDrawable(OperationsUtils.INSTANCE.getColorDrawable(i));
        setStatusIcon(z ? OperationViewHolder.Companion.getSTATUS_IN() : OperationViewHolder.Companion.getSTATUS_OUT());
    }

    private final void setFriendView(Operation operation, Friend friend) {
        String userpicUrl = friend.getUserpicUrl();
        if (userpicUrl != null) {
            setImage(userpicUrl);
            return;
        }
        friend = operation.getFriend();
        if (friend != null) {
            friend = friend.getInitials();
            if (friend != null) {
                OperationsUtils operationsUtils = OperationsUtils.INSTANCE;
                Context context = getContext();
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                operation = operation.getDisplayMoney();
                if (operation == null) {
                    Intrinsics.throwNpe();
                }
                operation = operation.getCurrencyCode();
                Intrinsics.checkExpressionValueIsNotNull(operation, "operation.displayMoney!!.currencyCode");
                setBackgroundWithText(friend, operationsUtils.colorFromCurrency(context, operation), true);
            }
        }
    }

    public final void setImage(String str) {
        if (str == null) {
            str = this.image;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("image");
            }
            Glide.clear((View) str);
            return;
        }
        TextView textView = this.categoryGlymphView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("categoryGlymphView");
        }
        textView.setVisibility(8);
        CircleImageView circleImageView = this.image;
        if (circleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        int dimensionPixelSize = circleImageView.getResources().getDimensionPixelSize(C0859R.dimen.feed_operation_image_size);
        CircleImageView circleImageView2 = this.image;
        if (circleImageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        str = Glide.with(circleImageView2.getContext()).load(str).diskCacheStrategy(DiskCacheStrategy.ALL).override(dimensionPixelSize, dimensionPixelSize).centerCrop().crossFade();
        circleImageView = this.image;
        if (circleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("image");
        }
        str.into(circleImageView);
    }

    public final View setRocketRubleOperation(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        Merchant merchant = operation.getMerchant();
        TextView textView = this.operationIconTextView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("operationIconTextView");
        }
        textView.setVisibility(4);
        textView = this.categoryGlymphView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("categoryGlymphView");
        }
        textView.setVisibility(4);
        setImage(null);
        setStatusIcon(OperationViewHolder.Companion.getSTATUS_NONE());
        if (merchant != null && !TextUtils.isEmpty(merchant.getIcon())) {
            CircleImageView circleImageView = this.image;
            if (circleImageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("image");
            }
            RequestManager with = Glide.with(circleImageView.getContext());
            operation = operation.getMerchant();
            if (operation == null) {
                Intrinsics.throwNpe();
            }
            operation = with.load(operation.getIcon()).diskCacheStrategy(DiskCacheStrategy.ALL);
            circleImageView = this.image;
            if (circleImageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("image");
            }
            operation.into(circleImageView);
        } else if (operation.getCategory() != null) {
            operation = operation.getCategory();
            if (operation == null) {
                Intrinsics.throwNpe();
            }
            setCategoryGlymph(operation.getId());
        }
        return this;
    }
}
