.class public final Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;
.super Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;
.source "AnalyticsGroupFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/analytics/OnCategorySelectedListener;
.implements Lru/rocketbank/r2d2/root/analytics/OnMerchantSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment<",
        "Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;",
        ">;",
        "Lru/rocketbank/r2d2/root/analytics/OnCategorySelectedListener;",
        "Lru/rocketbank/r2d2/root/analytics/OnMerchantSelectedListener;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final KEY_CATEGORY_ID:Ljava/lang/String; = "KEY_CATEGORY_ID"

.field public static final KEY_COLOR:Ljava/lang/String; = "KEY_COLOR"

.field public static final KEY_GROUP_ID:Ljava/lang/String; = "KEY_GROUP_ID"

.field public static final KEY_ICON:Ljava/lang/String; = "KEY_ICON"

.field public static final KEY_INDEX:Ljava/lang/String; = "KEY_INDEX"

.field public static final KEY_NAME:Ljava/lang/String; = "KEY_NAME"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private categoryId:Ljava/lang/Long;

.field private color:I

.field private groupId:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private index:I

.field private name:Ljava/lang/String;

.field private subscription:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;

    .line 153
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru-RU"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDATE_FORMAT$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 17
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static final synthetic access$getIndex$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;)I
    .locals 0

    .line 17
    iget p0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->index:I

    return p0
.end method

.method public static final synthetic access$setIndex$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;I)V
    .locals 0

    .line 17
    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->index:I

    return-void
.end method

.method private final hasCategories(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Z
    .locals 1

    .line 110
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getCategories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getCategories()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final hasMerchants(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Z
    .locals 1

    .line 108
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getMerchants()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getMerchants()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic hasData(Landroid/os/Parcelable;)Z
    .locals 0

    .line 17
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->hasData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Z

    move-result p1

    return p1
.end method

.method protected final hasData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Z
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->hasCategories(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->hasMerchants(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getTotal()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onCategorySelected(JILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object p5, Lru/rocketbank/core/utils/CategoryMappingUtil;->INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

    invoke-virtual {p5, p1, p2}, Lru/rocketbank/core/utils/CategoryMappingUtil;->getCategory(J)Lkotlin/Pair;

    move-result-object p5

    invoke-virtual {p5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 125
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->groupId:Ljava/lang/String;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getCurrentDateTime()Ljava/util/Calendar;

    move-result-object v4

    move v2, p3

    move-object v3, p4

    move-wide v6, p1

    invoke-static/range {v0 .. v7}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;->access$createArguments(Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$Companion;Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;IJ)Landroid/os/Bundle;

    move-result-object p1

    .line 126
    new-instance p2, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;

    invoke-direct {p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;-><init>()V

    .line 127
    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->setArguments(Landroid/os/Bundle;)V

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p3, 0x7f090185

    .line 130
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 131
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lru/rocketbank/r2d2/Utils;->setActionBarUpIndicatorBack(Landroid/app/Activity;)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getLocalEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 116
    invoke-static {p0, p1, v0, v1, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->processData$default(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Landroid/os/Parcelable;Ljava/util/Calendar;ILjava/lang/Object;)V

    return-void
.end method

.method public final onMerchantSelected(Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;)V
    .locals 2

    const-string v0, "merchants"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->Companion:Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getCurrentDateTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment$Companion;->createArguments(Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;Ljava/util/Calendar;)Landroid/os/Bundle;

    move-result-object p1

    .line 140
    new-instance v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;-><init>()V

    .line 141
    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMerchantFragment;->setArguments(Landroid/os/Bundle;)V

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f090185

    .line 144
    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->subscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->unsubscribe(Lrx/Subscription;)V

    .line 59
    invoke-super {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onPause()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_GROUP_ID"

    .line 50
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_CATEGORY_ID"

    .line 51
    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->categoryId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    .line 37
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 38
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string p1, "KEY_GROUP_ID"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->groupId:Ljava/lang/String;

    const-string p1, "KEY_CATEGORY_ID"

    const-wide/16 v0, 0x0

    .line 39
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->categoryId:Ljava/lang/Long;

    const-string p1, "KEY_INDEX"

    .line 41
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->index:I

    const-string p1, "KEY_NAME"

    .line 42
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->name:Ljava/lang/String;

    const-string p1, "KEY_ICON"

    .line 43
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->icon:Ljava/lang/String;

    const-string p1, "KEY_COLOR"

    .line 44
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->color:I

    return-void
.end method

.method public final bridge synthetic processData(Landroid/os/Parcelable;Ljava/util/Calendar;)V
    .locals 0

    .line 17
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->processData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;Ljava/util/Calendar;)V

    return-void
.end method

.method protected final processData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;Ljava/util/Calendar;)V
    .locals 0

    const-string p2, "data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    move-object p2, p1

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getFirstOperationDate()Ljava/util/Calendar;

    move-result-object p1

    invoke-super {p0, p2, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->processData(Landroid/os/Parcelable;Ljava/util/Calendar;)V

    return-void
.end method

.method public final request(Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)",
            "Lrx/Observable<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;",
            ">;"
        }
    .end annotation

    const-string v0, "dateFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateTo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getAnalyticsApi()Lru/rocketbank/core/network/api/AnalyticsApi;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->groupId:Ljava/lang/String;

    iget-object v3, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->categoryId:Ljava/lang/Long;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lru/rocketbank/core/network/api/AnalyticsApi;->analytics(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;[I)Lrx/Observable;

    move-result-object p1

    const-string p2, "analyticsApi.analytics(g\u2026teFrom, dateTo, jointIds)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final bridge synthetic showData(Landroid/os/Parcelable;)V
    .locals 0

    .line 17
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->showData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V

    return-void
.end method

.method protected final showData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const-string v1, "data"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$onCategorySelectedListener$1;

    invoke-direct {v1, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$onCategorySelectedListener$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;)V

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function4;

    .line 64
    invoke-direct/range {p0 .. p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->hasCategories(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Z

    move-result v1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getItemChart()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v13, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, v13

    move-object v2, v9

    move-object v3, v10

    invoke-direct/range {v1 .. v8}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;-><init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function1;Ljava/util/List;ILkotlin/jvm/internal/Ref;)V

    goto :goto_0

    :cond_0
    move-object v13, v1

    .line 66
    :goto_0
    invoke-virtual {v13, v9}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->setData(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V

    .line 67
    invoke-virtual {v13, v10}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;->setOnCategorySelectedListener(Lkotlin/jvm/functions/Function4;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getItemChart()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;

    move-result-object v1

    if-nez v1, :cond_1

    .line 69
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0, v13}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->setItemChart(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;)V

    .line 72
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;

    .line 73
    sget-object v3, Lru/rocketbank/core/utils/CategoryMappingUtil;->INSTANCE:Lru/rocketbank/core/utils/CategoryMappingUtil;

    const-string v4, "category"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lru/rocketbank/core/utils/CategoryMappingUtil;->getCategory(J)Lkotlin/Pair;

    move-result-object v3

    .line 74
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getList()Ljava/util/List;

    move-result-object v4

    new-instance v13, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;

    .line 75
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v5, "category.name"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 77
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;->getAmount()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v0, v5, v12, v11, v12}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->format$default(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Ljava/lang/Double;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 78
    new-instance v5, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$1;

    invoke-direct {v5, v0, v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$1;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;)V

    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 79
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    move-object v5, v13

    .line 74
    invoke-direct/range {v5 .. v10}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_2
    invoke-direct/range {p0 .. p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->hasMerchants(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 82
    invoke-virtual {v0, v12}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->setItemChart(Lru/rocketbank/r2d2/root/analytics/AnalyticsItemChart;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;

    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->icon:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    iget v4, v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->color:I

    iget-object v5, v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->name:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string v5, ""

    :cond_4
    invoke-direct {v2, v3, v4, v5}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemSection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getHeaderSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->setHeaderSize(I)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getMerchants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;

    .line 86
    iget-object v3, v0, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->categoryId:Ljava/lang/Long;

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_8

    .line 87
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;

    const-string v5, "merchant"

    .line 88
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v5, ""

    :cond_6
    move-object v14, v5

    const/4 v15, 0x0

    .line 89
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->getAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v0, v5, v12, v11, v12}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->format$default(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Ljava/lang/Double;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 90
    sget-object v5, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$2;->INSTANCE:Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$2;

    move-object/from16 v19, v5

    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 91
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->getUserpicUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, ""

    :cond_7
    move-object/from16 v16, v2

    const/16 v18, 0x0

    const/16 v20, 0x12

    const/16 v21, 0x0

    move-object v13, v4

    .line 87
    invoke-direct/range {v13 .. v21}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemMerchantOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 93
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;

    const-string v5, "merchant"

    .line 94
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    const-string v5, ""

    :cond_9
    move-object v14, v5

    const/4 v15, 0x0

    .line 95
    invoke-virtual {v2}, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;->getAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v0, v5, v12, v11, v12}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->format$default(Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;Ljava/lang/Double;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 96
    new-instance v5, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$3;

    invoke-direct {v5, v0, v2}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment$showData$3;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;)V

    move-object/from16 v17, v5

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x0

    const/16 v19, 0x12

    const/16 v20, 0x0

    move-object v13, v4

    .line 93
    invoke-direct/range {v13 .. v20}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/internal/Ref;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method public final bridge synthetic updateHeader(Landroid/os/Parcelable;)V
    .locals 0

    .line 17
    check-cast p1, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->updateHeader(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V

    return-void
.end method

.method protected final updateHeader(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsGroupFragment;->getHeader()Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->getTotal()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsItemHeader;->setAmount(I)V

    .line 105
    check-cast p1, Landroid/os/Parcelable;

    invoke-super {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsBaseFragment;->updateHeader(Landroid/os/Parcelable;)V

    return-void
.end method
