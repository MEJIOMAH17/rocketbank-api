.class final Landroid/databinding/adapters/ViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "ViewBindingAdapter.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/ViewBindingAdapter;->setOnAttachStateChangeListener(Landroid/view/View;Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attach:Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;

.field final synthetic val$detach:Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;


# direct methods
.method constructor <init>(Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;)V
    .locals 0

    .line 171
    iput-object p1, p0, Landroid/databinding/adapters/ViewBindingAdapter$1;->val$attach:Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;

    iput-object p2, p0, Landroid/databinding/adapters/ViewBindingAdapter$1;->val$detach:Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 174
    iget-object v0, p0, Landroid/databinding/adapters/ViewBindingAdapter$1;->val$attach:Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/databinding/adapters/ViewBindingAdapter$1;->val$attach:Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/databinding/adapters/ViewBindingAdapter$1;->val$detach:Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/databinding/adapters/ViewBindingAdapter$1;->val$detach:Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method
