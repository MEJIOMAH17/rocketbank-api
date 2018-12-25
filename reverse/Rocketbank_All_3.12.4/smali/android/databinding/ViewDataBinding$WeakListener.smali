.class Landroid/databinding/ViewDataBinding$WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Landroid/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mLocalFieldId:I

.field private final mObservable:Landroid/databinding/ViewDataBinding$ObservableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ViewDataBinding$ObservableReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/databinding/ViewDataBinding;ILandroid/databinding/ViewDataBinding$ObservableReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ViewDataBinding;",
            "I",
            "Landroid/databinding/ViewDataBinding$ObservableReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 1331
    invoke-static {}, Landroid/databinding/ViewDataBinding;->access$700()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1332
    iput p2, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mLocalFieldId:I

    .line 1333
    iput-object p3, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mObservable:Landroid/databinding/ViewDataBinding$ObservableReference;

    return-void
.end method


# virtual methods
.method protected getBinder()Landroid/databinding/ViewDataBinding;
    .locals 1

    .line 1363
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding$WeakListener;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    .line 1365
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding$WeakListener;->unregister()Z

    :cond_0
    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1359
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1337
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mObservable:Landroid/databinding/ViewDataBinding$ObservableReference;

    invoke-interface {v0, p1}, Landroid/databinding/ViewDataBinding$ObservableReference;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1341
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding$WeakListener;->unregister()Z

    .line 1342
    iput-object p1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    .line 1343
    iget-object p1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 1344
    iget-object p1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mObservable:Landroid/databinding/ViewDataBinding$ObservableReference;

    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/databinding/ViewDataBinding$ObservableReference;->addListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unregister()Z
    .locals 2

    .line 1350
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mObservable:Landroid/databinding/ViewDataBinding$ObservableReference;

    iget-object v1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/databinding/ViewDataBinding$ObservableReference;->removeListener(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 1354
    iput-object v1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    return v0
.end method
