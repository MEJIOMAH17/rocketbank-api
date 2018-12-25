.class final Landroid/databinding/adapters/SearchViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "SearchViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/SearchViewBindingAdapter;->setOnQueryTextListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;

.field final synthetic val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;


# direct methods
.method constructor <init>(Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V
    .locals 0

    .line 47
    iput-object p1, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;->val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;

    iput-object p2, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;->val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 59
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;->val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;->val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;->onQueryTextChange(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;->val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;->val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
