.class public final Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;
.super Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;
.source "AccountWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widget/AccountWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmallAccountChooseFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private amountTextView:Lru/rocketbank/core/widgets/RocketAutofitTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->Companion:Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final highlightAmount(I)V
    .locals 2

    .line 171
    iget-object v0, p0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->amountTextView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketAutofitTextView;->setTextColor(I)V

    return-void

    :cond_1
    return-void
.end method

.method public final inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lru/rocketbank/r2d2/root/transfer/SmallAccountData;)Landroid/databinding/ViewDataBinding;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smallAccountData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 152
    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;

    move-result-object p1

    const-string p2, "binding"

    .line 153
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;->setData(Lru/rocketbank/r2d2/root/transfer/SmallAccountData;)V

    .line 154
    check-cast p1, Landroid/databinding/ViewDataBinding;

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09004d

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketAutofitTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/core/widgets/RocketAutofitTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widget/AccountWidget$SmallAccountChooseFragment;->amountTextView:Lru/rocketbank/core/widgets/RocketAutofitTextView;

    return-void
.end method
