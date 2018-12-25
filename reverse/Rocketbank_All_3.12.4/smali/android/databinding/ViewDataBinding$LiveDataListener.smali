.class Landroid/databinding/ViewDataBinding$LiveDataListener;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/databinding/ViewDataBinding$ObservableReference;
.implements Lkotlin/reflect/KParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiveDataListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/databinding/ViewDataBinding$ObservableReference<",
        "Landroid/arch/lifecycle/LiveData<",
        "*>;>;",
        "Lkotlin/reflect/KParameter;"
    }
.end annotation


# instance fields
.field mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field final mListener:Landroid/databinding/ViewDataBinding$WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ViewDataBinding$WeakListener<",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1517
    new-instance v0, Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-direct {v0, p1, p2, p0}, Landroid/databinding/ViewDataBinding$WeakListener;-><init>(Landroid/databinding/ViewDataBinding;ILandroid/databinding/ViewDataBinding$ObservableReference;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/arch/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 1542
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0, p0}, Landroid/arch/lifecycle/LiveData;->observe$93d9698(Landroid/arch/lifecycle/LifecycleOwner;Lkotlin/reflect/KParameter;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0

    .line 1511
    check-cast p1, Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$LiveDataListener;->addListener(Landroid/arch/lifecycle/LiveData;)V

    return-void
.end method

.method public getListener()Landroid/databinding/ViewDataBinding$WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ViewDataBinding$WeakListener<",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation

    .line 1537
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    return-object v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1554
    iget-object p1, p0, Landroid/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {p1}, Landroid/databinding/ViewDataBinding$WeakListener;->getBinder()Landroid/databinding/ViewDataBinding;

    move-result-object p1

    .line 1555
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    iget v0, v0, Landroid/databinding/ViewDataBinding$WeakListener;->mLocalFieldId:I

    iget-object v1, p0, Landroid/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v1}, Landroid/databinding/ViewDataBinding$WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/databinding/ViewDataBinding;->access$800(Landroid/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    return-void
.end method

.method public removeListener(Landroid/arch/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    .line 1549
    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver$4691b048(Lkotlin/reflect/KParameter;)V

    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 1511
    check-cast p1, Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$LiveDataListener;->removeListener(Landroid/arch/lifecycle/LiveData;)V

    return-void
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 1523
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding$WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData;

    if-eqz v0, :cond_1

    .line 1525
    iget-object v1, p0, Landroid/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_0

    .line 1526
    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver$4691b048(Lkotlin/reflect/KParameter;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1529
    invoke-virtual {v0, p1, p0}, Landroid/arch/lifecycle/LiveData;->observe$93d9698(Landroid/arch/lifecycle/LifecycleOwner;Lkotlin/reflect/KParameter;)V

    .line 1532
    :cond_1
    iput-object p1, p0, Landroid/databinding/ViewDataBinding$LiveDataListener;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    return-void
.end method
