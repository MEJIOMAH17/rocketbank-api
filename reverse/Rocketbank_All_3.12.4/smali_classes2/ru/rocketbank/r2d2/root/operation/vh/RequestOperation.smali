.class public final Lru/rocketbank/r2d2/root/operation/vh/RequestOperation;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "RequestOperation.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/LayoutOperationOutgoingBinding;

.field private final operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;


# direct methods
.method public constructor <init>(Landroid/view/View;Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationPresenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/operation/vh/RequestOperation;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    .line 16
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/LayoutOperationOutgoingBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutOperationOutgoingBinding;

    move-result-object p1

    const-string p2, "LayoutOperationOutgoingBinding.bind(itemView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/RequestOperation;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationOutgoingBinding;

    .line 17
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/RequestOperation;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationOutgoingBinding;

    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationOutgoingBinding;->setHandler(Lru/rocketbank/r2d2/root/operation/vh/RequestHandler;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lru/rocketbank/r2d2/databinding/LayoutOperationOutgoingBinding;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/RequestOperation;->binding:Lru/rocketbank/r2d2/databinding/LayoutOperationOutgoingBinding;

    return-object v0
.end method

.method public final getOperationPresenter()Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/RequestOperation;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    return-object v0
.end method

.method public final onCancel()V
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/RequestOperation;->operationPresenter:Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/operation/OperationContract$Presenter;->cancelOutOperation()V

    return-void
.end method

.method public final onConfirm()V
    .locals 0

    return-void
.end method
