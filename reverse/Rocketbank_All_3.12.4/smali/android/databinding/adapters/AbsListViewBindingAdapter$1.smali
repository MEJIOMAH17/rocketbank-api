.class final Landroid/databinding/adapters/AbsListViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "AbsListViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/AbsListViewBindingAdapter;->setOnScroll(Landroid/widget/AbsListView;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$scrollListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

.field final synthetic val$scrollStateListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;


# direct methods
.method constructor <init>(Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;)V
    .locals 0

    .line 41
    iput-object p1, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollStateListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;

    iput-object p2, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 52
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

    .line 54
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 44
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollStateListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollStateListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;

    invoke-interface {v0, p1, p2}, Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
