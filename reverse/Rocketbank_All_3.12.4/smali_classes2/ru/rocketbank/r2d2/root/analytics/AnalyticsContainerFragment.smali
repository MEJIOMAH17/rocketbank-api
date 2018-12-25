.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "AnalyticsContainerFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment$Companion;

.field private static final FRAGMENT_MONTHS_TAG:Ljava/lang/String; = "AnalyticsSummaryFragment"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFRAGMENT_MONTHS_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->FRAGMENT_MONTHS_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final canBack()Z
    .locals 2

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getJointIds()[I
    .locals 2

    .line 12
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.root.analytics.ChangeAnalyticsListener"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;

    invoke-interface {v0}, Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;->getJointIds()[I

    move-result-object v0

    return-object v0
.end method

.method public final onBackPressed()Z
    .locals 2

    .line 44
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->canBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->canBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lru/rocketbank/r2d2/Utils;->setActionBarUpIndicatorBack(Landroid/app/Activity;)V

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lru/rocketbank/r2d2/Utils;->setActionBarUpIndicatorNavigationDrawer(Landroid/app/Activity;)V

    :goto_1
    return v0
.end method

.method public final onChangeAnalytics(Z[I)V
    .locals 2

    .line 16
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090185

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;->onChangeAnalytics(Z[I)V

    return-void

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0c00c3

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p3, :cond_0

    .line 23
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;

    invoke-direct {p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsSummaryFragment;-><init>()V

    .line 25
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p3

    const v0, 0x7f090185

    .line 26
    check-cast p2, Landroid/support/v4/app/Fragment;

    sget-object v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->FRAGMENT_MONTHS_TAG:Ljava/lang/String;

    invoke-virtual {p3, v0, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsContainerFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
