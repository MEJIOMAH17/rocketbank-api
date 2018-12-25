.class public final Lru/rocketbank/r2d2/fragments/InfoFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "InfoFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/ActionBarTitleInstaller;
.implements Lru/rocketbank/r2d2/IHostFragment;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private linearLayoutMenu:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method private final setInfo(Lru/rocketbank/core/model/UserModel;)V
    .locals 5

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InfoFragment;->linearLayoutMenu:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getInfo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/UserModel$Info;

    .line 60
    new-instance v3, Lru/rocketbank/core/model/UserModel$Info;

    invoke-direct {v3}, Lru/rocketbank/core/model/UserModel$Info;-><init>()V

    const-string v4, "info"

    .line 61
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/UserModel$Info;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lru/rocketbank/core/model/UserModel$Info;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v2}, Lru/rocketbank/core/model/UserModel$Info;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lru/rocketbank/core/model/UserModel$Info;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getInfo()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/UserModel$Info;

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0116

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/InfoFragment;->linearLayoutMenu:Landroid/widget/LinearLayout;

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    new-instance v2, Lru/rocketbank/r2d2/fragments/InfoFragment$setInfo$1;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/fragments/InfoFragment$setInfo$1;-><init>(Lru/rocketbank/r2d2/fragments/InfoFragment;Lru/rocketbank/core/model/UserModel$Info;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901ea

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast v2, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v3, "info"

    .line 70
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel$Info;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InfoFragment;->linearLayoutMenu:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/InfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/InfoFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final canBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final canShowMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getActionBarTitle()Ljava/lang/String;
    .locals 2

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/InfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1101be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.fragment_info_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final moveBack()V
    .locals 0

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c00dd

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/InfoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 1

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 52
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/InfoFragment;->setInfo(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090220

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/InfoFragment;->linearLayoutMenu:Landroid/widget/LinearLayout;

    const p2, 0x7f0903d8

    .line 47
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/InfoFragment;->setupDefaultToolbar(Landroid/view/View;I)I

    return-void
.end method
