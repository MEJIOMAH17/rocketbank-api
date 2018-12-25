package ru.rocketbank.r2d2.root.operation.vh;

import android.databinding.ObservableField;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.CardView;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import me.zhanghai.android.materialprogressbar.IndeterminateProgressDrawable;
import ru.rocketbank.core.model.dto.operations.Operation;
import ru.rocketbank.core.model.dto.operations.OperationCategory;
import ru.rocketbank.core.utils.CategoryMappingUtil;
import ru.rocketbank.core.widgets.RocketIconView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.databinding.LayoutOperationCategoryBinding;
import ru.rocketbank.r2d2.friends.HashTagEditText;
import ru.rocketbank.r2d2.root.operation.OperationContract.Presenter;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: CommentViewHolder.kt */
public final class CommentViewHolder extends GenericViewHolder implements TagActions {
    private final LayoutOperationCategoryBinding binding;
    private final Presenter operationPresenter;
    private final TagState tagState = new TagState();
    private final TextListner textWatcher = new TextListner();
    private final CommonOperationData viewData;

    /* compiled from: CommentViewHolder.kt */
    public final class TextListner implements TextWatcher {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            CommentViewHolder.this.getViewData().setLastComment(charSequence != null ? charSequence.toString() : null);
            CommentViewHolder.this.handleTextChange();
        }
    }

    public CommentViewHolder(View view, CommonOperationData commonOperationData, Presenter presenter) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(commonOperationData, "viewData");
        Intrinsics.checkParameterIsNotNull(presenter, "operationPresenter");
        super(view);
        this.viewData = commonOperationData;
        this.operationPresenter = presenter;
        commonOperationData = LayoutOperationCategoryBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(commonOperationData, "LayoutOperationCategoryBinding.bind(itemView)");
        this.binding = commonOperationData;
        this.binding.setHandler(this);
        this.binding.setData(this.tagState);
        this.binding.setState(this.viewData);
        final CommentViewHolder commentViewHolder = this;
        presenter = this.binding.comment;
        presenter.setOnClickListener(new OnClickListener() {
            public final void onClick(View view) {
                this.getOperationPresenter().scrollToPosition(commentViewHolder.getAdapterPosition());
            }
        });
        presenter.setOnFocusChangeListener(new OnFocusChangeListener() {
            public final void onFocusChange(View view, boolean z) {
                if (z) {
                    this.getOperationPresenter().scrollToPosition(commentViewHolder.getAdapterPosition());
                }
            }
        });
        commonOperationData = new IndeterminateProgressDrawable(view.getContext());
        commonOperationData.setTint(ContextCompat.getColor(view.getContext(), C0859R.color.orange));
        view = this.binding.indeterminateProgress;
        Intrinsics.checkExpressionValueIsNotNull(view, "binding.indeterminateProgress");
        view.setIndeterminateDrawable((Drawable) commonOperationData);
    }

    public final Presenter getOperationPresenter() {
        return this.operationPresenter;
    }

    public final CommonOperationData getViewData() {
        return this.viewData;
    }

    public final void onBind() {
        ParallaxItem item = getItem();
        Operation operation = (Operation) (item != null ? item.getPayload() : null);
        if (operation != null) {
            RocketIconView rocketIconView = this.binding.icon;
            OperationCategory category = operation.getCategory();
            if (category == null) {
                Intrinsics.throwNpe();
            }
            Pair category2 = CategoryMappingUtil.INSTANCE.getCategory(category.getId());
            rocketIconView.setTextColor(((Number) category2.getFirst()).intValue());
            rocketIconView.setText(String.valueOf(((Character) category2.getSecond()).charValue()));
            ObservableField categoryName = this.tagState.getCategoryName();
            category = operation.getCategory();
            if (category == null) {
                Intrinsics.throwNpe();
            }
            categoryName.set(category.getDisplayName());
            restoreTextInput(operation);
        }
    }

    public final void onSave() {
        HashTagEditText hashTagEditText = this.binding.comment;
        Intrinsics.checkExpressionValueIsNotNull(hashTagEditText, "comment");
        this.operationPresenter.saveOperationComment(hashTagEditText.getText().toString());
        this.operationPresenter.hideKeyboard();
        handleTextChange();
        this.viewData.getUpdateInProgress().set(true);
    }

    public final void onCancel() {
        String str = null;
        this.viewData.setLastComment(null);
        ParallaxItem item = getItem();
        if (item != null) {
            str = item.getPayload();
        }
        Operation operation = (Operation) str;
        if (operation != null) {
            restoreTextInput(operation);
        }
        this.viewData.getSaveActionsActive().set(false);
        this.operationPresenter.hideKeyboard();
    }

    public final void restoreTextInput(Operation operation) {
        Intrinsics.checkParameterIsNotNull(operation, "operation");
        operation = this.binding.comment;
        operation.removeTextChangedListener(this.textWatcher);
        String lastComment = this.viewData.getLastComment();
        if (lastComment == null) {
            lastComment = this.viewData.getCurrentComment();
        }
        operation.setText(lastComment);
        operation.addTextChangedListener(this.textWatcher);
        handleTextChange();
    }

    public final void handleTextChange() {
        CardView cardView = this.binding.card;
        ParallaxItem item = getItem();
        if (((Operation) (item != null ? item.getPayload() : null)) != null) {
            String lastComment = this.viewData.getLastComment();
            View view;
            if (lastComment != null ? lastComment.equals(this.viewData.getCurrentComment()) : true) {
                this.viewData.getSaveActionsActive().set(false);
                Intrinsics.checkExpressionValueIsNotNull(cardView, "card");
                view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                cardView.setCardElevation((float) Utils.dpToPx(view.getContext(), 2));
            } else {
                this.viewData.getSaveActionsActive().set(true);
                Intrinsics.checkExpressionValueIsNotNull(cardView, "card");
                view = this.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
                cardView.setCardElevation((float) Utils.dpToPx(view.getContext(), 8));
            }
        }
    }
}
