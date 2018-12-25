.class public Landroid/databinding/adapters/SearchViewBindingAdapter;
.super Ljava/lang/Object;
.source "SearchViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onQueryTextFocusChange"
            method = "setOnQueryTextFocusChangeListener"
            type = Landroid/widget/SearchView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onSearchClick"
            method = "setOnSearchClickListener"
            type = Landroid/widget/SearchView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onClose"
            method = "setOnCloseListener"
            type = Landroid/widget/SearchView;
        .end subannotation
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;,
        Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;,
        Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;,
        Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOnQueryTextListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V
    .locals 2
    .annotation build Landroid/databinding/BindingAdapter;
        requireAll = false
        value = {
            "android:onQueryTextSubmit",
            "android:onQueryTextChange"
        }
    .end annotation

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void

    .line 47
    :cond_0
    new-instance v0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/SearchViewBindingAdapter$1;-><init>(Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    :cond_1
    return-void
.end method

.method public static setOnSuggestListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;)V
    .locals 2
    .annotation build Landroid/databinding/BindingAdapter;
        requireAll = false
        value = {
            "android:onSuggestionSelect",
            "android:onSuggestionClick"
        }
    .end annotation

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    return-void

    .line 78
    :cond_0
    new-instance v0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/SearchViewBindingAdapter$2;-><init>(Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;)V

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    :cond_1
    return-void
.end method
