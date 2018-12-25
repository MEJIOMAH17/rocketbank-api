.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "AnalyticsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PagerAdapter"
.end annotation


# instance fields
.field private final fragments:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lru/rocketbank/r2d2/fragments/RocketFragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;Landroid/support/v4/app/FragmentManager;Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lru/rocketbank/r2d2/fragments/RocketFragment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->fragments:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->fragments:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method public final getFragments()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lru/rocketbank/r2d2/fragments/RocketFragment;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->fragments:Ljava/util/SortedMap;

    return-object v0
.end method

.method public final bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->getItem(I)Lru/rocketbank/r2d2/fragments/RocketFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public final getItem(I)Lru/rocketbank/r2d2/fragments/RocketFragment;
    .locals 1

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->fragments:Ljava/util/SortedMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/AbstractList$Companion;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "fragments.toList()[position].second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/r2d2/fragments/RocketFragment;

    return-object p1
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 187
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->fragments:Ljava/util/SortedMap;

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lkotlin/collections/AbstractList$Companion;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "fragments.toList()[position].first"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(frag\u2026toList()[position].first)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public final setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "object"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 177
    check-cast p3, Lru/rocketbank/r2d2/fragments/RocketFragment;

    .line 179
    invoke-virtual {p3}, Lru/rocketbank/r2d2/fragments/RocketFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->access$getCurrentFragment$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;)Lru/rocketbank/r2d2/fragments/RocketFragment;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 180
    move-object p1, p3

    check-cast p1, Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;

    iget-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-static {p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->access$isJointAnalytics$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;)Z

    move-result p2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getJointIds$App_prodRelease()[I

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lru/rocketbank/r2d2/root/analytics/ChangeAnalyticsListener;->onChangeAnalytics(Z[I)V

    .line 183
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$PagerAdapter;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-static {p1, p3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->access$setCurrentFragment$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;Lru/rocketbank/r2d2/fragments/RocketFragment;)V

    return-void
.end method
