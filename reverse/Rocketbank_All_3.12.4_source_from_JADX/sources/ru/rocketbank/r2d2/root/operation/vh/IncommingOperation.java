package ru.rocketbank.r2d2.root.operation.vh;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.databinding.LayoutOperationIncommingBinding;
import ru.rocketbank.r2d2.root.operation.OperationContract.Presenter;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: IncommingOperation.kt */
public final class IncommingOperation extends GenericViewHolder implements RequestHandler {
    private final LayoutOperationIncommingBinding binding;
    private final Presenter operationPresenter;

    public IncommingOperation(View view, Presenter presenter) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(presenter, "operationPresenter");
        super(view);
        this.operationPresenter = presenter;
        view = LayoutOperationIncommingBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "LayoutOperationIncommingBinding.bind(itemView)");
        this.binding = view;
        this.binding.setHandler(this);
    }

    public final Presenter getOperationPresenter() {
        return this.operationPresenter;
    }

    public final LayoutOperationIncommingBinding getBinding() {
        return this.binding;
    }

    public final void onConfirm() {
        this.operationPresenter.confirm();
    }

    public final void onCancel() {
        this.operationPresenter.decline();
    }
}
