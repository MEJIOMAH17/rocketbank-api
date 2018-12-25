.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;
.super Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;
.source "DeliverySelectDateFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lru/rocketbank/core/widgets/RocketCalendarView$DateSelectListener;
.implements Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;
.implements Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment<",
        "Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lru/rocketbank/core/widgets/RocketCalendarView$DateSelectListener;",
        "Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;",
        "Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliverySelectDateFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliverySelectDateFragment.kt\nru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1519#2,2:150\n*E\n*S KotlinDebug\n*F\n+ 1 DeliverySelectDateFragment.kt\nru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment\n*L\n92#1,2:150\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

.field private calendarView:Lru/rocketbank/core/widgets/RocketCalendarView;

.field private final data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;

.field private intervalsView:Landroid/widget/LinearLayout;

.field private lastSelectedKey:Ljava/lang/String;

.field private lastTimeItem:Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;-><init>()V

    .line 36
    new-instance v0, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;

    return-void
.end method

.method private final addItem(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->intervalsView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v1, "intervalsView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const v2, 0x7f0c0113

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 99
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;

    move-result-object v0

    .line 101
    new-instance v1, Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;

    invoke-direct {v1}, Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;-><init>()V

    .line 102
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;->getIntervalText()Landroid/databinding/ObservableField;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    const-string p3, "binding"

    .line 104
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->setData(Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;)V

    .line 105
    move-object p3, p0

    check-cast p3, Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;

    invoke-virtual {v0, p3}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->setListener(Lru/rocketbank/r2d2/data/binding/delivery/TimeIntervalChoseListener;)V

    .line 106
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;->setKey(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->intervalsView:Landroid/widget/LinearLayout;

    if-nez p2, :cond_1

    const-string p3, "intervalsView"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final fillIntervals(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/delivery/Interval;",
            ">;)V"
        }
    .end annotation

    .line 92
    check-cast p2, Ljava/lang/Iterable;

    .line 150
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/model/delivery/Interval;

    .line 93
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/delivery/Interval;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/delivery/Interval;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->addItem(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->Companion:Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment$Companion;

    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment$Companion;->newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final bridge synthetic createPresenter()Lru/rocketbank/core/utils/presenter/Presenter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->createPresenter()Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/utils/presenter/Presenter;

    return-object v0
.end method

.method public final createPresenter()Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;
    .locals 2

    .line 41
    sget-object v0, Lru/rocketbank/core/manager/PresenterManager;->INSTANCE:Lru/rocketbank/core/manager/PresenterManager;

    const-string v0, "038514ec-8c7a-41fc-9d28-b097f0eff1c8"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.fromString(\"038514e\u2026-41fc-9d28-b097f0eff1c8\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/PresenterManager;->getOrCreatePresenter(Ljava/util/UUID;Ljava/lang/Class;)Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    return-object v0
.end method

.method public final getTitleResID()I
    .locals 1

    const v0, 0x7f11012c

    return v0
.end method

.method public final intervalsLoaded(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/delivery/Interval;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->intervalsView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v1, "intervalsView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 84
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    const-string v1, "inflater"

    .line 85
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->fillIntervals(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V

    return-void

    :cond_3
    const-string p1, "inflater"

    .line 87
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v1, "\u041d\u0435\u0442 \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u044b\u0445 \u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b\u043e\u0432"

    invoke-direct {p0, v0, p1, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->addItem(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final nextStep()V
    .locals 1

    const/4 v0, 0x3

    .line 78
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->nextStep(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->lastSelectedKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->nextPressed(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    move-result-object p1

    const-string p2, "FragmentDeliveryDateBind\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    .line 45
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;)V

    .line 47
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    if-nez p1, :cond_1

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->rockerCalendar:Lru/rocketbank/core/widgets/RocketCalendarView;

    const-string p2, "binding.rockerCalendar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->calendarView:Lru/rocketbank/core/widgets/RocketCalendarView;

    .line 48
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    if-nez p1, :cond_2

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->intervalsView:Landroid/widget/LinearLayout;

    const-string p2, "binding.intervalsView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->intervalsView:Landroid/widget/LinearLayout;

    .line 50
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->setView(Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;)V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->onCreate(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    if-nez p1, :cond_3

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final onDateSelected(III)V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->daySelected(Ljava/lang/String;III)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    .line 69
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->onDestroyView()V

    .line 70
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->getPresenter()Lru/rocketbank/core/utils/presenter/Presenter;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDatePresenter;->setView(Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateView;)V

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 56
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->onStart()V

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->calendarView:Lru/rocketbank/core/widgets/RocketCalendarView;

    if-nez v0, :cond_0

    const-string v1, "calendarView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/core/widgets/RocketCalendarView$DateSelectListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketCalendarView;->setDayListener(Lru/rocketbank/core/widgets/RocketCalendarView$DateSelectListener;)V

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->setListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 63
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractDeliveryFragment;->onStop()V

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->calendarView:Lru/rocketbank/core/widgets/RocketCalendarView;

    if-nez v0, :cond_0

    const-string v1, "calendarView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketCalendarView;->setDayListener(Lru/rocketbank/core/widgets/RocketCalendarView$DateSelectListener;)V

    .line 65
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    if-nez v0, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->setListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onTimeIntervalClicked(Ljava/lang/String;Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->lastTimeItem:Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;->isSelected()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 115
    :cond_0
    invoke-virtual {p2}, Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;->isSelected()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 116
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->lastSelectedKey:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->lastTimeItem:Lru/rocketbank/r2d2/data/binding/delivery/TimeItemData;

    .line 118
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->data:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;->getNextButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final setUpCalendar(Ljava/util/Calendar;)V
    .locals 2

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->calendarView:Lru/rocketbank/core/widgets/RocketCalendarView;

    if-nez v0, :cond_0

    const-string v1, "calendarView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketCalendarView;->setCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method public final showNearestDayAndTime(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/network/model/delivery/Interval;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intervals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->calendarView:Lru/rocketbank/core/widgets/RocketCalendarView;

    if-nez v0, :cond_0

    const-string v1, "calendarView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketCalendarView;->updateCalendar$13462e()V

    .line 123
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->intervalsView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const-string v1, "intervalsView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 124
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "inflater"

    .line 125
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliverySelectDateFragment;->fillIntervals(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V

    return-void
.end method
