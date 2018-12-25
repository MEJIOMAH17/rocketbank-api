package ru.rocketbank.r2d2.root.operation.vh;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.databinding.LayoutOperationOutgoingBinding;
import ru.rocketbank.r2d2.root.operation.OperationContract.Presenter;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;

/* compiled from: RequestOperation.kt */
public final class RequestOperation extends GenericViewHolder implements RequestHandler {
    private final LayoutOperationOutgoingBinding binding;
    private final Presenter operationPresenter;

    public final void onConfirm() {
    }

    public RequestOperation(View view, Presenter presenter) {
        Intrinsics.checkParameterIsNotNull(view, "itemView");
        Intrinsics.checkParameterIsNotNull(presenter, "operationPresenter");
        super(view);
        this.operationPresenter = presenter;
        view = LayoutOperationOutgoingBinding.bind(view);
        Intrinsics.checkExpressionValueIsNotNull(view, "LayoutOperationOutgoingBinding.bind(itemView)");
        this.binding = view;
        this.binding.setHandler(this);
    }

    public final Presenter getOperationPresenter() {
        return this.operationPresenter;
    }

    public final LayoutOperationOutgoingBinding getBinding() {
        return this.binding;
    }

    public final void onCancel() {
        this.operationPresenter.cancelOutOperation();
    }
}
